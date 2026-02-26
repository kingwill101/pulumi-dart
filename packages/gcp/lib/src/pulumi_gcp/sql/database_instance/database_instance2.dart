import 'package:pulumi/pulumi.dart';
import '../database_instance_clone/database_instance_clone.dart';
import '../database_instance_dns_name/database_instance_dns_name.dart';
import '../database_instance_ip_address/database_instance_ip_address.dart';
import '../database_instance_point_in_time_restore_context/database_instance_point_in_time_restore_context.dart';
import '../database_instance_replica_configuration/database_instance_replica_configuration.dart';
import '../database_instance_replication_cluster/database_instance_replication_cluster.dart';
import '../database_instance_restore_backup_context/database_instance_restore_backup_context.dart';
import '../database_instance_server_ca_cert/database_instance_server_ca_cert.dart';
import '../database_instance_settings/database_instance_settings.dart';
import 'database_instance_args2.dart';

/// Creates a new Google SQL Database Instance. For more information, see the [official documentation](https://cloud.google.com/sql/docs/mysql/create-instance),
/// or the [JSON API](https://cloud.google.com/sql/docs/admin-api/v1beta4/instances).
///
/// > **NOTE on <span pulumi-lang-nodejs="`gcp.sql.DatabaseInstance`" pulumi-lang-dotnet="`gcp.sql.DatabaseInstance`" pulumi-lang-go="`sql.DatabaseInstance`" pulumi-lang-python="`sql.DatabaseInstance`" pulumi-lang-yaml="`gcp.sql.DatabaseInstance`" pulumi-lang-java="`gcp.sql.DatabaseInstance`">`gcp.sql.DatabaseInstance`</span>:** - Second-generation instances include a
/// default 'root'@'%' user with no password. This user will be deleted by the provider on
/// instance creation. You should use <span pulumi-lang-nodejs="`gcp.sql.User`" pulumi-lang-dotnet="`gcp.sql.User`" pulumi-lang-go="`sql.User`" pulumi-lang-python="`sql.User`" pulumi-lang-yaml="`gcp.sql.User`" pulumi-lang-java="`gcp.sql.User`">`gcp.sql.User`</span> to define a custom user with
/// a restricted host and strong password.
///
/// > **Note**: On newer versions of the provider, you must explicitly set `deletion_protection=false`
/// (and run `pulumi update` to write the field to state) in order to destroy an instance.
/// It is recommended to not set this field (or set it to true) until you're ready to destroy the instance and its databases.
///
/// ## Example Usage
///
/// ### SQL Second Generation Instance
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const main = new gcp.sql.DatabaseInstance("main", {
/// name: "main-instance",
/// databaseVersion: "POSTGRES_15",
/// region: "us-central1",
/// settings: {
/// tier: "db-f1-micro",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// main = gcp.sql.DatabaseInstance("main",
/// name="main-instance",
/// database_version="POSTGRES_15",
/// region="us-central1",
/// settings={
/// "tier": "db-f1-micro",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var main = new Gcp.Sql.DatabaseInstance("main", new()
/// {
/// Name = "main-instance",
/// DatabaseVersion = "POSTGRES_15",
/// Region = "us-central1",
/// Settings = new Gcp.Sql.Inputs.DatabaseInstanceSettingsArgs
/// {
/// Tier = "db-f1-micro",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/sql"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := sql.NewDatabaseInstance(ctx, "main", &sql.DatabaseInstanceArgs{
/// Name:            pulumi.String("main-instance"),
/// DatabaseVersion: pulumi.String("POSTGRES_15"),
/// Region:          pulumi.String("us-central1"),
/// Settings: &sql.DatabaseInstanceSettingsArgs{
/// Tier: pulumi.String("db-f1-micro"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.sql.DatabaseInstance;
/// import com.pulumi.gcp.sql.DatabaseInstanceArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var main = new DatabaseInstance("main", DatabaseInstanceArgs.builder()
/// .name("main-instance")
/// .databaseVersion("POSTGRES_15")
/// .region("us-central1")
/// .settings(DatabaseInstanceSettingsArgs.builder()
/// .tier("db-f1-micro")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// main:
/// type: gcp:sql:DatabaseInstance
/// properties:
/// name: main-instance
/// databaseVersion: POSTGRES_15
/// region: us-central1
/// settings:
/// tier: db-f1-micro
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Granular restriction of network access
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as random from "@pulumi/random";
///
/// const apps: gcp.compute.Instance[] = [];
/// for (const range = {value: 0}; range.value < 8; range.value++) {
/// apps.push(new gcp.compute.Instance(`apps-${range.value}`, {
/// networkInterfaces: [{
/// accessConfigs: [{}],
/// network: "default",
/// }],
/// name: `apps-${range.value + 1}`,
/// machineType: "f1-micro",
/// bootDisk: {
/// initializeParams: {
/// image: "ubuntu-os-cloud/ubuntu-1804-lts",
/// },
/// },
/// }));
/// }
/// const dbNameSuffix = new random.index.Id("db_name_suffix", {byteLength: 4});
/// const onprem = [
/// "192.168.1.2",
/// "192.168.2.3",
/// ];
/// const postgres = new gcp.sql.DatabaseInstance("postgres", {
/// name: `postgres-instance-${dbNameSuffix.hex}`,
/// databaseVersion: "POSTGRES_15",
/// settings: {
/// tier: "db-f1-micro",
/// ipConfiguration: {
/// authorizedNetworks: Object.entries(apps).map(([k, v]) => ({key: k, value: v})).apply(entries => entries.map(entry => ({
/// name: entry.value.name,
/// value: entry.value.networkInterface[0].accessConfig[0].natIp,
/// }))),
/// authorizedNetworks: onprem.map((v, k) => ({key: k, value: v})).map(entry2 => ({
/// name: `onprem-${entry2.key}`,
/// value: entry2.value,
/// })),
/// },
/// },
/// });
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var apps = new List<Gcp.Compute.Instance>();
/// for (var rangeIndex = 0; rangeIndex < 8; rangeIndex++)
/// {
/// var range = new { Value = rangeIndex };
/// apps.Add(new Gcp.Compute.Instance($"apps-{range.Value}", new()
/// {
/// NetworkInterfaces = new[]
/// {
/// new Gcp.Compute.Inputs.InstanceNetworkInterfaceArgs
/// {
/// AccessConfigs = new[]
/// {
/// null,
/// },
/// Network = "default",
/// },
/// },
/// Name = $"apps-{range.Value + 1}",
/// MachineType = "f1-micro",
/// BootDisk = new Gcp.Compute.Inputs.InstanceBootDiskArgs
/// {
/// InitializeParams = new Gcp.Compute.Inputs.InstanceBootDiskInitializeParamsArgs
/// {
/// Image = "ubuntu-os-cloud/ubuntu-1804-lts",
/// },
/// },
/// }));
/// }
/// var dbNameSuffix = new Random.Index.Id("db_name_suffix", new()
/// {
/// ByteLength = 4,
/// });
///
/// var onprem = new[]
/// {
/// "192.168.1.2",
/// "192.168.2.3",
/// };
///
/// var postgres = new Gcp.Sql.DatabaseInstance("postgres", new()
/// {
/// Name = $"postgres-instance-{dbNameSuffix.Hex}",
/// DatabaseVersion = "POSTGRES_15",
/// Settings = new Gcp.Sql.Inputs.DatabaseInstanceSettingsArgs
/// {
/// Tier = "db-f1-micro",
/// IpConfiguration = new Gcp.Sql.Inputs.DatabaseInstanceSettingsIpConfigurationArgs
/// {
/// AuthorizedNetworks = .Apply(entries => entries.Select(entry =>
/// {
/// return
/// {
/// { "name", entry.Value.Name },
/// { "value", entry.Value.NetworkInterface[0].AccessConfig[0].NatIp },
/// };
/// }).ToList()),
/// AuthorizedNetworks = onprem.Select((v, k) => new { Key = k, Value = v }).Select(entry2 =>
/// {
/// return new Gcp.Sql.Inputs.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs
/// {
/// Name = $"onprem-{entry2.Key}",
/// Value = entry2.Value,
/// };
/// }).ToList(),
/// },
/// },
/// });
///
/// });
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Private IP Instance
/// > **NOTE:** For private IP instance setup, note that the <span pulumi-lang-nodejs="`gcp.sql.DatabaseInstance`" pulumi-lang-dotnet="`gcp.sql.DatabaseInstance`" pulumi-lang-go="`sql.DatabaseInstance`" pulumi-lang-python="`sql.DatabaseInstance`" pulumi-lang-yaml="`gcp.sql.DatabaseInstance`" pulumi-lang-java="`gcp.sql.DatabaseInstance`">`gcp.sql.DatabaseInstance`</span> does not actually interpolate values from <span pulumi-lang-nodejs="`gcp.servicenetworking.Connection`" pulumi-lang-dotnet="`gcp.servicenetworking.Connection`" pulumi-lang-go="`servicenetworking.Connection`" pulumi-lang-python="`servicenetworking.Connection`" pulumi-lang-yaml="`gcp.servicenetworking.Connection`" pulumi-lang-java="`gcp.servicenetworking.Connection`">`gcp.servicenetworking.Connection`</span>. You must explicitly add a <span pulumi-lang-nodejs="`dependsOn`" pulumi-lang-dotnet="`DependsOn`" pulumi-lang-go="`dependsOn`" pulumi-lang-python="`depends_on`" pulumi-lang-yaml="`dependsOn`" pulumi-lang-java="`dependsOn`">`depends_on`</span>reference as shown below.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as random from "@pulumi/random";
///
/// const privateNetwork = new gcp.compute.Network("private_network", {name: "private-network"});
/// const privateIpAddress = new gcp.compute.GlobalAddress("private_ip_address", {
/// name: "private-ip-address",
/// purpose: "VPC_PEERING",
/// addressType: "INTERNAL",
/// prefixLength: 16,
/// network: privateNetwork.id,
/// });
/// const privateVpcConnection = new gcp.servicenetworking.Connection("private_vpc_connection", {
/// network: privateNetwork.id,
/// service: "servicenetworking.googleapis.com",
/// reservedPeeringRanges: [privateIpAddress.name],
/// });
/// const dbNameSuffix = new random.index.Id("db_name_suffix", {byteLength: 4});
/// const instance = new gcp.sql.DatabaseInstance("instance", {
/// name: `private-instance-${dbNameSuffix.hex}`,
/// region: "us-central1",
/// databaseVersion: "MYSQL_5_7",
/// settings: {
/// tier: "db-f1-micro",
/// ipConfiguration: {
/// ipv4Enabled: false,
/// privateNetwork: privateNetwork.selfLink,
/// enablePrivatePathForGoogleCloudServices: true,
/// },
/// },
/// }, {
/// dependsOn: [privateVpcConnection],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_random as random
///
/// private_network = gcp.compute.Network("private_network", name="private-network")
/// private_ip_address = gcp.compute.GlobalAddress("private_ip_address",
/// name="private-ip-address",
/// purpose="VPC_PEERING",
/// address_type="INTERNAL",
/// prefix_length=16,
/// network=private_network.id)
/// private_vpc_connection = gcp.servicenetworking.Connection("private_vpc_connection",
/// network=private_network.id,
/// service="servicenetworking.googleapis.com",
/// reserved_peering_ranges=[private_ip_address.name])
/// db_name_suffix = random.index.Id("db_name_suffix", byte_length=4)
/// instance = gcp.sql.DatabaseInstance("instance",
/// name=f"private-instance-{db_name_suffix['hex']}",
/// region="us-central1",
/// database_version="MYSQL_5_7",
/// settings={
/// "tier": "db-f1-micro",
/// "ip_configuration": {
/// "ipv4_enabled": False,
/// "private_network": private_network.self_link,
/// "enable_private_path_for_google_cloud_services": True,
/// },
/// },
/// opts = pulumi.ResourceOptions(depends_on=[private_vpc_connection]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var privateNetwork = new Gcp.Compute.Network("private_network", new()
/// {
/// Name = "private-network",
/// });
///
/// var privateIpAddress = new Gcp.Compute.GlobalAddress("private_ip_address", new()
/// {
/// Name = "private-ip-address",
/// Purpose = "VPC_PEERING",
/// AddressType = "INTERNAL",
/// PrefixLength = 16,
/// Network = privateNetwork.Id,
/// });
///
/// var privateVpcConnection = new Gcp.ServiceNetworking.Connection("private_vpc_connection", new()
/// {
/// Network = privateNetwork.Id,
/// Service = "servicenetworking.googleapis.com",
/// ReservedPeeringRanges = new[]
/// {
/// privateIpAddress.Name,
/// },
/// });
///
/// var dbNameSuffix = new Random.Index.Id("db_name_suffix", new()
/// {
/// ByteLength = 4,
/// });
///
/// var instance = new Gcp.Sql.DatabaseInstance("instance", new()
/// {
/// Name = $"private-instance-{dbNameSuffix.Hex}",
/// Region = "us-central1",
/// DatabaseVersion = "MYSQL_5_7",
/// Settings = new Gcp.Sql.Inputs.DatabaseInstanceSettingsArgs
/// {
/// Tier = "db-f1-micro",
/// IpConfiguration = new Gcp.Sql.Inputs.DatabaseInstanceSettingsIpConfigurationArgs
/// {
/// Ipv4Enabled = false,
/// PrivateNetwork = privateNetwork.SelfLink,
/// EnablePrivatePathForGoogleCloudServices = true,
/// },
/// },
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// privateVpcConnection,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "fmt"
///
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/servicenetworking"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/sql"
/// "github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// privateNetwork, err := compute.NewNetwork(ctx, "private_network", &compute.NetworkArgs{
/// Name: pulumi.String("private-network"),
/// })
/// if err != nil {
/// return err
/// }
/// privateIpAddress, err := compute.NewGlobalAddress(ctx, "private_ip_address", &compute.GlobalAddressArgs{
/// Name:         pulumi.String("private-ip-address"),
/// Purpose:      pulumi.String("VPC_PEERING"),
/// AddressType:  pulumi.String("INTERNAL"),
/// PrefixLength: pulumi.Int(16),
/// Network:      privateNetwork.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// privateVpcConnection, err := servicenetworking.NewConnection(ctx, "private_vpc_connection", &servicenetworking.ConnectionArgs{
/// Network: privateNetwork.ID(),
/// Service: pulumi.String("servicenetworking.googleapis.com"),
/// ReservedPeeringRanges: pulumi.StringArray{
/// privateIpAddress.Name,
/// },
/// })
/// if err != nil {
/// return err
/// }
/// dbNameSuffix, err := random.NewId(ctx, "db_name_suffix", &random.IdArgs{
/// ByteLength: 4,
/// })
/// if err != nil {
/// return err
/// }
/// _, err = sql.NewDatabaseInstance(ctx, "instance", &sql.DatabaseInstanceArgs{
/// Name:            pulumi.Sprintf("private-instance-%v", dbNameSuffix.Hex),
/// Region:          pulumi.String("us-central1"),
/// DatabaseVersion: pulumi.String("MYSQL_5_7"),
/// Settings: &sql.DatabaseInstanceSettingsArgs{
/// Tier: pulumi.String("db-f1-micro"),
/// IpConfiguration: &sql.DatabaseInstanceSettingsIpConfigurationArgs{
/// Ipv4Enabled:                             pulumi.Bool(false),
/// PrivateNetwork:                          privateNetwork.SelfLink,
/// EnablePrivatePathForGoogleCloudServices: pulumi.Bool(true),
/// },
/// },
/// }, pulumi.DependsOn([]pulumi.Resource{
/// privateVpcConnection,
/// }))
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.GlobalAddress;
/// import com.pulumi.gcp.compute.GlobalAddressArgs;
/// import com.pulumi.gcp.servicenetworking.Connection;
/// import com.pulumi.gcp.servicenetworking.ConnectionArgs;
/// import com.pulumi.random.Id;
/// import com.pulumi.random.IdArgs;
/// import com.pulumi.gcp.sql.DatabaseInstance;
/// import com.pulumi.gcp.sql.DatabaseInstanceArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsIpConfigurationArgs;
/// import com.pulumi.resources.CustomResourceOptions;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var privateNetwork = new Network("privateNetwork", NetworkArgs.builder()
/// .name("private-network")
/// .build());
///
/// var privateIpAddress = new GlobalAddress("privateIpAddress", GlobalAddressArgs.builder()
/// .name("private-ip-address")
/// .purpose("VPC_PEERING")
/// .addressType("INTERNAL")
/// .prefixLength(16)
/// .network(privateNetwork.id())
/// .build());
///
/// var privateVpcConnection = new Connection("privateVpcConnection", ConnectionArgs.builder()
/// .network(privateNetwork.id())
/// .service("servicenetworking.googleapis.com")
/// .reservedPeeringRanges(privateIpAddress.name())
/// .build());
///
/// var dbNameSuffix = new Id("dbNameSuffix", IdArgs.builder()
/// .byteLength(4)
/// .build());
///
/// var instance = new DatabaseInstance("instance", DatabaseInstanceArgs.builder()
/// .name(String.format("private-instance-%s", dbNameSuffix.hex()))
/// .region("us-central1")
/// .databaseVersion("MYSQL_5_7")
/// .settings(DatabaseInstanceSettingsArgs.builder()
/// .tier("db-f1-micro")
/// .ipConfiguration(DatabaseInstanceSettingsIpConfigurationArgs.builder()
/// .ipv4Enabled(false)
/// .privateNetwork(privateNetwork.selfLink())
/// .enablePrivatePathForGoogleCloudServices(true)
/// .build())
/// .build())
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(privateVpcConnection)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// privateNetwork:
/// type: gcp:compute:Network
/// name: private_network
/// properties:
/// name: private-network
/// privateIpAddress:
/// type: gcp:compute:GlobalAddress
/// name: private_ip_address
/// properties:
/// name: private-ip-address
/// purpose: VPC_PEERING
/// addressType: INTERNAL
/// prefixLength: 16
/// network: ${privateNetwork.id}
/// privateVpcConnection:
/// type: gcp:servicenetworking:Connection
/// name: private_vpc_connection
/// properties:
/// network: ${privateNetwork.id}
/// service: servicenetworking.googleapis.com
/// reservedPeeringRanges:
/// - ${privateIpAddress.name}
/// dbNameSuffix:
/// type: random:Id
/// name: db_name_suffix
/// properties:
/// byteLength: 4
/// instance:
/// type: gcp:sql:DatabaseInstance
/// properties:
/// name: private-instance-${dbNameSuffix.hex}
/// region: us-central1
/// databaseVersion: MYSQL_5_7
/// settings:
/// tier: db-f1-micro
/// ipConfiguration:
/// ipv4Enabled: false
/// privateNetwork: ${privateNetwork.selfLink}
/// enablePrivatePathForGoogleCloudServices: true
/// options:
/// dependsOn:
/// - ${privateVpcConnection}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### ENTERPRISE_PLUS Instance with<span pulumi-lang-nodejs=" dataCacheConfig
/// " pulumi-lang-dotnet=" DataCacheConfig
/// " pulumi-lang-go=" dataCacheConfig
/// " pulumi-lang-python=" data_cache_config
/// " pulumi-lang-yaml=" dataCacheConfig
/// " pulumi-lang-java=" dataCacheConfig
/// "> data_cache_config
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const main = new gcp.sql.DatabaseInstance("main", {
/// name: "enterprise-plus-main-instance",
/// databaseVersion: "MYSQL_8_0_31",
/// settings: {
/// tier: "db-perf-optimized-N-2",
/// edition: "ENTERPRISE_PLUS",
/// dataCacheConfig: {
/// dataCacheEnabled: true,
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// main = gcp.sql.DatabaseInstance("main",
/// name="enterprise-plus-main-instance",
/// database_version="MYSQL_8_0_31",
/// settings={
/// "tier": "db-perf-optimized-N-2",
/// "edition": "ENTERPRISE_PLUS",
/// "data_cache_config": {
/// "data_cache_enabled": True,
/// },
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var main = new Gcp.Sql.DatabaseInstance("main", new()
/// {
/// Name = "enterprise-plus-main-instance",
/// DatabaseVersion = "MYSQL_8_0_31",
/// Settings = new Gcp.Sql.Inputs.DatabaseInstanceSettingsArgs
/// {
/// Tier = "db-perf-optimized-N-2",
/// Edition = "ENTERPRISE_PLUS",
/// DataCacheConfig = new Gcp.Sql.Inputs.DatabaseInstanceSettingsDataCacheConfigArgs
/// {
/// DataCacheEnabled = true,
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/sql"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := sql.NewDatabaseInstance(ctx, "main", &sql.DatabaseInstanceArgs{
/// Name:            pulumi.String("enterprise-plus-main-instance"),
/// DatabaseVersion: pulumi.String("MYSQL_8_0_31"),
/// Settings: &sql.DatabaseInstanceSettingsArgs{
/// Tier:    pulumi.String("db-perf-optimized-N-2"),
/// Edition: pulumi.String("ENTERPRISE_PLUS"),
/// DataCacheConfig: &sql.DatabaseInstanceSettingsDataCacheConfigArgs{
/// DataCacheEnabled: pulumi.Bool(true),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.sql.DatabaseInstance;
/// import com.pulumi.gcp.sql.DatabaseInstanceArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsDataCacheConfigArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var main = new DatabaseInstance("main", DatabaseInstanceArgs.builder()
/// .name("enterprise-plus-main-instance")
/// .databaseVersion("MYSQL_8_0_31")
/// .settings(DatabaseInstanceSettingsArgs.builder()
/// .tier("db-perf-optimized-N-2")
/// .edition("ENTERPRISE_PLUS")
/// .dataCacheConfig(DatabaseInstanceSettingsDataCacheConfigArgs.builder()
/// .dataCacheEnabled(true)
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// main:
/// type: gcp:sql:DatabaseInstance
/// properties:
/// name: enterprise-plus-main-instance
/// databaseVersion: MYSQL_8_0_31
/// settings:
/// tier: db-perf-optimized-N-2
/// edition: ENTERPRISE_PLUS
/// dataCacheConfig:
/// dataCacheEnabled: true
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Cloud SQL Instance with Managed Connection Pooling
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const instance = new gcp.sql.DatabaseInstance("instance", {
/// name: "mcp-enabled-main-instance",
/// region: "us-central1",
/// databaseVersion: "POSTGRES_16",
/// settings: {
/// tier: "db-perf-optimized-N-2",
/// edition: "ENTERPRISE_PLUS",
/// connectionPoolConfigs: [{
/// connectionPoolingEnabled: true,
/// flags: [{
/// name: "max_client_connections",
/// value: "1980",
/// }],
/// }],
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// instance = gcp.sql.DatabaseInstance("instance",
/// name="mcp-enabled-main-instance",
/// region="us-central1",
/// database_version="POSTGRES_16",
/// settings={
/// "tier": "db-perf-optimized-N-2",
/// "edition": "ENTERPRISE_PLUS",
/// "connection_pool_configs": [{
/// "connection_pooling_enabled": True,
/// "flags": [{
/// "name": "max_client_connections",
/// "value": "1980",
/// }],
/// }],
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var instance = new Gcp.Sql.DatabaseInstance("instance", new()
/// {
/// Name = "mcp-enabled-main-instance",
/// Region = "us-central1",
/// DatabaseVersion = "POSTGRES_16",
/// Settings = new Gcp.Sql.Inputs.DatabaseInstanceSettingsArgs
/// {
/// Tier = "db-perf-optimized-N-2",
/// Edition = "ENTERPRISE_PLUS",
/// ConnectionPoolConfigs = new[]
/// {
/// new Gcp.Sql.Inputs.DatabaseInstanceSettingsConnectionPoolConfigArgs
/// {
/// ConnectionPoolingEnabled = true,
/// Flags = new[]
/// {
/// new Gcp.Sql.Inputs.DatabaseInstanceSettingsConnectionPoolConfigFlagArgs
/// {
/// Name = "max_client_connections",
/// Value = "1980",
/// },
/// },
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/sql"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := sql.NewDatabaseInstance(ctx, "instance", &sql.DatabaseInstanceArgs{
/// Name:            pulumi.String("mcp-enabled-main-instance"),
/// Region:          pulumi.String("us-central1"),
/// DatabaseVersion: pulumi.String("POSTGRES_16"),
/// Settings: &sql.DatabaseInstanceSettingsArgs{
/// Tier:    pulumi.String("db-perf-optimized-N-2"),
/// Edition: pulumi.String("ENTERPRISE_PLUS"),
/// ConnectionPoolConfigs: sql.DatabaseInstanceSettingsConnectionPoolConfigArray{
/// &sql.DatabaseInstanceSettingsConnectionPoolConfigArgs{
/// ConnectionPoolingEnabled: pulumi.Bool(true),
/// Flags: sql.DatabaseInstanceSettingsConnectionPoolConfigFlagArray{
/// &sql.DatabaseInstanceSettingsConnectionPoolConfigFlagArgs{
/// Name:  pulumi.String("max_client_connections"),
/// Value: pulumi.String("1980"),
/// },
/// },
/// },
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.sql.DatabaseInstance;
/// import com.pulumi.gcp.sql.DatabaseInstanceArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var instance = new DatabaseInstance("instance", DatabaseInstanceArgs.builder()
/// .name("mcp-enabled-main-instance")
/// .region("us-central1")
/// .databaseVersion("POSTGRES_16")
/// .settings(DatabaseInstanceSettingsArgs.builder()
/// .tier("db-perf-optimized-N-2")
/// .edition("ENTERPRISE_PLUS")
/// .connectionPoolConfigs(DatabaseInstanceSettingsConnectionPoolConfigArgs.builder()
/// .connectionPoolingEnabled(true)
/// .flags(DatabaseInstanceSettingsConnectionPoolConfigFlagArgs.builder()
/// .name("max_client_connections")
/// .value("1980")
/// .build())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// instance:
/// type: gcp:sql:DatabaseInstance
/// properties:
/// name: mcp-enabled-main-instance
/// region: us-central1
/// databaseVersion: POSTGRES_16
/// settings:
/// tier: db-perf-optimized-N-2
/// edition: ENTERPRISE_PLUS
/// connectionPoolConfigs:
/// - connectionPoolingEnabled: true
/// flags:
/// - name: max_client_connections
/// value: '1980'
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Cloud SQL Instance with PSC connectivity
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const main = new gcp.sql.DatabaseInstance("main", {
/// name: "psc-enabled-main-instance",
/// databaseVersion: "MYSQL_8_0",
/// settings: {
/// tier: "db-f1-micro",
/// ipConfiguration: {
/// pscConfigs: [{
/// pscEnabled: true,
/// allowedConsumerProjects: ["allowed-consumer-project-name"],
/// }],
/// ipv4Enabled: false,
/// },
/// backupConfiguration: {
/// enabled: true,
/// binaryLogEnabled: true,
/// },
/// availabilityType: "REGIONAL",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// main = gcp.sql.DatabaseInstance("main",
/// name="psc-enabled-main-instance",
/// database_version="MYSQL_8_0",
/// settings={
/// "tier": "db-f1-micro",
/// "ip_configuration": {
/// "psc_configs": [{
/// "psc_enabled": True,
/// "allowed_consumer_projects": ["allowed-consumer-project-name"],
/// }],
/// "ipv4_enabled": False,
/// },
/// "backup_configuration": {
/// "enabled": True,
/// "binary_log_enabled": True,
/// },
/// "availability_type": "REGIONAL",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var main = new Gcp.Sql.DatabaseInstance("main", new()
/// {
/// Name = "psc-enabled-main-instance",
/// DatabaseVersion = "MYSQL_8_0",
/// Settings = new Gcp.Sql.Inputs.DatabaseInstanceSettingsArgs
/// {
/// Tier = "db-f1-micro",
/// IpConfiguration = new Gcp.Sql.Inputs.DatabaseInstanceSettingsIpConfigurationArgs
/// {
/// PscConfigs = new[]
/// {
/// new Gcp.Sql.Inputs.DatabaseInstanceSettingsIpConfigurationPscConfigArgs
/// {
/// PscEnabled = true,
/// AllowedConsumerProjects = new[]
/// {
/// "allowed-consumer-project-name",
/// },
/// },
/// },
/// Ipv4Enabled = false,
/// },
/// BackupConfiguration = new Gcp.Sql.Inputs.DatabaseInstanceSettingsBackupConfigurationArgs
/// {
/// Enabled = true,
/// BinaryLogEnabled = true,
/// },
/// AvailabilityType = "REGIONAL",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/sql"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := sql.NewDatabaseInstance(ctx, "main", &sql.DatabaseInstanceArgs{
/// Name:            pulumi.String("psc-enabled-main-instance"),
/// DatabaseVersion: pulumi.String("MYSQL_8_0"),
/// Settings: &sql.DatabaseInstanceSettingsArgs{
/// Tier: pulumi.String("db-f1-micro"),
/// IpConfiguration: &sql.DatabaseInstanceSettingsIpConfigurationArgs{
/// PscConfigs: sql.DatabaseInstanceSettingsIpConfigurationPscConfigArray{
/// &sql.DatabaseInstanceSettingsIpConfigurationPscConfigArgs{
/// PscEnabled: pulumi.Bool(true),
/// AllowedConsumerProjects: pulumi.StringArray{
/// pulumi.String("allowed-consumer-project-name"),
/// },
/// },
/// },
/// Ipv4Enabled: pulumi.Bool(false),
/// },
/// BackupConfiguration: &sql.DatabaseInstanceSettingsBackupConfigurationArgs{
/// Enabled:          pulumi.Bool(true),
/// BinaryLogEnabled: pulumi.Bool(true),
/// },
/// AvailabilityType: pulumi.String("REGIONAL"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.sql.DatabaseInstance;
/// import com.pulumi.gcp.sql.DatabaseInstanceArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsIpConfigurationArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsBackupConfigurationArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var main = new DatabaseInstance("main", DatabaseInstanceArgs.builder()
/// .name("psc-enabled-main-instance")
/// .databaseVersion("MYSQL_8_0")
/// .settings(DatabaseInstanceSettingsArgs.builder()
/// .tier("db-f1-micro")
/// .ipConfiguration(DatabaseInstanceSettingsIpConfigurationArgs.builder()
/// .pscConfigs(DatabaseInstanceSettingsIpConfigurationPscConfigArgs.builder()
/// .pscEnabled(true)
/// .allowedConsumerProjects("allowed-consumer-project-name")
/// .build())
/// .ipv4Enabled(false)
/// .build())
/// .backupConfiguration(DatabaseInstanceSettingsBackupConfigurationArgs.builder()
/// .enabled(true)
/// .binaryLogEnabled(true)
/// .build())
/// .availabilityType("REGIONAL")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// main:
/// type: gcp:sql:DatabaseInstance
/// properties:
/// name: psc-enabled-main-instance
/// databaseVersion: MYSQL_8_0
/// settings:
/// tier: db-f1-micro
/// ipConfiguration:
/// pscConfigs:
/// - pscEnabled: true
/// allowedConsumerProjects:
/// - allowed-consumer-project-name
/// ipv4Enabled: false
/// backupConfiguration:
/// enabled: true
/// binaryLogEnabled: true
/// availabilityType: REGIONAL
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Cloud SQL Instance with PSC auto connections
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const main = new gcp.sql.DatabaseInstance("main", {
/// name: "psc-enabled-main-instance",
/// databaseVersion: "MYSQL_8_0",
/// settings: {
/// tier: "db-f1-micro",
/// ipConfiguration: {
/// pscConfigs: [{
/// pscEnabled: true,
/// allowedConsumerProjects: ["allowed-consumer-project-name"],
/// pscAutoConnections: [{
/// consumerNetwork: "network-name",
/// consumerServiceProjectId: "project-id",
/// }],
/// }],
/// ipv4Enabled: false,
/// },
/// backupConfiguration: {
/// enabled: true,
/// binaryLogEnabled: true,
/// },
/// availabilityType: "REGIONAL",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// main = gcp.sql.DatabaseInstance("main",
/// name="psc-enabled-main-instance",
/// database_version="MYSQL_8_0",
/// settings={
/// "tier": "db-f1-micro",
/// "ip_configuration": {
/// "psc_configs": [{
/// "psc_enabled": True,
/// "allowed_consumer_projects": ["allowed-consumer-project-name"],
/// "psc_auto_connections": [{
/// "consumer_network": "network-name",
/// "consumer_service_project_id": "project-id",
/// }],
/// }],
/// "ipv4_enabled": False,
/// },
/// "backup_configuration": {
/// "enabled": True,
/// "binary_log_enabled": True,
/// },
/// "availability_type": "REGIONAL",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var main = new Gcp.Sql.DatabaseInstance("main", new()
/// {
/// Name = "psc-enabled-main-instance",
/// DatabaseVersion = "MYSQL_8_0",
/// Settings = new Gcp.Sql.Inputs.DatabaseInstanceSettingsArgs
/// {
/// Tier = "db-f1-micro",
/// IpConfiguration = new Gcp.Sql.Inputs.DatabaseInstanceSettingsIpConfigurationArgs
/// {
/// PscConfigs = new[]
/// {
/// new Gcp.Sql.Inputs.DatabaseInstanceSettingsIpConfigurationPscConfigArgs
/// {
/// PscEnabled = true,
/// AllowedConsumerProjects = new[]
/// {
/// "allowed-consumer-project-name",
/// },
/// PscAutoConnections = new[]
/// {
/// new Gcp.Sql.Inputs.DatabaseInstanceSettingsIpConfigurationPscConfigPscAutoConnectionArgs
/// {
/// ConsumerNetwork = "network-name",
/// ConsumerServiceProjectId = "project-id",
/// },
/// },
/// },
/// },
/// Ipv4Enabled = false,
/// },
/// BackupConfiguration = new Gcp.Sql.Inputs.DatabaseInstanceSettingsBackupConfigurationArgs
/// {
/// Enabled = true,
/// BinaryLogEnabled = true,
/// },
/// AvailabilityType = "REGIONAL",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/sql"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := sql.NewDatabaseInstance(ctx, "main", &sql.DatabaseInstanceArgs{
/// Name:            pulumi.String("psc-enabled-main-instance"),
/// DatabaseVersion: pulumi.String("MYSQL_8_0"),
/// Settings: &sql.DatabaseInstanceSettingsArgs{
/// Tier: pulumi.String("db-f1-micro"),
/// IpConfiguration: &sql.DatabaseInstanceSettingsIpConfigurationArgs{
/// PscConfigs: sql.DatabaseInstanceSettingsIpConfigurationPscConfigArray{
/// &sql.DatabaseInstanceSettingsIpConfigurationPscConfigArgs{
/// PscEnabled: pulumi.Bool(true),
/// AllowedConsumerProjects: pulumi.StringArray{
/// pulumi.String("allowed-consumer-project-name"),
/// },
/// PscAutoConnections: sql.DatabaseInstanceSettingsIpConfigurationPscConfigPscAutoConnectionArray{
/// &sql.DatabaseInstanceSettingsIpConfigurationPscConfigPscAutoConnectionArgs{
/// ConsumerNetwork:          pulumi.String("network-name"),
/// ConsumerServiceProjectId: pulumi.String("project-id"),
/// },
/// },
/// },
/// },
/// Ipv4Enabled: pulumi.Bool(false),
/// },
/// BackupConfiguration: &sql.DatabaseInstanceSettingsBackupConfigurationArgs{
/// Enabled:          pulumi.Bool(true),
/// BinaryLogEnabled: pulumi.Bool(true),
/// },
/// AvailabilityType: pulumi.String("REGIONAL"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.sql.DatabaseInstance;
/// import com.pulumi.gcp.sql.DatabaseInstanceArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsIpConfigurationArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsBackupConfigurationArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var main = new DatabaseInstance("main", DatabaseInstanceArgs.builder()
/// .name("psc-enabled-main-instance")
/// .databaseVersion("MYSQL_8_0")
/// .settings(DatabaseInstanceSettingsArgs.builder()
/// .tier("db-f1-micro")
/// .ipConfiguration(DatabaseInstanceSettingsIpConfigurationArgs.builder()
/// .pscConfigs(DatabaseInstanceSettingsIpConfigurationPscConfigArgs.builder()
/// .pscEnabled(true)
/// .allowedConsumerProjects("allowed-consumer-project-name")
/// .pscAutoConnections(DatabaseInstanceSettingsIpConfigurationPscConfigPscAutoConnectionArgs.builder()
/// .consumerNetwork("network-name")
/// .consumerServiceProjectId("project-id")
/// .build())
/// .build())
/// .ipv4Enabled(false)
/// .build())
/// .backupConfiguration(DatabaseInstanceSettingsBackupConfigurationArgs.builder()
/// .enabled(true)
/// .binaryLogEnabled(true)
/// .build())
/// .availabilityType("REGIONAL")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// main:
/// type: gcp:sql:DatabaseInstance
/// properties:
/// name: psc-enabled-main-instance
/// databaseVersion: MYSQL_8_0
/// settings:
/// tier: db-f1-micro
/// ipConfiguration:
/// pscConfigs:
/// - pscEnabled: true
/// allowedConsumerProjects:
/// - allowed-consumer-project-name
/// pscAutoConnections:
/// - consumerNetwork: network-name
/// consumerServiceProjectId: project-id
/// ipv4Enabled: false
/// backupConfiguration:
/// enabled: true
/// binaryLogEnabled: true
/// availabilityType: REGIONAL
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Cloud SQL Instance with PSC outbound
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const main = new gcp.sql.DatabaseInstance("main", {
/// name: "psc-enabled-main-instance",
/// databaseVersion: "MYSQL_8_0",
/// settings: {
/// tier: "db-f1-micro",
/// ipConfiguration: {
/// pscConfigs: [{
/// pscEnabled: true,
/// allowedConsumerProjects: ["allowed-consumer-project-name"],
/// networkAttachmentUri: "network-attachment-uri",
/// }],
/// ipv4Enabled: false,
/// },
/// backupConfiguration: {
/// enabled: true,
/// binaryLogEnabled: true,
/// },
/// availabilityType: "REGIONAL",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// main = gcp.sql.DatabaseInstance("main",
/// name="psc-enabled-main-instance",
/// database_version="MYSQL_8_0",
/// settings={
/// "tier": "db-f1-micro",
/// "ip_configuration": {
/// "psc_configs": [{
/// "psc_enabled": True,
/// "allowed_consumer_projects": ["allowed-consumer-project-name"],
/// "network_attachment_uri": "network-attachment-uri",
/// }],
/// "ipv4_enabled": False,
/// },
/// "backup_configuration": {
/// "enabled": True,
/// "binary_log_enabled": True,
/// },
/// "availability_type": "REGIONAL",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var main = new Gcp.Sql.DatabaseInstance("main", new()
/// {
/// Name = "psc-enabled-main-instance",
/// DatabaseVersion = "MYSQL_8_0",
/// Settings = new Gcp.Sql.Inputs.DatabaseInstanceSettingsArgs
/// {
/// Tier = "db-f1-micro",
/// IpConfiguration = new Gcp.Sql.Inputs.DatabaseInstanceSettingsIpConfigurationArgs
/// {
/// PscConfigs = new[]
/// {
/// new Gcp.Sql.Inputs.DatabaseInstanceSettingsIpConfigurationPscConfigArgs
/// {
/// PscEnabled = true,
/// AllowedConsumerProjects = new[]
/// {
/// "allowed-consumer-project-name",
/// },
/// NetworkAttachmentUri = "network-attachment-uri",
/// },
/// },
/// Ipv4Enabled = false,
/// },
/// BackupConfiguration = new Gcp.Sql.Inputs.DatabaseInstanceSettingsBackupConfigurationArgs
/// {
/// Enabled = true,
/// BinaryLogEnabled = true,
/// },
/// AvailabilityType = "REGIONAL",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/sql"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := sql.NewDatabaseInstance(ctx, "main", &sql.DatabaseInstanceArgs{
/// Name:            pulumi.String("psc-enabled-main-instance"),
/// DatabaseVersion: pulumi.String("MYSQL_8_0"),
/// Settings: &sql.DatabaseInstanceSettingsArgs{
/// Tier: pulumi.String("db-f1-micro"),
/// IpConfiguration: &sql.DatabaseInstanceSettingsIpConfigurationArgs{
/// PscConfigs: sql.DatabaseInstanceSettingsIpConfigurationPscConfigArray{
/// &sql.DatabaseInstanceSettingsIpConfigurationPscConfigArgs{
/// PscEnabled: pulumi.Bool(true),
/// AllowedConsumerProjects: pulumi.StringArray{
/// pulumi.String("allowed-consumer-project-name"),
/// },
/// NetworkAttachmentUri: pulumi.String("network-attachment-uri"),
/// },
/// },
/// Ipv4Enabled: pulumi.Bool(false),
/// },
/// BackupConfiguration: &sql.DatabaseInstanceSettingsBackupConfigurationArgs{
/// Enabled:          pulumi.Bool(true),
/// BinaryLogEnabled: pulumi.Bool(true),
/// },
/// AvailabilityType: pulumi.String("REGIONAL"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.sql.DatabaseInstance;
/// import com.pulumi.gcp.sql.DatabaseInstanceArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsIpConfigurationArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsBackupConfigurationArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var main = new DatabaseInstance("main", DatabaseInstanceArgs.builder()
/// .name("psc-enabled-main-instance")
/// .databaseVersion("MYSQL_8_0")
/// .settings(DatabaseInstanceSettingsArgs.builder()
/// .tier("db-f1-micro")
/// .ipConfiguration(DatabaseInstanceSettingsIpConfigurationArgs.builder()
/// .pscConfigs(DatabaseInstanceSettingsIpConfigurationPscConfigArgs.builder()
/// .pscEnabled(true)
/// .allowedConsumerProjects("allowed-consumer-project-name")
/// .networkAttachmentUri("network-attachment-uri")
/// .build())
/// .ipv4Enabled(false)
/// .build())
/// .backupConfiguration(DatabaseInstanceSettingsBackupConfigurationArgs.builder()
/// .enabled(true)
/// .binaryLogEnabled(true)
/// .build())
/// .availabilityType("REGIONAL")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// main:
/// type: gcp:sql:DatabaseInstance
/// properties:
/// name: psc-enabled-main-instance
/// databaseVersion: MYSQL_8_0
/// settings:
/// tier: db-f1-micro
/// ipConfiguration:
/// pscConfigs:
/// - pscEnabled: true
/// allowedConsumerProjects:
/// - allowed-consumer-project-name
/// networkAttachmentUri: network-attachment-uri
/// ipv4Enabled: false
/// backupConfiguration:
/// enabled: true
/// binaryLogEnabled: true
/// availabilityType: REGIONAL
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Cloud SQL Instance created with<span pulumi-lang-nodejs=" backupdrBackup
/// " pulumi-lang-dotnet=" BackupdrBackup
/// " pulumi-lang-go=" backupdrBackup
/// " pulumi-lang-python=" backupdr_backup
/// " pulumi-lang-yaml=" backupdrBackup
/// " pulumi-lang-java=" backupdrBackup
/// "> backupdr_backup
/// </span>> **NOTE:** For restoring from a backupdr_backup, note that the backup must be in active state. List down the backups using <span pulumi-lang-nodejs="`gcp.backupdisasterrecovery.getBackup`" pulumi-lang-dotnet="`gcp.backupdisasterrecovery.getBackup`" pulumi-lang-go="`backupdisasterrecovery.getBackup`" pulumi-lang-python="`backupdisasterrecovery_get_backup`" pulumi-lang-yaml="`gcp.backupdisasterrecovery.getBackup`" pulumi-lang-java="`gcp.backupdisasterrecovery.getBackup`">`gcp.backupdisasterrecovery.getBackup`</span>. Replace <span pulumi-lang-nodejs="`backupdrBackupFullPath`" pulumi-lang-dotnet="`BackupdrBackupFullPath`" pulumi-lang-go="`backupdrBackupFullPath`" pulumi-lang-python="`backupdr_backup_full_path`" pulumi-lang-yaml="`backupdrBackupFullPath`" pulumi-lang-java="`backupdrBackupFullPath`">`backupdr_backup_full_path`</span> with the backup name.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const instance = new gcp.sql.DatabaseInstance("instance", {
/// name: "main-instance",
/// databaseVersion: "MYSQL_8_0",
/// settings: {
/// tier: "db-f1-micro",
/// backupConfiguration: {
/// enabled: true,
/// binaryLogEnabled: true,
/// },
/// },
/// backupdrBackup: "backupdr_backup_full_path",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// instance = gcp.sql.DatabaseInstance("instance",
/// name="main-instance",
/// database_version="MYSQL_8_0",
/// settings={
/// "tier": "db-f1-micro",
/// "backup_configuration": {
/// "enabled": True,
/// "binary_log_enabled": True,
/// },
/// },
/// backupdr_backup="backupdr_backup_full_path")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var instance = new Gcp.Sql.DatabaseInstance("instance", new()
/// {
/// Name = "main-instance",
/// DatabaseVersion = "MYSQL_8_0",
/// Settings = new Gcp.Sql.Inputs.DatabaseInstanceSettingsArgs
/// {
/// Tier = "db-f1-micro",
/// BackupConfiguration = new Gcp.Sql.Inputs.DatabaseInstanceSettingsBackupConfigurationArgs
/// {
/// Enabled = true,
/// BinaryLogEnabled = true,
/// },
/// },
/// BackupdrBackup = "backupdr_backup_full_path",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/sql"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := sql.NewDatabaseInstance(ctx, "instance", &sql.DatabaseInstanceArgs{
/// Name:            pulumi.String("main-instance"),
/// DatabaseVersion: pulumi.String("MYSQL_8_0"),
/// Settings: &sql.DatabaseInstanceSettingsArgs{
/// Tier: pulumi.String("db-f1-micro"),
/// BackupConfiguration: &sql.DatabaseInstanceSettingsBackupConfigurationArgs{
/// Enabled:          pulumi.Bool(true),
/// BinaryLogEnabled: pulumi.Bool(true),
/// },
/// },
/// BackupdrBackup: pulumi.String("backupdr_backup_full_path"),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.sql.DatabaseInstance;
/// import com.pulumi.gcp.sql.DatabaseInstanceArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsBackupConfigurationArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var instance = new DatabaseInstance("instance", DatabaseInstanceArgs.builder()
/// .name("main-instance")
/// .databaseVersion("MYSQL_8_0")
/// .settings(DatabaseInstanceSettingsArgs.builder()
/// .tier("db-f1-micro")
/// .backupConfiguration(DatabaseInstanceSettingsBackupConfigurationArgs.builder()
/// .enabled(true)
/// .binaryLogEnabled(true)
/// .build())
/// .build())
/// .backupdrBackup("backupdr_backup_full_path")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// instance:
/// type: gcp:sql:DatabaseInstance
/// properties:
/// name: main-instance
/// databaseVersion: MYSQL_8_0
/// settings:
/// tier: db-f1-micro
/// backupConfiguration:
/// enabled: true
/// binaryLogEnabled: true
/// backupdrBackup: backupdr_backup_full_path
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Cloud SQL Instance created using<span pulumi-lang-nodejs=" pointInTimeRestore
/// " pulumi-lang-dotnet=" PointInTimeRestore
/// " pulumi-lang-go=" pointInTimeRestore
/// " pulumi-lang-python=" point_in_time_restore
/// " pulumi-lang-yaml=" pointInTimeRestore
/// " pulumi-lang-java=" pointInTimeRestore
/// "> point_in_time_restore
/// </span>> **NOTE:** Replace <span pulumi-lang-nodejs="`backupdrDatasource`" pulumi-lang-dotnet="`BackupdrDatasource`" pulumi-lang-go="`backupdrDatasource`" pulumi-lang-python="`backupdr_datasource`" pulumi-lang-yaml="`backupdrDatasource`" pulumi-lang-java="`backupdrDatasource`">`backupdr_datasource`</span> with the full datasource path, <span pulumi-lang-nodejs="`timeStamp`" pulumi-lang-dotnet="`TimeStamp`" pulumi-lang-go="`timeStamp`" pulumi-lang-python="`time_stamp`" pulumi-lang-yaml="`timeStamp`" pulumi-lang-java="`timeStamp`">`time_stamp`</span> should be in the format of `YYYY-MM-DDTHH:MM:SSZ`.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const instance = new gcp.sql.DatabaseInstance("instance", {
/// name: "main-instance",
/// databaseVersion: "MYSQL_8_0",
/// settings: {
/// tier: "db-f1-micro",
/// backupConfiguration: {
/// enabled: true,
/// binaryLogEnabled: true,
/// },
/// },
/// pointInTimeRestoreContext: {
/// datasource: "backupdr_datasource",
/// targetInstance: "target_instance_name",
/// pointInTime: "time_stamp",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// instance = gcp.sql.DatabaseInstance("instance",
/// name="main-instance",
/// database_version="MYSQL_8_0",
/// settings={
/// "tier": "db-f1-micro",
/// "backup_configuration": {
/// "enabled": True,
/// "binary_log_enabled": True,
/// },
/// },
/// point_in_time_restore_context={
/// "datasource": "backupdr_datasource",
/// "target_instance": "target_instance_name",
/// "point_in_time": "time_stamp",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var instance = new Gcp.Sql.DatabaseInstance("instance", new()
/// {
/// Name = "main-instance",
/// DatabaseVersion = "MYSQL_8_0",
/// Settings = new Gcp.Sql.Inputs.DatabaseInstanceSettingsArgs
/// {
/// Tier = "db-f1-micro",
/// BackupConfiguration = new Gcp.Sql.Inputs.DatabaseInstanceSettingsBackupConfigurationArgs
/// {
/// Enabled = true,
/// BinaryLogEnabled = true,
/// },
/// },
/// PointInTimeRestoreContext = new Gcp.Sql.Inputs.DatabaseInstancePointInTimeRestoreContextArgs
/// {
/// Datasource = "backupdr_datasource",
/// TargetInstance = "target_instance_name",
/// PointInTime = "time_stamp",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/sql"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := sql.NewDatabaseInstance(ctx, "instance", &sql.DatabaseInstanceArgs{
/// Name:            pulumi.String("main-instance"),
/// DatabaseVersion: pulumi.String("MYSQL_8_0"),
/// Settings: &sql.DatabaseInstanceSettingsArgs{
/// Tier: pulumi.String("db-f1-micro"),
/// BackupConfiguration: &sql.DatabaseInstanceSettingsBackupConfigurationArgs{
/// Enabled:          pulumi.Bool(true),
/// BinaryLogEnabled: pulumi.Bool(true),
/// },
/// },
/// PointInTimeRestoreContext: &sql.DatabaseInstancePointInTimeRestoreContextArgs{
/// Datasource:     pulumi.String("backupdr_datasource"),
/// TargetInstance: pulumi.String("target_instance_name"),
/// PointInTime:    pulumi.String("time_stamp"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.sql.DatabaseInstance;
/// import com.pulumi.gcp.sql.DatabaseInstanceArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsBackupConfigurationArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstancePointInTimeRestoreContextArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var instance = new DatabaseInstance("instance", DatabaseInstanceArgs.builder()
/// .name("main-instance")
/// .databaseVersion("MYSQL_8_0")
/// .settings(DatabaseInstanceSettingsArgs.builder()
/// .tier("db-f1-micro")
/// .backupConfiguration(DatabaseInstanceSettingsBackupConfigurationArgs.builder()
/// .enabled(true)
/// .binaryLogEnabled(true)
/// .build())
/// .build())
/// .pointInTimeRestoreContext(DatabaseInstancePointInTimeRestoreContextArgs.builder()
/// .datasource("backupdr_datasource")
/// .targetInstance("target_instance_name")
/// .pointInTime("time_stamp")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// instance:
/// type: gcp:sql:DatabaseInstance
/// properties:
/// name: main-instance
/// databaseVersion: MYSQL_8_0
/// settings:
/// tier: db-f1-micro
/// backupConfiguration:
/// enabled: true
/// binaryLogEnabled: true
/// pointInTimeRestoreContext:
/// datasource: backupdr_datasource
/// targetInstance: target_instance_name
/// pointInTime: time_stamp
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Switchover
///
/// Users can perform a switchover on a replica by following the steps below.
///
/// ~>**WARNING:** Failure to follow these steps can lead to data loss (You will be warned during plan stage). To prevent data loss during a switchover, please verify your plan with the checklist below.
///
/// For a more in-depth walkthrough with example code, see the Switchover Guide
///
/// ### Steps to Invoke Switchover
///
/// MySQL/PostgreSQL: Create a cross-region, Enterprise Plus edition primary and replica pair, then set the value of primary's `replication_cluster.failover_dr_replica_name` as the replica.
///
/// SQL Server: Create a <span pulumi-lang-nodejs="`cascadable`" pulumi-lang-dotnet="`Cascadable`" pulumi-lang-go="`cascadable`" pulumi-lang-python="`cascadable`" pulumi-lang-yaml="`cascadable`" pulumi-lang-java="`cascadable`">`cascadable`</span> replica in a different region from the primary (<span pulumi-lang-nodejs="`cascadableReplica`" pulumi-lang-dotnet="`CascadableReplica`" pulumi-lang-go="`cascadableReplica`" pulumi-lang-python="`cascadable_replica`" pulumi-lang-yaml="`cascadableReplica`" pulumi-lang-java="`cascadableReplica`">`cascadable_replica`</span> is set to true in <span pulumi-lang-nodejs="`replicaConfiguration`" pulumi-lang-dotnet="`ReplicaConfiguration`" pulumi-lang-go="`replicaConfiguration`" pulumi-lang-python="`replica_configuration`" pulumi-lang-yaml="`replicaConfiguration`" pulumi-lang-java="`replicaConfiguration`">`replica_configuration`</span>)
///
/// #### Invoking switchover in the replica resource:
/// 1. Change<span pulumi-lang-nodejs=" instanceType " pulumi-lang-dotnet=" InstanceType " pulumi-lang-go=" instanceType " pulumi-lang-python=" instance_type " pulumi-lang-yaml=" instanceType " pulumi-lang-java=" instanceType "> instance_type </span>from `READ_REPLICA_INSTANCE` to `CLOUD_SQL_INSTANCE`
/// 2. Remove <span pulumi-lang-nodejs="`masterInstanceName`" pulumi-lang-dotnet="`MasterInstanceName`" pulumi-lang-go="`masterInstanceName`" pulumi-lang-python="`master_instance_name`" pulumi-lang-yaml="`masterInstanceName`" pulumi-lang-java="`masterInstanceName`">`master_instance_name`</span>
/// 3. (SQL Server) Remove <span pulumi-lang-nodejs="`replicaConfiguration`" pulumi-lang-dotnet="`ReplicaConfiguration`" pulumi-lang-go="`replicaConfiguration`" pulumi-lang-python="`replica_configuration`" pulumi-lang-yaml="`replicaConfiguration`" pulumi-lang-java="`replicaConfiguration`">`replica_configuration`</span>
/// 4. Add current primary's name to the replica's <span pulumi-lang-nodejs="`replicaNames`" pulumi-lang-dotnet="`ReplicaNames`" pulumi-lang-go="`replicaNames`" pulumi-lang-python="`replica_names`" pulumi-lang-yaml="`replicaNames`" pulumi-lang-java="`replicaNames`">`replica_names`</span> list
/// 5. (MySQL/PostgreSQL) Add current primary's name to the replica's `replication_cluster.failover_dr_replica_name`.
/// 6. (MySQL/PostgreSQL) Adjust <span pulumi-lang-nodejs="`backupConfiguration`" pulumi-lang-dotnet="`BackupConfiguration`" pulumi-lang-go="`backupConfiguration`" pulumi-lang-python="`backup_configuration`" pulumi-lang-yaml="`backupConfiguration`" pulumi-lang-java="`backupConfiguration`">`backup_configuration`</span>. See Switchover Guide for details.
///
/// #### Updating the primary resource:
/// 1. Change <span pulumi-lang-nodejs="`instanceType`" pulumi-lang-dotnet="`InstanceType`" pulumi-lang-go="`instanceType`" pulumi-lang-python="`instance_type`" pulumi-lang-yaml="`instanceType`" pulumi-lang-java="`instanceType`">`instance_type`</span> from `CLOUD_SQL_INSTANCE` to `READ_REPLICA_INSTANCE`
/// 2. Set <span pulumi-lang-nodejs="`masterInstanceName`" pulumi-lang-dotnet="`MasterInstanceName`" pulumi-lang-go="`masterInstanceName`" pulumi-lang-python="`master_instance_name`" pulumi-lang-yaml="`masterInstanceName`" pulumi-lang-java="`masterInstanceName`">`master_instance_name`</span> to the original replica (which will be primary after switchover)
/// 3. (SQL Server) Set <span pulumi-lang-nodejs="`replicaConfiguration`" pulumi-lang-dotnet="`ReplicaConfiguration`" pulumi-lang-go="`replicaConfiguration`" pulumi-lang-python="`replica_configuration`" pulumi-lang-yaml="`replicaConfiguration`" pulumi-lang-java="`replicaConfiguration`">`replica_configuration`</span> and set <span pulumi-lang-nodejs="`cascadableReplica`" pulumi-lang-dotnet="`CascadableReplica`" pulumi-lang-go="`cascadableReplica`" pulumi-lang-python="`cascadable_replica`" pulumi-lang-yaml="`cascadableReplica`" pulumi-lang-java="`cascadableReplica`">`cascadable_replica`</span> to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>
/// 4. Remove original replica from <span pulumi-lang-nodejs="`replicaNames`" pulumi-lang-dotnet="`ReplicaNames`" pulumi-lang-go="`replicaNames`" pulumi-lang-python="`replica_names`" pulumi-lang-yaml="`replicaNames`" pulumi-lang-java="`replicaNames`">`replica_names`</span>
/// * **NOTE**: Do **not** delete the<span pulumi-lang-nodejs=" replicaNames " pulumi-lang-dotnet=" ReplicaNames " pulumi-lang-go=" replicaNames " pulumi-lang-python=" replica_names " pulumi-lang-yaml=" replicaNames " pulumi-lang-java=" replicaNames "> replica_names </span>field, even if it has no replicas remaining. Set<span pulumi-lang-nodejs=" replicaNames " pulumi-lang-dotnet=" ReplicaNames " pulumi-lang-go=" replicaNames " pulumi-lang-python=" replica_names " pulumi-lang-yaml=" replicaNames " pulumi-lang-java=" replicaNames "> replica_names </span>= [ ] to indicate it having no replicas.
/// 5. (MySQL/PostgreSQL) Set `replication_cluster.failover_dr_replica_name` as the empty string.
/// 6. (MySQL/PostgreSQL) Adjust <span pulumi-lang-nodejs="`backupConfiguration`" pulumi-lang-dotnet="`BackupConfiguration`" pulumi-lang-go="`backupConfiguration`" pulumi-lang-python="`backup_configuration`" pulumi-lang-yaml="`backupConfiguration`" pulumi-lang-java="`backupConfiguration`">`backup_configuration`</span>. See Switchover Guide for details.
/// #### Plan and verify that:
/// - `pulumi preview` outputs **"0 to add, 0 to destroy"**
/// - `pulumi preview` does not say **"must be replaced"** for any resource
/// - Every resource **"will be updated in-place"**
/// - Only the 2 instances involved in switchover have planned changes
/// - (Recommended) Use <span pulumi-lang-nodejs="`deletionProtection`" pulumi-lang-dotnet="`DeletionProtection`" pulumi-lang-go="`deletionProtection`" pulumi-lang-python="`deletion_protection`" pulumi-lang-yaml="`deletionProtection`" pulumi-lang-java="`deletionProtection`">`deletion_protection`</span> on instances as a safety measure
///
/// ## Import
///
/// Database instances can be imported using one of any of these accepted formats:
///
/// * `projects/{{project}}/instances/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Database instances can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:sql/databaseInstance:DatabaseInstance default projects/{{project}}/instances/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:sql/databaseInstance:DatabaseInstance default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:sql/databaseInstance:DatabaseInstance default {{name}}
/// ```
///
/// config and set on the server.
///
/// When importing, double-check that your config has all the fields set that you expect- just seeing
///
/// no diff isn't sufficient to know that your config could reproduce the imported resource.
class DatabaseInstance2 extends CustomResource {
  /// The list of all maintenance versions applicable on the instance.
  late final Output<List<String>> availableMaintenanceVersions;

  /// The name of the BackupDR backup to restore from.
  late final Output<String?> backupdrBackup;

  /// The context needed to create this instance as a clone of another instance. When this field is set during
  /// resource creation, this provider will attempt to clone another instance as indicated in the context. The
  /// configuration is detailed below.
  late final Output<DatabaseInstanceClone?> clone;

  /// The connection name of the instance to be used in
  /// connection strings. For example, when connecting with [Cloud SQL Proxy](https://cloud.google.com/sql/docs/mysql/connect-admin-proxy).
  late final Output<String> connectionName;

  /// The MySQL, PostgreSQL or
  /// SQL Server version to use. Supported values include `MYSQL_5_6`,
  /// `MYSQL_5_7`, `MYSQL_8_0`, `MYSQL_8_4`, `POSTGRES_9_6`,`POSTGRES_10`, `POSTGRES_11`,
  /// `POSTGRES_12`, `POSTGRES_13`, `POSTGRES_14`, `POSTGRES_15`, `POSTGRES_16`, `POSTGRES_17`,
  /// `SQLSERVER_2017_STANDARD`, `SQLSERVER_2017_ENTERPRISE`, `SQLSERVER_2017_EXPRESS`, `SQLSERVER_2017_WEB`.
  /// `SQLSERVER_2019_STANDARD`, `SQLSERVER_2019_ENTERPRISE`, `SQLSERVER_2019_EXPRESS`,
  /// `SQLSERVER_2019_WEB`.
  /// [Database Version Policies](https://cloud.google.com/sql/docs/db-versions)
  /// includes an up-to-date reference of supported versions.
  late final Output<String> databaseVersion;

  /// Whether or not to allow the provider to destroy the instance. Unless this field is set to false
  /// in state, a <span pulumi-lang-nodejs="`destroy`" pulumi-lang-dotnet="`Destroy`" pulumi-lang-go="`destroy`" pulumi-lang-python="`destroy`" pulumi-lang-yaml="`destroy`" pulumi-lang-java="`destroy`">`destroy`</span> or <span pulumi-lang-nodejs="`update`" pulumi-lang-dotnet="`Update`" pulumi-lang-go="`update`" pulumi-lang-python="`update`" pulumi-lang-yaml="`update`" pulumi-lang-java="`update`">`update`</span> command that deletes the instance will fail. Defaults to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  ///
  /// > **NOTE:** This flag only protects instances from deletion within Pulumi. To protect your instances from accidental deletion across all surfaces (API, gcloud, Cloud Console and Pulumi), use the API flag `settings.deletion_protection_enabled`.
  late final Output<bool?> deletionProtection;

  /// The DNS name of the instance. See [Connect to an instance using Private Service Connect](https://cloud.google.com/sql/docs/mysql/configure-private-service-connect#view-summary-information-cloud-sql-instances-psc-enabled) for more details.
  late final Output<String> dnsName;

  /// The list of DNS names used by this instance. Different connection types for an instance may have different DNS names. DNS names can apply to an individual instance or a cluster of instances.
  late final Output<List<DatabaseInstanceDnsName>> dnsNames;

  /// The full path to the encryption key used for the CMEK disk encryption.  Setting
  /// up disk encryption currently requires manual steps outside of this provider.
  /// The provided key must be in the same region as the SQL instance.  In order
  /// to use this feature, a special kind of service account must be created and
  /// granted permission on this key.  This step can currently only be done
  /// manually, please see [this step](https://cloud.google.com/sql/docs/mysql/configure-cmek#service-account).
  /// That service account needs the `Cloud KMS > Cloud KMS CryptoKey Encrypter/Decrypter` role on your
  /// key - please see [this step](https://cloud.google.com/sql/docs/mysql/configure-cmek#grantkey).
  late final Output<String> encryptionKeyName;

  /// The description of final backup. Only set this field when `final_backup_config.enabled` is true.
  late final Output<String?> finalBackupDescription;

  /// The first IPv4 address of any type assigned.
  late final Output<String> firstIpAddress;

  /// The type of the instance. See [API reference for SqlInstanceType](https://cloud.google.com/sql/docs/mysql/admin-api/rest/v1/instances#SqlInstanceType) for supported values.
  late final Output<String> instanceType;
  late final Output<List<DatabaseInstanceIpAddress>> ipAddresses;

  /// The current software version on the instance. This attribute can not be set during creation. Refer to <span pulumi-lang-nodejs="`availableMaintenanceVersions`" pulumi-lang-dotnet="`AvailableMaintenanceVersions`" pulumi-lang-go="`availableMaintenanceVersions`" pulumi-lang-python="`available_maintenance_versions`" pulumi-lang-yaml="`availableMaintenanceVersions`" pulumi-lang-java="`availableMaintenanceVersions`">`available_maintenance_versions`</span> attribute to see what <span pulumi-lang-nodejs="`maintenanceVersion`" pulumi-lang-dotnet="`MaintenanceVersion`" pulumi-lang-go="`maintenanceVersion`" pulumi-lang-python="`maintenance_version`" pulumi-lang-yaml="`maintenanceVersion`" pulumi-lang-java="`maintenanceVersion`">`maintenance_version`</span> are available for upgrade. When this attribute gets updated, it will cause an instance restart. Setting a <span pulumi-lang-nodejs="`maintenanceVersion`" pulumi-lang-dotnet="`MaintenanceVersion`" pulumi-lang-go="`maintenanceVersion`" pulumi-lang-python="`maintenance_version`" pulumi-lang-yaml="`maintenanceVersion`" pulumi-lang-java="`maintenanceVersion`">`maintenance_version`</span> value that is older than the current one on the instance will be ignored.
  late final Output<String> maintenanceVersion;

  /// The name of the existing instance that will
  /// act as the master in the replication setup. Note, this requires the master to
  /// have <span pulumi-lang-nodejs="`binaryLogEnabled`" pulumi-lang-dotnet="`BinaryLogEnabled`" pulumi-lang-go="`binaryLogEnabled`" pulumi-lang-python="`binary_log_enabled`" pulumi-lang-yaml="`binaryLogEnabled`" pulumi-lang-java="`binaryLogEnabled`">`binary_log_enabled`</span> set, as well as existing backups.
  late final Output<String> masterInstanceName;

  /// The name of the instance. If the name is left
  /// blank, the provider will randomly generate one when the instance is first
  /// created. This is done because after a name is used, it cannot be reused for
  /// up to [one week](https://cloud.google.com/sql/docs/delete-instance).
  late final Output<String> name;

  /// For a read pool instance, the number of nodes in the read pool. For read pools with auto scaling enabled, this field is read only.
  late final Output<int> nodeCount;

  /// Configuration for creating a new instance using point-in-time-restore from backupdr backup.
  late final Output<DatabaseInstancePointInTimeRestoreContext?>
      pointInTimeRestoreContext;

  /// The first private (`PRIVATE`) IPv4 address assigned.
  late final Output<String> privateIpAddress;

  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  late final Output<String> project;

  /// the URI that points to the service attachment of the instance.
  late final Output<String> pscServiceAttachmentLink;

  /// The first public (`PRIMARY`) IPv4 address assigned.
  late final Output<String> publicIpAddress;

  /// The region the instance will sit in. If a region is not provided in the resource definition,
  /// the provider region will be used instead.
  ///
  /// - - -
  late final Output<String> region;

  /// The configuration for replication. The
  /// configuration is detailed below.
  late final Output<DatabaseInstanceReplicaConfiguration> replicaConfiguration;

  /// List of replica names. Can be updated.
  late final Output<List<String>> replicaNames;

  /// A primary instance and disaster recovery replica pair. Applicable to MySQL and PostgreSQL. This field can be set if the primary has<span pulumi-lang-nodejs=" psaWriteEndpoint " pulumi-lang-dotnet=" PsaWriteEndpoint " pulumi-lang-go=" psaWriteEndpoint " pulumi-lang-python=" psa_write_endpoint " pulumi-lang-yaml=" psaWriteEndpoint " pulumi-lang-java=" psaWriteEndpoint "> psa_write_endpoint </span>set or both the primary and replica are created.
  late final Output<DatabaseInstanceReplicationCluster> replicationCluster;

  /// The context needed to restore the database to a backup run. This field will
  /// cause the provider to trigger the database to restore from the backup run indicated. The configuration is detailed below.
  /// **NOTE:** Restoring from a backup is an imperative action and not recommended via this provider. Adding or modifying this
  /// block during resource creation/update will trigger the restore action after the resource is created/updated.
  late final Output<DatabaseInstanceRestoreBackupContext?> restoreBackupContext;

  /// Initial root password. Can be updated. Required for MS SQL Server.
  late final Output<String?> rootPassword;

  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// Initial root password. Can be updated. Required for MS SQL Server. **Note**: This property is write-only and will not be read from the API.
  ///
  /// > **Note:** One of <span pulumi-lang-nodejs="`rootPassword`" pulumi-lang-dotnet="`RootPassword`" pulumi-lang-go="`rootPassword`" pulumi-lang-python="`root_password`" pulumi-lang-yaml="`rootPassword`" pulumi-lang-java="`rootPassword`">`root_password`</span> or <span pulumi-lang-nodejs="`rootPasswordWo`" pulumi-lang-dotnet="`RootPasswordWo`" pulumi-lang-go="`rootPasswordWo`" pulumi-lang-python="`root_password_wo`" pulumi-lang-yaml="`rootPasswordWo`" pulumi-lang-java="`rootPasswordWo`">`root_password_wo`</span> can only be set.
  late final Output<String?> rootPasswordWo;

  /// Triggers update of <span pulumi-lang-nodejs="`rootPasswordWo`" pulumi-lang-dotnet="`RootPasswordWo`" pulumi-lang-go="`rootPasswordWo`" pulumi-lang-python="`root_password_wo`" pulumi-lang-yaml="`rootPasswordWo`" pulumi-lang-java="`rootPasswordWo`">`root_password_wo`</span> write-only. Increment this value when an update to <span pulumi-lang-nodejs="`rootPasswordWo`" pulumi-lang-dotnet="`RootPasswordWo`" pulumi-lang-go="`rootPasswordWo`" pulumi-lang-python="`root_password_wo`" pulumi-lang-yaml="`rootPasswordWo`" pulumi-lang-java="`rootPasswordWo`">`root_password_wo`</span> is needed. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  late final Output<String?> rootPasswordWoVersion;

  /// The URI of the created resource.
  late final Output<String> selfLink;
  late final Output<List<DatabaseInstanceServerCaCert>> serverCaCerts;

  /// The service account email address assigned to the
  /// instance.
  late final Output<String> serviceAccountEmailAddress;

  /// The settings to use for the database. The
  /// configuration is detailed below. Required if <span pulumi-lang-nodejs="`clone`" pulumi-lang-dotnet="`Clone`" pulumi-lang-go="`clone`" pulumi-lang-python="`clone`" pulumi-lang-yaml="`clone`" pulumi-lang-java="`clone`">`clone`</span> is not set.
  late final Output<DatabaseInstanceSettings> settings;

  DatabaseInstance2(
    String name, {
    DatabaseInstanceArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:sql/databaseInstance:DatabaseInstance',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.availableMaintenanceVersions =
        registerOutput<List<String>>('availableMaintenanceVersions');
    this.backupdrBackup = registerOutput<String?>('backupdrBackup');
    this.clone = registerOutput<DatabaseInstanceClone?>('clone');
    this.connectionName = registerOutput<String>('connectionName');
    this.databaseVersion = registerOutput<String>('databaseVersion');
    this.deletionProtection = registerOutput<bool?>('deletionProtection');
    this.dnsName = registerOutput<String>('dnsName');
    this.dnsNames = registerOutput<List<DatabaseInstanceDnsName>>('dnsNames');
    this.encryptionKeyName = registerOutput<String>('encryptionKeyName');
    this.finalBackupDescription =
        registerOutput<String?>('finalBackupDescription');
    this.firstIpAddress = registerOutput<String>('firstIpAddress');
    this.instanceType = registerOutput<String>('instanceType');
    this.ipAddresses =
        registerOutput<List<DatabaseInstanceIpAddress>>('ipAddresses');
    this.maintenanceVersion = registerOutput<String>('maintenanceVersion');
    this.masterInstanceName = registerOutput<String>('masterInstanceName');
    this.name = registerOutput<String>('name');
    this.nodeCount = registerOutput<int>('nodeCount');
    this.pointInTimeRestoreContext =
        registerOutput<DatabaseInstancePointInTimeRestoreContext?>(
            'pointInTimeRestoreContext');
    this.privateIpAddress = registerOutput<String>('privateIpAddress');
    this.project = registerOutput<String>('project');
    this.pscServiceAttachmentLink =
        registerOutput<String>('pscServiceAttachmentLink');
    this.publicIpAddress = registerOutput<String>('publicIpAddress');
    this.region = registerOutput<String>('region');
    this.replicaConfiguration =
        registerOutput<DatabaseInstanceReplicaConfiguration>(
            'replicaConfiguration');
    this.replicaNames = registerOutput<List<String>>('replicaNames');
    this.replicationCluster =
        registerOutput<DatabaseInstanceReplicationCluster>(
            'replicationCluster');
    this.restoreBackupContext =
        registerOutput<DatabaseInstanceRestoreBackupContext?>(
            'restoreBackupContext');
    this.rootPassword = registerOutput<String?>('rootPassword');
    this.rootPasswordWo = registerOutput<String?>('rootPasswordWo');
    this.rootPasswordWoVersion =
        registerOutput<String?>('rootPasswordWoVersion');
    this.selfLink = registerOutput<String>('selfLink');
    this.serverCaCerts =
        registerOutput<List<DatabaseInstanceServerCaCert>>('serverCaCerts');
    this.serviceAccountEmailAddress =
        registerOutput<String>('serviceAccountEmailAddress');
    this.settings = registerOutput<DatabaseInstanceSettings>('settings');
  }
}

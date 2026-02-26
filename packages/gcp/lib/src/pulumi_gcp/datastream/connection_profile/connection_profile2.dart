import 'package:pulumi/pulumi.dart';
import '../connection_profile_forward_ssh_connectivity/connection_profile_forward_ssh_connectivity.dart';
import '../connection_profile_gcs_profile/connection_profile_gcs_profile.dart';
import '../connection_profile_mongodb_profile/connection_profile_mongodb_profile.dart';
import '../connection_profile_mysql_profile/connection_profile_mysql_profile.dart';
import '../connection_profile_oracle_profile/connection_profile_oracle_profile.dart';
import '../connection_profile_postgresql_profile/connection_profile_postgresql_profile.dart';
import '../connection_profile_private_connectivity/connection_profile_private_connectivity.dart';
import '../connection_profile_salesforce_profile/connection_profile_salesforce_profile.dart';
import '../connection_profile_spanner_profile/connection_profile_spanner_profile.dart';
import '../connection_profile_sql_server_profile/connection_profile_sql_server_profile.dart';
import 'connection_profile_args2.dart';

/// A set of reusable connection configurations to be used as a source or destination for a stream.
///
///
/// To get more information about ConnectionProfile, see:
///
/// * [API documentation](https://cloud.google.com/datastream/docs/reference/rest/v1/projects.locations.connectionProfiles)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/datastream/docs/create-connection-profiles)
///
///
///
/// ## Example Usage
///
/// ### Datastream Connection Profile Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.datastream.ConnectionProfile("default", {
/// displayName: "Connection profile",
/// location: "us-central1",
/// connectionProfileId: "my-profile",
/// gcsProfile: {
/// bucket: "my-bucket",
/// rootPath: "/path",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.datastream.ConnectionProfile("default",
/// display_name="Connection profile",
/// location="us-central1",
/// connection_profile_id="my-profile",
/// gcs_profile={
/// "bucket": "my-bucket",
/// "root_path": "/path",
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
/// var @default = new Gcp.Datastream.ConnectionProfile("default", new()
/// {
/// DisplayName = "Connection profile",
/// Location = "us-central1",
/// ConnectionProfileId = "my-profile",
/// GcsProfile = new Gcp.Datastream.Inputs.ConnectionProfileGcsProfileArgs
/// {
/// Bucket = "my-bucket",
/// RootPath = "/path",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/datastream"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := datastream.NewConnectionProfile(ctx, "default", &datastream.ConnectionProfileArgs{
/// DisplayName:         pulumi.String("Connection profile"),
/// Location:            pulumi.String("us-central1"),
/// ConnectionProfileId: pulumi.String("my-profile"),
/// GcsProfile: &datastream.ConnectionProfileGcsProfileArgs{
/// Bucket:   pulumi.String("my-bucket"),
/// RootPath: pulumi.String("/path"),
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
/// import com.pulumi.gcp.datastream.ConnectionProfile;
/// import com.pulumi.gcp.datastream.ConnectionProfileArgs;
/// import com.pulumi.gcp.datastream.inputs.ConnectionProfileGcsProfileArgs;
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
/// var default_ = new ConnectionProfile("default", ConnectionProfileArgs.builder()
/// .displayName("Connection profile")
/// .location("us-central1")
/// .connectionProfileId("my-profile")
/// .gcsProfile(ConnectionProfileGcsProfileArgs.builder()
/// .bucket("my-bucket")
/// .rootPath("/path")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: gcp:datastream:ConnectionProfile
/// properties:
/// displayName: Connection profile
/// location: us-central1
/// connectionProfileId: my-profile
/// gcsProfile:
/// bucket: my-bucket
/// rootPath: /path
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Datastream Connection Profile Postgresql Private Connection
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as random from "@pulumi/random";
///
/// const _default = new gcp.compute.Network("default", {
/// name: "my-network",
/// autoCreateSubnetworks: false,
/// });
/// const defaultSubnetwork = new gcp.compute.Subnetwork("default", {
/// name: "my-subnetwork",
/// ipCidrRange: "10.1.0.0/16",
/// region: "us-central1",
/// network: _default.id,
/// });
/// const privateConnection = new gcp.datastream.PrivateConnection("private_connection", {
/// displayName: "Private connection",
/// location: "us-central1",
/// privateConnectionId: "my-connection",
/// vpcPeeringConfig: {
/// vpc: _default.id,
/// subnet: "10.0.0.0/29",
/// },
/// });
/// const natVmIp = new gcp.compute.Address("nat_vm_ip", {name: "nat-vm-ip"});
/// const instance = new gcp.sql.DatabaseInstance("instance", {
/// name: "my-instance",
/// databaseVersion: "POSTGRES_14",
/// region: "us-central1",
/// settings: {
/// tier: "db-f1-micro",
/// ipConfiguration: {
/// authorizedNetworks: [{
/// value: natVmIp.address,
/// }],
/// },
/// },
/// deletionProtection: true,
/// });
/// const db = new gcp.sql.Database("db", {
/// instance: instance.name,
/// name: "db",
/// });
/// const pwd = new random.index.Password("pwd", {
/// length: 16,
/// special: false,
/// });
/// const user = new gcp.sql.User("user", {
/// name: "user",
/// instance: instance.name,
/// password: pwd.result,
/// });
/// const natVm = new gcp.compute.Instance("nat_vm", {
/// name: "nat-vm",
/// machineType: "e2-medium",
/// zone: "us-central1-a",
/// desiredStatus: "RUNNING",
/// bootDisk: {
/// initializeParams: {
/// image: "debian-cloud/debian-12",
/// },
/// },
/// networkInterfaces: [{
/// network: privateConnection.vpcPeeringConfig.apply(vpcPeeringConfig => vpcPeeringConfig?.vpc),
/// subnetwork: defaultSubnetwork.selfLink,
/// accessConfigs: [{
/// natIp: natVmIp.address,
/// }],
/// }],
/// metadataStartupScript: pulumi.interpolate`#! /bin/bash
/// # See https://cloud.google.com/datastream/docs/private-connectivity#set-up-reverse-proxy
/// export DB_ADDR=${instance.publicIpAddress}
/// export DB_PORT=5432
/// echo 1 > /proc/sys/net/ipv4/ip_forward
/// md_url_prefix=\"http://169.254.169.254/computeMetadata/v1/instance\"
/// vm_nic_ip=\"$(curl -H \"Metadata-Flavor: Google\" ${md_url_prefix}/network-interfaces/0/ip)\"
/// iptables -t nat -F
/// iptables -t nat -A PREROUTING \\
/// -p tcp --dport $DB_PORT \\
/// -j DNAT \\
/// --to-destination $DB_ADDR
/// iptables -t nat -A POSTROUTING \\
/// -p tcp --dport $DB_PORT \\
/// -j SNAT \\
/// --to-source $vm_nic_ip
/// iptables-save
/// `,
/// });
/// const rules = new gcp.compute.Firewall("rules", {
/// name: "ingress-rule",
/// network: privateConnection.vpcPeeringConfig.apply(vpcPeeringConfig => vpcPeeringConfig?.vpc),
/// description: "Allow traffic into NAT VM",
/// direction: "INGRESS",
/// allows: [{
/// protocol: "tcp",
/// ports: ["5432"],
/// }],
/// sourceRanges: [privateConnection.vpcPeeringConfig.apply(vpcPeeringConfig => vpcPeeringConfig?.subnet)],
/// });
/// const defaultConnectionProfile = new gcp.datastream.ConnectionProfile("default", {
/// displayName: "Connection profile",
/// location: "us-central1",
/// connectionProfileId: "my-profile",
/// postgresqlProfile: {
/// hostname: natVm.networkInterfaces.apply(networkInterfaces => networkInterfaces[0].networkIp),
/// username: user.name,
/// password: user.password,
/// database: db.name,
/// port: 5432,
/// },
/// privateConnectivity: {
/// privateConnection: privateConnection.id,
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_random as random
///
/// default = gcp.compute.Network("default",
/// name="my-network",
/// auto_create_subnetworks=False)
/// default_subnetwork = gcp.compute.Subnetwork("default",
/// name="my-subnetwork",
/// ip_cidr_range="10.1.0.0/16",
/// region="us-central1",
/// network=default.id)
/// private_connection = gcp.datastream.PrivateConnection("private_connection",
/// display_name="Private connection",
/// location="us-central1",
/// private_connection_id="my-connection",
/// vpc_peering_config={
/// "vpc": default.id,
/// "subnet": "10.0.0.0/29",
/// })
/// nat_vm_ip = gcp.compute.Address("nat_vm_ip", name="nat-vm-ip")
/// instance = gcp.sql.DatabaseInstance("instance",
/// name="my-instance",
/// database_version="POSTGRES_14",
/// region="us-central1",
/// settings={
/// "tier": "db-f1-micro",
/// "ip_configuration": {
/// "authorized_networks": [{
/// "value": nat_vm_ip.address,
/// }],
/// },
/// },
/// deletion_protection=True)
/// db = gcp.sql.Database("db",
/// instance=instance.name,
/// name="db")
/// pwd = random.index.Password("pwd",
/// length=16,
/// special=False)
/// user = gcp.sql.User("user",
/// name="user",
/// instance=instance.name,
/// password=pwd["result"])
/// nat_vm = gcp.compute.Instance("nat_vm",
/// name="nat-vm",
/// machine_type="e2-medium",
/// zone="us-central1-a",
/// desired_status="RUNNING",
/// boot_disk={
/// "initialize_params": {
/// "image": "debian-cloud/debian-12",
/// },
/// },
/// network_interfaces=[{
/// "network": private_connection.vpc_peering_config.vpc,
/// "subnetwork": default_subnetwork.self_link,
/// "access_configs": [{
/// "nat_ip": nat_vm_ip.address,
/// }],
/// }],
/// metadata_startup_script=instance.public_ip_address.apply(lambda public_ip_address: f"""#! /bin/bash
/// # See https://cloud.google.com/datastream/docs/private-connectivity#set-up-reverse-proxy
/// export DB_ADDR={public_ip_address}
/// export DB_PORT=5432
/// echo 1 > /proc/sys/net/ipv4/ip_forward
/// md_url_prefix=\"http://169.254.169.254/computeMetadata/v1/instance\"
/// vm_nic_ip=\"$(curl -H \"Metadata-Flavor: Google\" ${{md_url_prefix}}/network-interfaces/0/ip)\"
/// iptables -t nat -F
/// iptables -t nat -A PREROUTING \\
/// -p tcp --dport $DB_PORT \\
/// -j DNAT \\
/// --to-destination $DB_ADDR
/// iptables -t nat -A POSTROUTING \\
/// -p tcp --dport $DB_PORT \\
/// -j SNAT \\
/// --to-source $vm_nic_ip
/// iptables-save
/// """))
/// rules = gcp.compute.Firewall("rules",
/// name="ingress-rule",
/// network=private_connection.vpc_peering_config.vpc,
/// description="Allow traffic into NAT VM",
/// direction="INGRESS",
/// allows=[{
/// "protocol": "tcp",
/// "ports": ["5432"],
/// }],
/// source_ranges=[private_connection.vpc_peering_config.subnet])
/// default_connection_profile = gcp.datastream.ConnectionProfile("default",
/// display_name="Connection profile",
/// location="us-central1",
/// connection_profile_id="my-profile",
/// postgresql_profile={
/// "hostname": nat_vm.network_interfaces[0].network_ip,
/// "username": user.name,
/// "password": user.password,
/// "database": db.name,
/// "port": 5432,
/// },
/// private_connectivity={
/// "private_connection": private_connection.id,
/// })
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
/// var @default = new Gcp.Compute.Network("default", new()
/// {
/// Name = "my-network",
/// AutoCreateSubnetworks = false,
/// });
///
/// var defaultSubnetwork = new Gcp.Compute.Subnetwork("default", new()
/// {
/// Name = "my-subnetwork",
/// IpCidrRange = "10.1.0.0/16",
/// Region = "us-central1",
/// Network = @default.Id,
/// });
///
/// var privateConnection = new Gcp.Datastream.PrivateConnection("private_connection", new()
/// {
/// DisplayName = "Private connection",
/// Location = "us-central1",
/// PrivateConnectionId = "my-connection",
/// VpcPeeringConfig = new Gcp.Datastream.Inputs.PrivateConnectionVpcPeeringConfigArgs
/// {
/// Vpc = @default.Id,
/// Subnet = "10.0.0.0/29",
/// },
/// });
///
/// var natVmIp = new Gcp.Compute.Address("nat_vm_ip", new()
/// {
/// Name = "nat-vm-ip",
/// });
///
/// var instance = new Gcp.Sql.DatabaseInstance("instance", new()
/// {
/// Name = "my-instance",
/// DatabaseVersion = "POSTGRES_14",
/// Region = "us-central1",
/// Settings = new Gcp.Sql.Inputs.DatabaseInstanceSettingsArgs
/// {
/// Tier = "db-f1-micro",
/// IpConfiguration = new Gcp.Sql.Inputs.DatabaseInstanceSettingsIpConfigurationArgs
/// {
/// AuthorizedNetworks = new[]
/// {
/// new Gcp.Sql.Inputs.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs
/// {
/// Value = natVmIp.IPAddress,
/// },
/// },
/// },
/// },
/// DeletionProtection = true,
/// });
///
/// var db = new Gcp.Sql.Database("db", new()
/// {
/// Instance = instance.Name,
/// Name = "db",
/// });
///
/// var pwd = new Random.Index.Password("pwd", new()
/// {
/// Length = 16,
/// Special = false,
/// });
///
/// var user = new Gcp.Sql.User("user", new()
/// {
/// Name = "user",
/// Instance = instance.Name,
/// Password = pwd.Result,
/// });
///
/// var natVm = new Gcp.Compute.Instance("nat_vm", new()
/// {
/// Name = "nat-vm",
/// MachineType = "e2-medium",
/// Zone = "us-central1-a",
/// DesiredStatus = "RUNNING",
/// BootDisk = new Gcp.Compute.Inputs.InstanceBootDiskArgs
/// {
/// InitializeParams = new Gcp.Compute.Inputs.InstanceBootDiskInitializeParamsArgs
/// {
/// Image = "debian-cloud/debian-12",
/// },
/// },
/// NetworkInterfaces = new[]
/// {
/// new Gcp.Compute.Inputs.InstanceNetworkInterfaceArgs
/// {
/// Network = privateConnection.VpcPeeringConfig.Apply(vpcPeeringConfig => vpcPeeringConfig?.Vpc),
/// Subnetwork = defaultSubnetwork.SelfLink,
/// AccessConfigs = new[]
/// {
/// new Gcp.Compute.Inputs.InstanceNetworkInterfaceAccessConfigArgs
/// {
/// NatIp = natVmIp.IPAddress,
/// },
/// },
/// },
/// },
/// MetadataStartupScript = instance.PublicIpAddress.Apply(publicIpAddress => @$"#! /bin/bash
/// # See https://cloud.google.com/datastream/docs/private-connectivity#set-up-reverse-proxy
/// export DB_ADDR={publicIpAddress}
/// export DB_PORT=5432
/// echo 1 > /proc/sys/net/ipv4/ip_forward
/// md_url_prefix=\""http://169.254.169.254/computeMetadata/v1/instance\""
/// vm_nic_ip=\""$(curl -H \""Metadata-Flavor: Google\"" ${{md_url_prefix}}/network-interfaces/0/ip)\""
/// iptables -t nat -F
/// iptables -t nat -A PREROUTING \\
/// -p tcp --dport $DB_PORT \\
/// -j DNAT \\
/// --to-destination $DB_ADDR
/// iptables -t nat -A POSTROUTING \\
/// -p tcp --dport $DB_PORT \\
/// -j SNAT \\
/// --to-source $vm_nic_ip
/// iptables-save
/// "),
/// });
///
/// var rules = new Gcp.Compute.Firewall("rules", new()
/// {
/// Name = "ingress-rule",
/// Network = privateConnection.VpcPeeringConfig.Apply(vpcPeeringConfig => vpcPeeringConfig?.Vpc),
/// Description = "Allow traffic into NAT VM",
/// Direction = "INGRESS",
/// Allows = new[]
/// {
/// new Gcp.Compute.Inputs.FirewallAllowArgs
/// {
/// Protocol = "tcp",
/// Ports = new[]
/// {
/// "5432",
/// },
/// },
/// },
/// SourceRanges = new[]
/// {
/// privateConnection.VpcPeeringConfig.Apply(vpcPeeringConfig => vpcPeeringConfig?.Subnet),
/// },
/// });
///
/// var defaultConnectionProfile = new Gcp.Datastream.ConnectionProfile("default", new()
/// {
/// DisplayName = "Connection profile",
/// Location = "us-central1",
/// ConnectionProfileId = "my-profile",
/// PostgresqlProfile = new Gcp.Datastream.Inputs.ConnectionProfilePostgresqlProfileArgs
/// {
/// Hostname = natVm.NetworkInterfaces.Apply(networkInterfaces => networkInterfaces[0].NetworkIp),
/// Username = user.Name,
/// Password = user.Password,
/// Database = db.Name,
/// Port = 5432,
/// },
/// PrivateConnectivity = new Gcp.Datastream.Inputs.ConnectionProfilePrivateConnectivityArgs
/// {
/// PrivateConnection = privateConnection.Id,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/datastream"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/sql"
/// "github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _default, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// Name:                  pulumi.String("my-network"),
/// AutoCreateSubnetworks: pulumi.Bool(false),
/// })
/// if err != nil {
/// return err
/// }
/// defaultSubnetwork, err := compute.NewSubnetwork(ctx, "default", &compute.SubnetworkArgs{
/// Name:        pulumi.String("my-subnetwork"),
/// IpCidrRange: pulumi.String("10.1.0.0/16"),
/// Region:      pulumi.String("us-central1"),
/// Network:     _default.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// privateConnection, err := datastream.NewPrivateConnection(ctx, "private_connection", &datastream.PrivateConnectionArgs{
/// DisplayName:         pulumi.String("Private connection"),
/// Location:            pulumi.String("us-central1"),
/// PrivateConnectionId: pulumi.String("my-connection"),
/// VpcPeeringConfig: &datastream.PrivateConnectionVpcPeeringConfigArgs{
/// Vpc:    _default.ID(),
/// Subnet: pulumi.String("10.0.0.0/29"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// natVmIp, err := compute.NewAddress(ctx, "nat_vm_ip", &compute.AddressArgs{
/// Name: pulumi.String("nat-vm-ip"),
/// })
/// if err != nil {
/// return err
/// }
/// instance, err := sql.NewDatabaseInstance(ctx, "instance", &sql.DatabaseInstanceArgs{
/// Name:            pulumi.String("my-instance"),
/// DatabaseVersion: pulumi.String("POSTGRES_14"),
/// Region:          pulumi.String("us-central1"),
/// Settings: &sql.DatabaseInstanceSettingsArgs{
/// Tier: pulumi.String("db-f1-micro"),
/// IpConfiguration: &sql.DatabaseInstanceSettingsIpConfigurationArgs{
/// AuthorizedNetworks: sql.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArray{
/// &sql.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs{
/// Value: natVmIp.Address,
/// },
/// },
/// },
/// },
/// DeletionProtection: pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// db, err := sql.NewDatabase(ctx, "db", &sql.DatabaseArgs{
/// Instance: instance.Name,
/// Name:     pulumi.String("db"),
/// })
/// if err != nil {
/// return err
/// }
/// pwd, err := random.NewPassword(ctx, "pwd", &random.PasswordArgs{
/// Length:  16,
/// Special: false,
/// })
/// if err != nil {
/// return err
/// }
/// user, err := sql.NewUser(ctx, "user", &sql.UserArgs{
/// Name:     pulumi.String("user"),
/// Instance: instance.Name,
/// Password: pwd.Result,
/// })
/// if err != nil {
/// return err
/// }
/// natVm, err := compute.NewInstance(ctx, "nat_vm", &compute.InstanceArgs{
/// Name:          pulumi.String("nat-vm"),
/// MachineType:   pulumi.String("e2-medium"),
/// Zone:          pulumi.String("us-central1-a"),
/// DesiredStatus: pulumi.String("RUNNING"),
/// BootDisk: &compute.InstanceBootDiskArgs{
/// InitializeParams: &compute.InstanceBootDiskInitializeParamsArgs{
/// Image: pulumi.String("debian-cloud/debian-12"),
/// },
/// },
/// NetworkInterfaces: compute.InstanceNetworkInterfaceArray{
/// &compute.InstanceNetworkInterfaceArgs{
/// Network: privateConnection.VpcPeeringConfig.ApplyT(func(vpcPeeringConfig datastream.PrivateConnectionVpcPeeringConfig) (*string, error) {
/// return &vpcPeeringConfig.Vpc, nil
/// }).(pulumi.StringPtrOutput),
/// Subnetwork: defaultSubnetwork.SelfLink,
/// AccessConfigs: compute.InstanceNetworkInterfaceAccessConfigArray{
/// &compute.InstanceNetworkInterfaceAccessConfigArgs{
/// NatIp: natVmIp.Address,
/// },
/// },
/// },
/// },
/// MetadataStartupScript: instance.PublicIpAddress.ApplyT(func(publicIpAddress string) (string, error) {
/// return fmt.Sprintf(`#! /bin/bash
/// # See https://cloud.google.com/datastream/docs/private-connectivity#set-up-reverse-proxy
/// export DB_ADDR=%v
/// export DB_PORT=5432
/// echo 1 > /proc/sys/net/ipv4/ip_forward
/// md_url_prefix=\"http://169.254.169.254/computeMetadata/v1/instance\"
/// vm_nic_ip=\"$(curl -H \"Metadata-Flavor: Google\" ${md_url_prefix}/network-interfaces/0/ip)\"
/// iptables -t nat -F
/// iptables -t nat -A PREROUTING \\
/// -p tcp --dport $DB_PORT \\
/// -j DNAT \\
/// --to-destination $DB_ADDR
/// iptables -t nat -A POSTROUTING \\
/// -p tcp --dport $DB_PORT \\
/// -j SNAT \\
/// --to-source $vm_nic_ip
/// iptables-save
/// `, publicIpAddress), nil
/// }).(pulumi.StringOutput),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = compute.NewFirewall(ctx, "rules", &compute.FirewallArgs{
/// Name: pulumi.String("ingress-rule"),
/// Network: pulumi.String(privateConnection.VpcPeeringConfig.ApplyT(func(vpcPeeringConfig datastream.PrivateConnectionVpcPeeringConfig) (*string, error) {
/// return &vpcPeeringConfig.Vpc, nil
/// }).(pulumi.StringPtrOutput)),
/// Description: pulumi.String("Allow traffic into NAT VM"),
/// Direction:   pulumi.String("INGRESS"),
/// Allows: compute.FirewallAllowArray{
/// &compute.FirewallAllowArgs{
/// Protocol: pulumi.String("tcp"),
/// Ports: pulumi.StringArray{
/// pulumi.String("5432"),
/// },
/// },
/// },
/// SourceRanges: pulumi.StringArray{
/// pulumi.String(privateConnection.VpcPeeringConfig.ApplyT(func(vpcPeeringConfig datastream.PrivateConnectionVpcPeeringConfig) (*string, error) {
/// return &vpcPeeringConfig.Subnet, nil
/// }).(pulumi.StringPtrOutput)),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = datastream.NewConnectionProfile(ctx, "default", &datastream.ConnectionProfileArgs{
/// DisplayName:         pulumi.String("Connection profile"),
/// Location:            pulumi.String("us-central1"),
/// ConnectionProfileId: pulumi.String("my-profile"),
/// PostgresqlProfile: &datastream.ConnectionProfilePostgresqlProfileArgs{
/// Hostname: natVm.NetworkInterfaces.ApplyT(func(networkInterfaces []compute.InstanceNetworkInterface) (*string, error) {
/// return &networkInterfaces[0].NetworkIp, nil
/// }).(pulumi.StringPtrOutput),
/// Username: user.Name,
/// Password: user.Password,
/// Database: db.Name,
/// Port:     pulumi.Int(5432),
/// },
/// PrivateConnectivity: &datastream.ConnectionProfilePrivateConnectivityArgs{
/// PrivateConnection: privateConnection.ID(),
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
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.datastream.PrivateConnection;
/// import com.pulumi.gcp.datastream.PrivateConnectionArgs;
/// import com.pulumi.gcp.datastream.inputs.PrivateConnectionVpcPeeringConfigArgs;
/// import com.pulumi.gcp.compute.Address;
/// import com.pulumi.gcp.compute.AddressArgs;
/// import com.pulumi.gcp.sql.DatabaseInstance;
/// import com.pulumi.gcp.sql.DatabaseInstanceArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsIpConfigurationArgs;
/// import com.pulumi.gcp.sql.Database;
/// import com.pulumi.gcp.sql.DatabaseArgs;
/// import com.pulumi.random.Password;
/// import com.pulumi.random.PasswordArgs;
/// import com.pulumi.gcp.sql.User;
/// import com.pulumi.gcp.sql.UserArgs;
/// import com.pulumi.gcp.compute.Instance;
/// import com.pulumi.gcp.compute.InstanceArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceBootDiskArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceBootDiskInitializeParamsArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceNetworkInterfaceArgs;
/// import com.pulumi.gcp.compute.Firewall;
/// import com.pulumi.gcp.compute.FirewallArgs;
/// import com.pulumi.gcp.compute.inputs.FirewallAllowArgs;
/// import com.pulumi.gcp.datastream.ConnectionProfile;
/// import com.pulumi.gcp.datastream.ConnectionProfileArgs;
/// import com.pulumi.gcp.datastream.inputs.ConnectionProfilePostgresqlProfileArgs;
/// import com.pulumi.gcp.datastream.inputs.ConnectionProfilePrivateConnectivityArgs;
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
/// var default_ = new Network("default", NetworkArgs.builder()
/// .name("my-network")
/// .autoCreateSubnetworks(false)
/// .build());
///
/// var defaultSubnetwork = new Subnetwork("defaultSubnetwork", SubnetworkArgs.builder()
/// .name("my-subnetwork")
/// .ipCidrRange("10.1.0.0/16")
/// .region("us-central1")
/// .network(default_.id())
/// .build());
///
/// var privateConnection = new PrivateConnection("privateConnection", PrivateConnectionArgs.builder()
/// .displayName("Private connection")
/// .location("us-central1")
/// .privateConnectionId("my-connection")
/// .vpcPeeringConfig(PrivateConnectionVpcPeeringConfigArgs.builder()
/// .vpc(default_.id())
/// .subnet("10.0.0.0/29")
/// .build())
/// .build());
///
/// var natVmIp = new Address("natVmIp", AddressArgs.builder()
/// .name("nat-vm-ip")
/// .build());
///
/// var instance = new DatabaseInstance("instance", DatabaseInstanceArgs.builder()
/// .name("my-instance")
/// .databaseVersion("POSTGRES_14")
/// .region("us-central1")
/// .settings(DatabaseInstanceSettingsArgs.builder()
/// .tier("db-f1-micro")
/// .ipConfiguration(DatabaseInstanceSettingsIpConfigurationArgs.builder()
/// .authorizedNetworks(DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs.builder()
/// .value(natVmIp.address())
/// .build())
/// .build())
/// .build())
/// .deletionProtection(true)
/// .build());
///
/// var db = new Database("db", DatabaseArgs.builder()
/// .instance(instance.name())
/// .name("db")
/// .build());
///
/// var pwd = new Password("pwd", PasswordArgs.builder()
/// .length(16)
/// .special(false)
/// .build());
///
/// var user = new User("user", UserArgs.builder()
/// .name("user")
/// .instance(instance.name())
/// .password(pwd.result())
/// .build());
///
/// var natVm = new Instance("natVm", InstanceArgs.builder()
/// .name("nat-vm")
/// .machineType("e2-medium")
/// .zone("us-central1-a")
/// .desiredStatus("RUNNING")
/// .bootDisk(InstanceBootDiskArgs.builder()
/// .initializeParams(InstanceBootDiskInitializeParamsArgs.builder()
/// .image("debian-cloud/debian-12")
/// .build())
/// .build())
/// .networkInterfaces(InstanceNetworkInterfaceArgs.builder()
/// .network(privateConnection.vpcPeeringConfig().applyValue(_vpcPeeringConfig -> _vpcPeeringConfig.vpc()))
/// .subnetwork(defaultSubnetwork.selfLink())
/// .accessConfigs(InstanceNetworkInterfaceAccessConfigArgs.builder()
/// .natIp(natVmIp.address())
/// .build())
/// .build())
/// .metadataStartupScript(instance.publicIpAddress().applyValue(_publicIpAddress -> """
/// #! /bin/bash
/// # See https://cloud.google.com/datastream/docs/private-connectivity#set-up-reverse-proxy
/// export DB_ADDR=%s
/// export DB_PORT=5432
/// echo 1 > /proc/sys/net/ipv4/ip_forward
/// md_url_prefix=\"http://169.254.169.254/computeMetadata/v1/instance\"
/// vm_nic_ip=\"$(curl -H \"Metadata-Flavor: Google\" ${md_url_prefix}/network-interfaces/0/ip)\"
/// iptables -t nat -F
/// iptables -t nat -A PREROUTING \\
/// -p tcp --dport $DB_PORT \\
/// -j DNAT \\
/// --to-destination $DB_ADDR
/// iptables -t nat -A POSTROUTING \\
/// -p tcp --dport $DB_PORT \\
/// -j SNAT \\
/// --to-source $vm_nic_ip
/// iptables-save
/// ", _publicIpAddress)))
/// .build());
///
/// var rules = new Firewall("rules", FirewallArgs.builder()
/// .name("ingress-rule")
/// .network(privateConnection.vpcPeeringConfig().applyValue(_vpcPeeringConfig -> _vpcPeeringConfig.vpc()))
/// .description("Allow traffic into NAT VM")
/// .direction("INGRESS")
/// .allows(FirewallAllowArgs.builder()
/// .protocol("tcp")
/// .ports("5432")
/// .build())
/// .sourceRanges(privateConnection.vpcPeeringConfig().applyValue(_vpcPeeringConfig -> _vpcPeeringConfig.subnet()))
/// .build());
///
/// var defaultConnectionProfile = new ConnectionProfile("defaultConnectionProfile", ConnectionProfileArgs.builder()
/// .displayName("Connection profile")
/// .location("us-central1")
/// .connectionProfileId("my-profile")
/// .postgresqlProfile(ConnectionProfilePostgresqlProfileArgs.builder()
/// .hostname(natVm.networkInterfaces().applyValue(_networkInterfaces -> _networkInterfaces[0].networkIp()))
/// .username(user.name())
/// .password(user.password())
/// .database(db.name())
/// .port(5432)
/// .build())
/// .privateConnectivity(ConnectionProfilePrivateConnectivityArgs.builder()
/// .privateConnection(privateConnection.id())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: gcp:compute:Network
/// properties:
/// name: my-network
/// autoCreateSubnetworks: false
/// defaultSubnetwork:
/// type: gcp:compute:Subnetwork
/// name: default
/// properties:
/// name: my-subnetwork
/// ipCidrRange: 10.1.0.0/16
/// region: us-central1
/// network: ${default.id}
/// privateConnection:
/// type: gcp:datastream:PrivateConnection
/// name: private_connection
/// properties:
/// displayName: Private connection
/// location: us-central1
/// privateConnectionId: my-connection
/// vpcPeeringConfig:
/// vpc: ${default.id}
/// subnet: 10.0.0.0/29
/// instance:
/// type: gcp:sql:DatabaseInstance
/// properties:
/// name: my-instance
/// databaseVersion: POSTGRES_14
/// region: us-central1
/// settings:
/// tier: db-f1-micro
/// ipConfiguration:
/// authorizedNetworks:
/// - value: ${natVmIp.address}
/// deletionProtection: true
/// db:
/// type: gcp:sql:Database
/// properties:
/// instance: ${instance.name}
/// name: db
/// pwd:
/// type: random:Password
/// properties:
/// length: 16
/// special: false
/// user:
/// type: gcp:sql:User
/// properties:
/// name: user
/// instance: ${instance.name}
/// password: ${pwd.result}
/// natVmIp:
/// type: gcp:compute:Address
/// name: nat_vm_ip
/// properties:
/// name: nat-vm-ip
/// natVm:
/// type: gcp:compute:Instance
/// name: nat_vm
/// properties:
/// name: nat-vm
/// machineType: e2-medium
/// zone: us-central1-a
/// desiredStatus: RUNNING
/// bootDisk:
/// initializeParams:
/// image: debian-cloud/debian-12
/// networkInterfaces:
/// - network: ${privateConnection.vpcPeeringConfig.vpc}
/// subnetwork: ${defaultSubnetwork.selfLink}
/// accessConfigs:
/// - natIp: ${natVmIp.address}
/// metadataStartupScript: |
/// #! /bin/bash
/// # See https://cloud.google.com/datastream/docs/private-connectivity#set-up-reverse-proxy
/// export DB_ADDR=${instance.publicIpAddress}
/// export DB_PORT=5432
/// echo 1 > /proc/sys/net/ipv4/ip_forward
/// md_url_prefix=\"http://169.254.169.254/computeMetadata/v1/instance\"
/// vm_nic_ip=\"$(curl -H \"Metadata-Flavor: Google\" $${md_url_prefix}/network-interfaces/0/ip)\"
/// iptables -t nat -F
/// iptables -t nat -A PREROUTING \\
/// -p tcp --dport $DB_PORT \\
/// -j DNAT \\
/// --to-destination $DB_ADDR
/// iptables -t nat -A POSTROUTING \\
/// -p tcp --dport $DB_PORT \\
/// -j SNAT \\
/// --to-source $vm_nic_ip
/// iptables-save
/// rules:
/// type: gcp:compute:Firewall
/// properties:
/// name: ingress-rule
/// network: ${privateConnection.vpcPeeringConfig.vpc}
/// description: Allow traffic into NAT VM
/// direction: INGRESS
/// allows:
/// - protocol: tcp
/// ports:
/// - '5432'
/// sourceRanges:
/// - ${privateConnection.vpcPeeringConfig.subnet}
/// defaultConnectionProfile:
/// type: gcp:datastream:ConnectionProfile
/// name: default
/// properties:
/// displayName: Connection profile
/// location: us-central1
/// connectionProfileId: my-profile
/// postgresqlProfile:
/// hostname: ${natVm.networkInterfaces[0].networkIp}
/// username: ${user.name}
/// password: ${user.password}
/// database: ${db.name}
/// port: 5432
/// privateConnectivity:
/// privateConnection: ${privateConnection.id}
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Datastream Connection Profile Full
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.datastream.ConnectionProfile("default", {
/// displayName: "Connection profile",
/// location: "us-central1",
/// connectionProfileId: "my-profile",
/// gcsProfile: {
/// bucket: "my-bucket",
/// rootPath: "/path",
/// },
/// forwardSshConnectivity: {
/// hostname: "google.com",
/// username: "my-user",
/// port: 8022,
/// password: "swordfish",
/// },
/// labels: {
/// key: "value",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.datastream.ConnectionProfile("default",
/// display_name="Connection profile",
/// location="us-central1",
/// connection_profile_id="my-profile",
/// gcs_profile={
/// "bucket": "my-bucket",
/// "root_path": "/path",
/// },
/// forward_ssh_connectivity={
/// "hostname": "google.com",
/// "username": "my-user",
/// "port": 8022,
/// "password": "swordfish",
/// },
/// labels={
/// "key": "value",
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
/// var @default = new Gcp.Datastream.ConnectionProfile("default", new()
/// {
/// DisplayName = "Connection profile",
/// Location = "us-central1",
/// ConnectionProfileId = "my-profile",
/// GcsProfile = new Gcp.Datastream.Inputs.ConnectionProfileGcsProfileArgs
/// {
/// Bucket = "my-bucket",
/// RootPath = "/path",
/// },
/// ForwardSshConnectivity = new Gcp.Datastream.Inputs.ConnectionProfileForwardSshConnectivityArgs
/// {
/// Hostname = "google.com",
/// Username = "my-user",
/// Port = 8022,
/// Password = "swordfish",
/// },
/// Labels =
/// {
/// { "key", "value" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/datastream"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := datastream.NewConnectionProfile(ctx, "default", &datastream.ConnectionProfileArgs{
/// DisplayName:         pulumi.String("Connection profile"),
/// Location:            pulumi.String("us-central1"),
/// ConnectionProfileId: pulumi.String("my-profile"),
/// GcsProfile: &datastream.ConnectionProfileGcsProfileArgs{
/// Bucket:   pulumi.String("my-bucket"),
/// RootPath: pulumi.String("/path"),
/// },
/// ForwardSshConnectivity: &datastream.ConnectionProfileForwardSshConnectivityArgs{
/// Hostname: pulumi.String("google.com"),
/// Username: pulumi.String("my-user"),
/// Port:     pulumi.Int(8022),
/// Password: pulumi.String("swordfish"),
/// },
/// Labels: pulumi.StringMap{
/// "key": pulumi.String("value"),
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
/// import com.pulumi.gcp.datastream.ConnectionProfile;
/// import com.pulumi.gcp.datastream.ConnectionProfileArgs;
/// import com.pulumi.gcp.datastream.inputs.ConnectionProfileGcsProfileArgs;
/// import com.pulumi.gcp.datastream.inputs.ConnectionProfileForwardSshConnectivityArgs;
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
/// var default_ = new ConnectionProfile("default", ConnectionProfileArgs.builder()
/// .displayName("Connection profile")
/// .location("us-central1")
/// .connectionProfileId("my-profile")
/// .gcsProfile(ConnectionProfileGcsProfileArgs.builder()
/// .bucket("my-bucket")
/// .rootPath("/path")
/// .build())
/// .forwardSshConnectivity(ConnectionProfileForwardSshConnectivityArgs.builder()
/// .hostname("google.com")
/// .username("my-user")
/// .port(8022)
/// .password("swordfish")
/// .build())
/// .labels(Map.of("key", "value"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: gcp:datastream:ConnectionProfile
/// properties:
/// displayName: Connection profile
/// location: us-central1
/// connectionProfileId: my-profile
/// gcsProfile:
/// bucket: my-bucket
/// rootPath: /path
/// forwardSshConnectivity:
/// hostname: google.com
/// username: my-user
/// port: 8022
/// password: swordfish
/// labels:
/// key: value
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Datastream Connection Profile Postgres
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as random from "@pulumi/random";
///
/// const instance = new gcp.sql.DatabaseInstance("instance", {
/// name: "my-instance",
/// databaseVersion: "POSTGRES_14",
/// region: "us-central1",
/// settings: {
/// tier: "db-f1-micro",
/// ipConfiguration: {
/// authorizedNetworks: [
/// {
/// value: "34.71.242.81",
/// },
/// {
/// value: "34.72.28.29",
/// },
/// {
/// value: "34.67.6.157",
/// },
/// {
/// value: "34.67.234.134",
/// },
/// {
/// value: "34.72.239.218",
/// },
/// ],
/// },
/// },
/// deletionProtection: true,
/// });
/// const db = new gcp.sql.Database("db", {
/// instance: instance.name,
/// name: "db",
/// });
/// const pwd = new random.index.Password("pwd", {
/// length: 16,
/// special: false,
/// });
/// const user = new gcp.sql.User("user", {
/// name: "user",
/// instance: instance.name,
/// password: pwd.result,
/// });
/// const _default = new gcp.datastream.ConnectionProfile("default", {
/// displayName: "Connection profile",
/// location: "us-central1",
/// connectionProfileId: "my-profile",
/// postgresqlProfile: {
/// hostname: instance.publicIpAddress,
/// username: user.name,
/// password: user.password,
/// database: db.name,
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_random as random
///
/// instance = gcp.sql.DatabaseInstance("instance",
/// name="my-instance",
/// database_version="POSTGRES_14",
/// region="us-central1",
/// settings={
/// "tier": "db-f1-micro",
/// "ip_configuration": {
/// "authorized_networks": [
/// {
/// "value": "34.71.242.81",
/// },
/// {
/// "value": "34.72.28.29",
/// },
/// {
/// "value": "34.67.6.157",
/// },
/// {
/// "value": "34.67.234.134",
/// },
/// {
/// "value": "34.72.239.218",
/// },
/// ],
/// },
/// },
/// deletion_protection=True)
/// db = gcp.sql.Database("db",
/// instance=instance.name,
/// name="db")
/// pwd = random.index.Password("pwd",
/// length=16,
/// special=False)
/// user = gcp.sql.User("user",
/// name="user",
/// instance=instance.name,
/// password=pwd["result"])
/// default = gcp.datastream.ConnectionProfile("default",
/// display_name="Connection profile",
/// location="us-central1",
/// connection_profile_id="my-profile",
/// postgresql_profile={
/// "hostname": instance.public_ip_address,
/// "username": user.name,
/// "password": user.password,
/// "database": db.name,
/// })
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
/// var instance = new Gcp.Sql.DatabaseInstance("instance", new()
/// {
/// Name = "my-instance",
/// DatabaseVersion = "POSTGRES_14",
/// Region = "us-central1",
/// Settings = new Gcp.Sql.Inputs.DatabaseInstanceSettingsArgs
/// {
/// Tier = "db-f1-micro",
/// IpConfiguration = new Gcp.Sql.Inputs.DatabaseInstanceSettingsIpConfigurationArgs
/// {
/// AuthorizedNetworks = new[]
/// {
/// new Gcp.Sql.Inputs.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs
/// {
/// Value = "34.71.242.81",
/// },
/// new Gcp.Sql.Inputs.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs
/// {
/// Value = "34.72.28.29",
/// },
/// new Gcp.Sql.Inputs.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs
/// {
/// Value = "34.67.6.157",
/// },
/// new Gcp.Sql.Inputs.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs
/// {
/// Value = "34.67.234.134",
/// },
/// new Gcp.Sql.Inputs.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs
/// {
/// Value = "34.72.239.218",
/// },
/// },
/// },
/// },
/// DeletionProtection = true,
/// });
///
/// var db = new Gcp.Sql.Database("db", new()
/// {
/// Instance = instance.Name,
/// Name = "db",
/// });
///
/// var pwd = new Random.Index.Password("pwd", new()
/// {
/// Length = 16,
/// Special = false,
/// });
///
/// var user = new Gcp.Sql.User("user", new()
/// {
/// Name = "user",
/// Instance = instance.Name,
/// Password = pwd.Result,
/// });
///
/// var @default = new Gcp.Datastream.ConnectionProfile("default", new()
/// {
/// DisplayName = "Connection profile",
/// Location = "us-central1",
/// ConnectionProfileId = "my-profile",
/// PostgresqlProfile = new Gcp.Datastream.Inputs.ConnectionProfilePostgresqlProfileArgs
/// {
/// Hostname = instance.PublicIpAddress,
/// Username = user.Name,
/// Password = user.Password,
/// Database = db.Name,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/datastream"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/sql"
/// "github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// instance, err := sql.NewDatabaseInstance(ctx, "instance", &sql.DatabaseInstanceArgs{
/// Name:            pulumi.String("my-instance"),
/// DatabaseVersion: pulumi.String("POSTGRES_14"),
/// Region:          pulumi.String("us-central1"),
/// Settings: &sql.DatabaseInstanceSettingsArgs{
/// Tier: pulumi.String("db-f1-micro"),
/// IpConfiguration: &sql.DatabaseInstanceSettingsIpConfigurationArgs{
/// AuthorizedNetworks: sql.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArray{
/// &sql.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs{
/// Value: pulumi.String("34.71.242.81"),
/// },
/// &sql.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs{
/// Value: pulumi.String("34.72.28.29"),
/// },
/// &sql.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs{
/// Value: pulumi.String("34.67.6.157"),
/// },
/// &sql.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs{
/// Value: pulumi.String("34.67.234.134"),
/// },
/// &sql.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs{
/// Value: pulumi.String("34.72.239.218"),
/// },
/// },
/// },
/// },
/// DeletionProtection: pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// db, err := sql.NewDatabase(ctx, "db", &sql.DatabaseArgs{
/// Instance: instance.Name,
/// Name:     pulumi.String("db"),
/// })
/// if err != nil {
/// return err
/// }
/// pwd, err := random.NewPassword(ctx, "pwd", &random.PasswordArgs{
/// Length:  16,
/// Special: false,
/// })
/// if err != nil {
/// return err
/// }
/// user, err := sql.NewUser(ctx, "user", &sql.UserArgs{
/// Name:     pulumi.String("user"),
/// Instance: instance.Name,
/// Password: pwd.Result,
/// })
/// if err != nil {
/// return err
/// }
/// _, err = datastream.NewConnectionProfile(ctx, "default", &datastream.ConnectionProfileArgs{
/// DisplayName:         pulumi.String("Connection profile"),
/// Location:            pulumi.String("us-central1"),
/// ConnectionProfileId: pulumi.String("my-profile"),
/// PostgresqlProfile: &datastream.ConnectionProfilePostgresqlProfileArgs{
/// Hostname: instance.PublicIpAddress,
/// Username: user.Name,
/// Password: user.Password,
/// Database: db.Name,
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
/// import com.pulumi.gcp.sql.Database;
/// import com.pulumi.gcp.sql.DatabaseArgs;
/// import com.pulumi.random.Password;
/// import com.pulumi.random.PasswordArgs;
/// import com.pulumi.gcp.sql.User;
/// import com.pulumi.gcp.sql.UserArgs;
/// import com.pulumi.gcp.datastream.ConnectionProfile;
/// import com.pulumi.gcp.datastream.ConnectionProfileArgs;
/// import com.pulumi.gcp.datastream.inputs.ConnectionProfilePostgresqlProfileArgs;
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
/// .name("my-instance")
/// .databaseVersion("POSTGRES_14")
/// .region("us-central1")
/// .settings(DatabaseInstanceSettingsArgs.builder()
/// .tier("db-f1-micro")
/// .ipConfiguration(DatabaseInstanceSettingsIpConfigurationArgs.builder()
/// .authorizedNetworks(
/// DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs.builder()
/// .value("34.71.242.81")
/// .build(),
/// DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs.builder()
/// .value("34.72.28.29")
/// .build(),
/// DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs.builder()
/// .value("34.67.6.157")
/// .build(),
/// DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs.builder()
/// .value("34.67.234.134")
/// .build(),
/// DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs.builder()
/// .value("34.72.239.218")
/// .build())
/// .build())
/// .build())
/// .deletionProtection(true)
/// .build());
///
/// var db = new Database("db", DatabaseArgs.builder()
/// .instance(instance.name())
/// .name("db")
/// .build());
///
/// var pwd = new Password("pwd", PasswordArgs.builder()
/// .length(16)
/// .special(false)
/// .build());
///
/// var user = new User("user", UserArgs.builder()
/// .name("user")
/// .instance(instance.name())
/// .password(pwd.result())
/// .build());
///
/// var default_ = new ConnectionProfile("default", ConnectionProfileArgs.builder()
/// .displayName("Connection profile")
/// .location("us-central1")
/// .connectionProfileId("my-profile")
/// .postgresqlProfile(ConnectionProfilePostgresqlProfileArgs.builder()
/// .hostname(instance.publicIpAddress())
/// .username(user.name())
/// .password(user.password())
/// .database(db.name())
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
/// name: my-instance
/// databaseVersion: POSTGRES_14
/// region: us-central1
/// settings:
/// tier: db-f1-micro
/// ipConfiguration:
/// authorizedNetworks:
/// - value: 34.71.242.81
/// - value: 34.72.28.29
/// - value: 34.67.6.157
/// - value: 34.67.234.134
/// - value: 34.72.239.218
/// deletionProtection: true
/// db:
/// type: gcp:sql:Database
/// properties:
/// instance: ${instance.name}
/// name: db
/// pwd:
/// type: random:Password
/// properties:
/// length: 16
/// special: false
/// user:
/// type: gcp:sql:User
/// properties:
/// name: user
/// instance: ${instance.name}
/// password: ${pwd.result}
/// default:
/// type: gcp:datastream:ConnectionProfile
/// properties:
/// displayName: Connection profile
/// location: us-central1
/// connectionProfileId: my-profile
/// postgresqlProfile:
/// hostname: ${instance.publicIpAddress}
/// username: ${user.name}
/// password: ${user.password}
/// database: ${db.name}
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Datastream Connection Profile Sql Server
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const instance = new gcp.sql.DatabaseInstance("instance", {
/// name: "sql-server",
/// databaseVersion: "SQLSERVER_2019_STANDARD",
/// region: "us-central1",
/// rootPassword: "root-password",
/// deletionProtection: true,
/// settings: {
/// tier: "db-custom-2-4096",
/// ipConfiguration: {
/// authorizedNetworks: [
/// {
/// value: "34.71.242.81",
/// },
/// {
/// value: "34.72.28.29",
/// },
/// {
/// value: "34.67.6.157",
/// },
/// {
/// value: "34.67.234.134",
/// },
/// {
/// value: "34.72.239.218",
/// },
/// ],
/// },
/// },
/// });
/// const db = new gcp.sql.Database("db", {
/// name: "db",
/// instance: instance.name,
/// });
/// const user = new gcp.sql.User("user", {
/// name: "user",
/// instance: instance.name,
/// password: "password",
/// });
/// const _default = new gcp.datastream.ConnectionProfile("default", {
/// displayName: "SQL Server Source",
/// location: "us-central1",
/// connectionProfileId: "source-profile",
/// sqlServerProfile: {
/// hostname: instance.publicIpAddress,
/// port: 1433,
/// username: user.name,
/// password: user.password,
/// database: db.name,
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// instance = gcp.sql.DatabaseInstance("instance",
/// name="sql-server",
/// database_version="SQLSERVER_2019_STANDARD",
/// region="us-central1",
/// root_password="root-password",
/// deletion_protection=True,
/// settings={
/// "tier": "db-custom-2-4096",
/// "ip_configuration": {
/// "authorized_networks": [
/// {
/// "value": "34.71.242.81",
/// },
/// {
/// "value": "34.72.28.29",
/// },
/// {
/// "value": "34.67.6.157",
/// },
/// {
/// "value": "34.67.234.134",
/// },
/// {
/// "value": "34.72.239.218",
/// },
/// ],
/// },
/// })
/// db = gcp.sql.Database("db",
/// name="db",
/// instance=instance.name)
/// user = gcp.sql.User("user",
/// name="user",
/// instance=instance.name,
/// password="password")
/// default = gcp.datastream.ConnectionProfile("default",
/// display_name="SQL Server Source",
/// location="us-central1",
/// connection_profile_id="source-profile",
/// sql_server_profile={
/// "hostname": instance.public_ip_address,
/// "port": 1433,
/// "username": user.name,
/// "password": user.password,
/// "database": db.name,
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
/// Name = "sql-server",
/// DatabaseVersion = "SQLSERVER_2019_STANDARD",
/// Region = "us-central1",
/// RootPassword = "root-password",
/// DeletionProtection = true,
/// Settings = new Gcp.Sql.Inputs.DatabaseInstanceSettingsArgs
/// {
/// Tier = "db-custom-2-4096",
/// IpConfiguration = new Gcp.Sql.Inputs.DatabaseInstanceSettingsIpConfigurationArgs
/// {
/// AuthorizedNetworks = new[]
/// {
/// new Gcp.Sql.Inputs.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs
/// {
/// Value = "34.71.242.81",
/// },
/// new Gcp.Sql.Inputs.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs
/// {
/// Value = "34.72.28.29",
/// },
/// new Gcp.Sql.Inputs.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs
/// {
/// Value = "34.67.6.157",
/// },
/// new Gcp.Sql.Inputs.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs
/// {
/// Value = "34.67.234.134",
/// },
/// new Gcp.Sql.Inputs.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs
/// {
/// Value = "34.72.239.218",
/// },
/// },
/// },
/// },
/// });
///
/// var db = new Gcp.Sql.Database("db", new()
/// {
/// Name = "db",
/// Instance = instance.Name,
/// });
///
/// var user = new Gcp.Sql.User("user", new()
/// {
/// Name = "user",
/// Instance = instance.Name,
/// Password = "password",
/// });
///
/// var @default = new Gcp.Datastream.ConnectionProfile("default", new()
/// {
/// DisplayName = "SQL Server Source",
/// Location = "us-central1",
/// ConnectionProfileId = "source-profile",
/// SqlServerProfile = new Gcp.Datastream.Inputs.ConnectionProfileSqlServerProfileArgs
/// {
/// Hostname = instance.PublicIpAddress,
/// Port = 1433,
/// Username = user.Name,
/// Password = user.Password,
/// Database = db.Name,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/datastream"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/sql"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// instance, err := sql.NewDatabaseInstance(ctx, "instance", &sql.DatabaseInstanceArgs{
/// Name:               pulumi.String("sql-server"),
/// DatabaseVersion:    pulumi.String("SQLSERVER_2019_STANDARD"),
/// Region:             pulumi.String("us-central1"),
/// RootPassword:       pulumi.String("root-password"),
/// DeletionProtection: pulumi.Bool(true),
/// Settings: &sql.DatabaseInstanceSettingsArgs{
/// Tier: pulumi.String("db-custom-2-4096"),
/// IpConfiguration: &sql.DatabaseInstanceSettingsIpConfigurationArgs{
/// AuthorizedNetworks: sql.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArray{
/// &sql.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs{
/// Value: pulumi.String("34.71.242.81"),
/// },
/// &sql.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs{
/// Value: pulumi.String("34.72.28.29"),
/// },
/// &sql.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs{
/// Value: pulumi.String("34.67.6.157"),
/// },
/// &sql.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs{
/// Value: pulumi.String("34.67.234.134"),
/// },
/// &sql.DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs{
/// Value: pulumi.String("34.72.239.218"),
/// },
/// },
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// db, err := sql.NewDatabase(ctx, "db", &sql.DatabaseArgs{
/// Name:     pulumi.String("db"),
/// Instance: instance.Name,
/// })
/// if err != nil {
/// return err
/// }
/// user, err := sql.NewUser(ctx, "user", &sql.UserArgs{
/// Name:     pulumi.String("user"),
/// Instance: instance.Name,
/// Password: pulumi.String("password"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = datastream.NewConnectionProfile(ctx, "default", &datastream.ConnectionProfileArgs{
/// DisplayName:         pulumi.String("SQL Server Source"),
/// Location:            pulumi.String("us-central1"),
/// ConnectionProfileId: pulumi.String("source-profile"),
/// SqlServerProfile: &datastream.ConnectionProfileSqlServerProfileArgs{
/// Hostname: instance.PublicIpAddress,
/// Port:     pulumi.Int(1433),
/// Username: user.Name,
/// Password: user.Password,
/// Database: db.Name,
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
/// import com.pulumi.gcp.sql.Database;
/// import com.pulumi.gcp.sql.DatabaseArgs;
/// import com.pulumi.gcp.sql.User;
/// import com.pulumi.gcp.sql.UserArgs;
/// import com.pulumi.gcp.datastream.ConnectionProfile;
/// import com.pulumi.gcp.datastream.ConnectionProfileArgs;
/// import com.pulumi.gcp.datastream.inputs.ConnectionProfileSqlServerProfileArgs;
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
/// .name("sql-server")
/// .databaseVersion("SQLSERVER_2019_STANDARD")
/// .region("us-central1")
/// .rootPassword("root-password")
/// .deletionProtection(true)
/// .settings(DatabaseInstanceSettingsArgs.builder()
/// .tier("db-custom-2-4096")
/// .ipConfiguration(DatabaseInstanceSettingsIpConfigurationArgs.builder()
/// .authorizedNetworks(
/// DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs.builder()
/// .value("34.71.242.81")
/// .build(),
/// DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs.builder()
/// .value("34.72.28.29")
/// .build(),
/// DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs.builder()
/// .value("34.67.6.157")
/// .build(),
/// DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs.builder()
/// .value("34.67.234.134")
/// .build(),
/// DatabaseInstanceSettingsIpConfigurationAuthorizedNetworkArgs.builder()
/// .value("34.72.239.218")
/// .build())
/// .build())
/// .build())
/// .build());
///
/// var db = new Database("db", DatabaseArgs.builder()
/// .name("db")
/// .instance(instance.name())
/// .build());
///
/// var user = new User("user", UserArgs.builder()
/// .name("user")
/// .instance(instance.name())
/// .password("password")
/// .build());
///
/// var default_ = new ConnectionProfile("default", ConnectionProfileArgs.builder()
/// .displayName("SQL Server Source")
/// .location("us-central1")
/// .connectionProfileId("source-profile")
/// .sqlServerProfile(ConnectionProfileSqlServerProfileArgs.builder()
/// .hostname(instance.publicIpAddress())
/// .port(1433)
/// .username(user.name())
/// .password(user.password())
/// .database(db.name())
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
/// name: sql-server
/// databaseVersion: SQLSERVER_2019_STANDARD
/// region: us-central1
/// rootPassword: root-password
/// deletionProtection: true
/// settings:
/// tier: db-custom-2-4096
/// ipConfiguration:
/// authorizedNetworks:
/// - value: 34.71.242.81
/// - value: 34.72.28.29
/// - value: 34.67.6.157
/// - value: 34.67.234.134
/// - value: 34.72.239.218
/// db:
/// type: gcp:sql:Database
/// properties:
/// name: db
/// instance: ${instance.name}
/// user:
/// type: gcp:sql:User
/// properties:
/// name: user
/// instance: ${instance.name}
/// password: password
/// default:
/// type: gcp:datastream:ConnectionProfile
/// properties:
/// displayName: SQL Server Source
/// location: us-central1
/// connectionProfileId: source-profile
/// sqlServerProfile:
/// hostname: ${instance.publicIpAddress}
/// port: 1433
/// username: ${user.name}
/// password: ${user.password}
/// database: ${db.name}
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Datastream Stream Postgresql Sslconfig Server And Client Verification
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as random from "@pulumi/random";
/// import * as std from "@pulumi/std";
///
/// const datastreamIps = gcp.datastream.getStaticIps({
/// location: "us-central1",
/// });
/// const instance = new gcp.sql.DatabaseInstance("instance", {
/// name: "my-instance",
/// databaseVersion: "POSTGRES_15",
/// region: "us-central1",
/// settings: {
/// tier: "db-f1-micro",
/// ipConfiguration: {
/// authorizedNetworks: std.format({
/// input: "datastream-%d",
/// args: [entry.key],
/// }).then(invoke => .map(entry => ({
/// name: invoke.result,
/// value: entry.value,
/// }))),
/// ipv4Enabled: true,
/// sslMode: "TRUSTED_CLIENT_CERTIFICATE_REQUIRED",
/// },
/// },
/// deletionProtection: true,
/// });
/// const db = new gcp.sql.Database("db", {
/// instance: instance.name,
/// name: "db",
/// });
/// const pwd = new random.index.Password("pwd", {
/// length: 16,
/// special: false,
/// });
/// const user = new gcp.sql.User("user", {
/// name: "user",
/// instance: instance.name,
/// password: pwd.result,
/// });
/// const clientCert = new gcp.sql.SslCert("client_cert", {
/// commonName: "client-name",
/// instance: instance.name,
/// });
/// const _default = new gcp.datastream.ConnectionProfile("default", {
/// displayName: "Connection Profile",
/// location: "us-central1",
/// connectionProfileId: "profile-id",
/// postgresqlProfile: {
/// hostname: instance.publicIpAddress,
/// port: 5432,
/// username: "user",
/// password: pwd.result,
/// database: db.name,
/// sslConfig: {
/// serverAndClientVerification: {
/// clientCertificate: clientCert.cert,
/// clientKey: clientCert.privateKey,
/// caCertificate: clientCert.serverCaCert,
/// },
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_random as random
/// import pulumi_std as std
///
/// datastream_ips = gcp.datastream.get_static_ips(location="us-central1")
/// instance = gcp.sql.DatabaseInstance("instance",
/// name="my-instance",
/// database_version="POSTGRES_15",
/// region="us-central1",
/// settings={
/// "tier": "db-f1-micro",
/// "ip_configuration": {
/// "authorized_networks": [{"key": k, "value": v} for k, v in datastream_ips.static_ips].apply(lambda entries: [{
/// "name": std.format(input="datastream-%d",
/// args=[entry["key"]]).result,
/// "value": entry["value"],
/// } for entry in entries]),
/// "ipv4_enabled": True,
/// "ssl_mode": "TRUSTED_CLIENT_CERTIFICATE_REQUIRED",
/// },
/// },
/// deletion_protection=True)
/// db = gcp.sql.Database("db",
/// instance=instance.name,
/// name="db")
/// pwd = random.index.Password("pwd",
/// length=16,
/// special=False)
/// user = gcp.sql.User("user",
/// name="user",
/// instance=instance.name,
/// password=pwd["result"])
/// client_cert = gcp.sql.SslCert("client_cert",
/// common_name="client-name",
/// instance=instance.name)
/// default = gcp.datastream.ConnectionProfile("default",
/// display_name="Connection Profile",
/// location="us-central1",
/// connection_profile_id="profile-id",
/// postgresql_profile={
/// "hostname": instance.public_ip_address,
/// "port": 5432,
/// "username": "user",
/// "password": pwd["result"],
/// "database": db.name,
/// "ssl_config": {
/// "server_and_client_verification": {
/// "client_certificate": client_cert.cert,
/// "client_key": client_cert.private_key,
/// "ca_certificate": client_cert.server_ca_cert,
/// },
/// },
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Random = Pulumi.Random;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var datastreamIps = Gcp.Datastream.GetStaticIps.Invoke(new()
/// {
/// Location = "us-central1",
/// });
///
/// var instance = new Gcp.Sql.DatabaseInstance("instance", new()
/// {
/// Name = "my-instance",
/// DatabaseVersion = "POSTGRES_15",
/// Region = "us-central1",
/// Settings = new Gcp.Sql.Inputs.DatabaseInstanceSettingsArgs
/// {
/// Tier = "db-f1-micro",
/// IpConfiguration = new Gcp.Sql.Inputs.DatabaseInstanceSettingsIpConfigurationArgs
/// {
/// AuthorizedNetworks = Std.Format.Invoke(new()
/// {
/// Input = "datastream-%d",
/// Args = new[]
/// {
/// entry.Key,
/// },
/// }).Apply(invoke => ),
/// Ipv4Enabled = true,
/// SslMode = "TRUSTED_CLIENT_CERTIFICATE_REQUIRED",
/// },
/// },
/// DeletionProtection = true,
/// });
///
/// var db = new Gcp.Sql.Database("db", new()
/// {
/// Instance = instance.Name,
/// Name = "db",
/// });
///
/// var pwd = new Random.Index.Password("pwd", new()
/// {
/// Length = 16,
/// Special = false,
/// });
///
/// var user = new Gcp.Sql.User("user", new()
/// {
/// Name = "user",
/// Instance = instance.Name,
/// Password = pwd.Result,
/// });
///
/// var clientCert = new Gcp.Sql.SslCert("client_cert", new()
/// {
/// CommonName = "client-name",
/// Instance = instance.Name,
/// });
///
/// var @default = new Gcp.Datastream.ConnectionProfile("default", new()
/// {
/// DisplayName = "Connection Profile",
/// Location = "us-central1",
/// ConnectionProfileId = "profile-id",
/// PostgresqlProfile = new Gcp.Datastream.Inputs.ConnectionProfilePostgresqlProfileArgs
/// {
/// Hostname = instance.PublicIpAddress,
/// Port = 5432,
/// Username = "user",
/// Password = pwd.Result,
/// Database = db.Name,
/// SslConfig = new Gcp.Datastream.Inputs.ConnectionProfilePostgresqlProfileSslConfigArgs
/// {
/// ServerAndClientVerification = new Gcp.Datastream.Inputs.ConnectionProfilePostgresqlProfileSslConfigServerAndClientVerificationArgs
/// {
/// ClientCertificate = clientCert.Cert,
/// ClientKey = clientCert.PrivateKey,
/// CaCertificate = clientCert.ServerCaCert,
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Datastream Connection Profile Salesforce
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.datastream.ConnectionProfile("default", {
/// displayName: "Salesforce Source",
/// location: "us-central1",
/// connectionProfileId: "source-profile",
/// createWithoutValidation: true,
/// salesforceProfile: {
/// domain: "fake-domain.my.salesforce.com",
/// userCredentials: {
/// username: "fake-username",
/// secretManagerStoredPassword: "fake-password",
/// secretManagerStoredSecurityToken: "fake-token",
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.datastream.ConnectionProfile("default",
/// display_name="Salesforce Source",
/// location="us-central1",
/// connection_profile_id="source-profile",
/// create_without_validation=True,
/// salesforce_profile={
/// "domain": "fake-domain.my.salesforce.com",
/// "user_credentials": {
/// "username": "fake-username",
/// "secret_manager_stored_password": "fake-password",
/// "secret_manager_stored_security_token": "fake-token",
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
/// var @default = new Gcp.Datastream.ConnectionProfile("default", new()
/// {
/// DisplayName = "Salesforce Source",
/// Location = "us-central1",
/// ConnectionProfileId = "source-profile",
/// CreateWithoutValidation = true,
/// SalesforceProfile = new Gcp.Datastream.Inputs.ConnectionProfileSalesforceProfileArgs
/// {
/// Domain = "fake-domain.my.salesforce.com",
/// UserCredentials = new Gcp.Datastream.Inputs.ConnectionProfileSalesforceProfileUserCredentialsArgs
/// {
/// Username = "fake-username",
/// SecretManagerStoredPassword = "fake-password",
/// SecretManagerStoredSecurityToken = "fake-token",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/datastream"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := datastream.NewConnectionProfile(ctx, "default", &datastream.ConnectionProfileArgs{
/// DisplayName:             pulumi.String("Salesforce Source"),
/// Location:                pulumi.String("us-central1"),
/// ConnectionProfileId:     pulumi.String("source-profile"),
/// CreateWithoutValidation: pulumi.Bool(true),
/// SalesforceProfile: &datastream.ConnectionProfileSalesforceProfileArgs{
/// Domain: pulumi.String("fake-domain.my.salesforce.com"),
/// UserCredentials: &datastream.ConnectionProfileSalesforceProfileUserCredentialsArgs{
/// Username:                         pulumi.String("fake-username"),
/// SecretManagerStoredPassword:      pulumi.String("fake-password"),
/// SecretManagerStoredSecurityToken: pulumi.String("fake-token"),
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
/// import com.pulumi.gcp.datastream.ConnectionProfile;
/// import com.pulumi.gcp.datastream.ConnectionProfileArgs;
/// import com.pulumi.gcp.datastream.inputs.ConnectionProfileSalesforceProfileArgs;
/// import com.pulumi.gcp.datastream.inputs.ConnectionProfileSalesforceProfileUserCredentialsArgs;
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
/// var default_ = new ConnectionProfile("default", ConnectionProfileArgs.builder()
/// .displayName("Salesforce Source")
/// .location("us-central1")
/// .connectionProfileId("source-profile")
/// .createWithoutValidation(true)
/// .salesforceProfile(ConnectionProfileSalesforceProfileArgs.builder()
/// .domain("fake-domain.my.salesforce.com")
/// .userCredentials(ConnectionProfileSalesforceProfileUserCredentialsArgs.builder()
/// .username("fake-username")
/// .secretManagerStoredPassword("fake-password")
/// .secretManagerStoredSecurityToken("fake-token")
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: gcp:datastream:ConnectionProfile
/// properties:
/// displayName: Salesforce Source
/// location: us-central1
/// connectionProfileId: source-profile
/// createWithoutValidation: true
/// salesforceProfile:
/// domain: fake-domain.my.salesforce.com
/// userCredentials:
/// username: fake-username
/// secretManagerStoredPassword: fake-password
/// secretManagerStoredSecurityToken: fake-token
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Datastream Connection Profile Spanner
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.datastream.ConnectionProfile("default", {
/// displayName: "Spanner Source",
/// location: "us-central1",
/// connectionProfileId: "source-profile",
/// createWithoutValidation: true,
/// spannerProfile: {
/// database: "projects/example-project/instances/example-instance/databases/example-database",
/// host: "https://spanner.example-region.rep.googleapis.com",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.datastream.ConnectionProfile("default",
/// display_name="Spanner Source",
/// location="us-central1",
/// connection_profile_id="source-profile",
/// create_without_validation=True,
/// spanner_profile={
/// "database": "projects/example-project/instances/example-instance/databases/example-database",
/// "host": "https://spanner.example-region.rep.googleapis.com",
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
/// var @default = new Gcp.Datastream.ConnectionProfile("default", new()
/// {
/// DisplayName = "Spanner Source",
/// Location = "us-central1",
/// ConnectionProfileId = "source-profile",
/// CreateWithoutValidation = true,
/// SpannerProfile = new Gcp.Datastream.Inputs.ConnectionProfileSpannerProfileArgs
/// {
/// Database = "projects/example-project/instances/example-instance/databases/example-database",
/// Host = "https://spanner.example-region.rep.googleapis.com",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/datastream"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := datastream.NewConnectionProfile(ctx, "default", &datastream.ConnectionProfileArgs{
/// DisplayName:             pulumi.String("Spanner Source"),
/// Location:                pulumi.String("us-central1"),
/// ConnectionProfileId:     pulumi.String("source-profile"),
/// CreateWithoutValidation: pulumi.Bool(true),
/// SpannerProfile: &datastream.ConnectionProfileSpannerProfileArgs{
/// Database: pulumi.String("projects/example-project/instances/example-instance/databases/example-database"),
/// Host:     pulumi.String("https://spanner.example-region.rep.googleapis.com"),
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
/// import com.pulumi.gcp.datastream.ConnectionProfile;
/// import com.pulumi.gcp.datastream.ConnectionProfileArgs;
/// import com.pulumi.gcp.datastream.inputs.ConnectionProfileSpannerProfileArgs;
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
/// var default_ = new ConnectionProfile("default", ConnectionProfileArgs.builder()
/// .displayName("Spanner Source")
/// .location("us-central1")
/// .connectionProfileId("source-profile")
/// .createWithoutValidation(true)
/// .spannerProfile(ConnectionProfileSpannerProfileArgs.builder()
/// .database("projects/example-project/instances/example-instance/databases/example-database")
/// .host("https://spanner.example-region.rep.googleapis.com")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: gcp:datastream:ConnectionProfile
/// properties:
/// displayName: Spanner Source
/// location: us-central1
/// connectionProfileId: source-profile
/// createWithoutValidation: true
/// spannerProfile:
/// database: projects/example-project/instances/example-instance/databases/example-database
/// host: https://spanner.example-region.rep.googleapis.com
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Datastream Connection Profile Postgres Secret Manager
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.datastream.ConnectionProfile("default", {
/// displayName: "Postgres Source With Secret Manager",
/// location: "us-central1",
/// connectionProfileId: "source-profile",
/// createWithoutValidation: true,
/// postgresqlProfile: {
/// hostname: "fake-hostname",
/// port: 3306,
/// username: "fake-username",
/// secretManagerStoredPassword: "projects/fake-project/secrets/fake-secret/versions/1",
/// database: "fake-database",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.datastream.ConnectionProfile("default",
/// display_name="Postgres Source With Secret Manager",
/// location="us-central1",
/// connection_profile_id="source-profile",
/// create_without_validation=True,
/// postgresql_profile={
/// "hostname": "fake-hostname",
/// "port": 3306,
/// "username": "fake-username",
/// "secret_manager_stored_password": "projects/fake-project/secrets/fake-secret/versions/1",
/// "database": "fake-database",
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
/// var @default = new Gcp.Datastream.ConnectionProfile("default", new()
/// {
/// DisplayName = "Postgres Source With Secret Manager",
/// Location = "us-central1",
/// ConnectionProfileId = "source-profile",
/// CreateWithoutValidation = true,
/// PostgresqlProfile = new Gcp.Datastream.Inputs.ConnectionProfilePostgresqlProfileArgs
/// {
/// Hostname = "fake-hostname",
/// Port = 3306,
/// Username = "fake-username",
/// SecretManagerStoredPassword = "projects/fake-project/secrets/fake-secret/versions/1",
/// Database = "fake-database",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/datastream"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := datastream.NewConnectionProfile(ctx, "default", &datastream.ConnectionProfileArgs{
/// DisplayName:             pulumi.String("Postgres Source With Secret Manager"),
/// Location:                pulumi.String("us-central1"),
/// ConnectionProfileId:     pulumi.String("source-profile"),
/// CreateWithoutValidation: pulumi.Bool(true),
/// PostgresqlProfile: &datastream.ConnectionProfilePostgresqlProfileArgs{
/// Hostname:                    pulumi.String("fake-hostname"),
/// Port:                        pulumi.Int(3306),
/// Username:                    pulumi.String("fake-username"),
/// SecretManagerStoredPassword: pulumi.String("projects/fake-project/secrets/fake-secret/versions/1"),
/// Database:                    pulumi.String("fake-database"),
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
/// import com.pulumi.gcp.datastream.ConnectionProfile;
/// import com.pulumi.gcp.datastream.ConnectionProfileArgs;
/// import com.pulumi.gcp.datastream.inputs.ConnectionProfilePostgresqlProfileArgs;
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
/// var default_ = new ConnectionProfile("default", ConnectionProfileArgs.builder()
/// .displayName("Postgres Source With Secret Manager")
/// .location("us-central1")
/// .connectionProfileId("source-profile")
/// .createWithoutValidation(true)
/// .postgresqlProfile(ConnectionProfilePostgresqlProfileArgs.builder()
/// .hostname("fake-hostname")
/// .port(3306)
/// .username("fake-username")
/// .secretManagerStoredPassword("projects/fake-project/secrets/fake-secret/versions/1")
/// .database("fake-database")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: gcp:datastream:ConnectionProfile
/// properties:
/// displayName: Postgres Source With Secret Manager
/// location: us-central1
/// connectionProfileId: source-profile
/// createWithoutValidation: true
/// postgresqlProfile:
/// hostname: fake-hostname
/// port: 3306
/// username: fake-username
/// secretManagerStoredPassword: projects/fake-project/secrets/fake-secret/versions/1
/// database: fake-database
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Datastream Connection Profile Mongodb
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.datastream.ConnectionProfile("default", {
/// displayName: "Mongodb Source",
/// location: "us-central1",
/// connectionProfileId: "source-profile",
/// mongodbProfile: {
/// hostAddresses: [{
/// hostname: "mongodb-primary.example.com",
/// port: 27017,
/// }],
/// replicaSet: "myReplicaSet",
/// username: "mongoUser",
/// password: "mongoPassword",
/// database: "myDatabase",
/// standardConnectionFormat: {}[0],
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.datastream.ConnectionProfile("default",
/// display_name="Mongodb Source",
/// location="us-central1",
/// connection_profile_id="source-profile",
/// mongodb_profile={
/// "host_addresses": [{
/// "hostname": "mongodb-primary.example.com",
/// "port": 27017,
/// }],
/// "replica_set": "myReplicaSet",
/// "username": "mongoUser",
/// "password": "mongoPassword",
/// "database": "myDatabase",
/// "standard_connection_format": {}[0],
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
/// var @default = new Gcp.Datastream.ConnectionProfile("default", new()
/// {
/// DisplayName = "Mongodb Source",
/// Location = "us-central1",
/// ConnectionProfileId = "source-profile",
/// MongodbProfile = new Gcp.Datastream.Inputs.ConnectionProfileMongodbProfileArgs
/// {
/// HostAddresses = new[]
/// {
/// new Gcp.Datastream.Inputs.ConnectionProfileMongodbProfileHostAddressArgs
/// {
/// Hostname = "mongodb-primary.example.com",
/// Port = 27017,
/// },
/// },
/// ReplicaSet = "myReplicaSet",
/// Username = "mongoUser",
/// Password = "mongoPassword",
/// Database = "myDatabase",
/// StandardConnectionFormat = null[0],
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/datastream"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := datastream.NewConnectionProfile(ctx, "default", &datastream.ConnectionProfileArgs{
/// DisplayName:         pulumi.String("Mongodb Source"),
/// Location:            pulumi.String("us-central1"),
/// ConnectionProfileId: pulumi.String("source-profile"),
/// MongodbProfile: &datastream.ConnectionProfileMongodbProfileArgs{
/// HostAddresses: datastream.ConnectionProfileMongodbProfileHostAddressArray{
/// &datastream.ConnectionProfileMongodbProfileHostAddressArgs{
/// Hostname: pulumi.String("mongodb-primary.example.com"),
/// Port:     pulumi.Int(27017),
/// },
/// },
/// ReplicaSet:               pulumi.String("myReplicaSet"),
/// Username:                 pulumi.String("mongoUser"),
/// Password:                 pulumi.String("mongoPassword"),
/// Database:                 "myDatabase",
/// StandardConnectionFormat: map[string]interface{}{}[0],
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
/// import com.pulumi.gcp.datastream.ConnectionProfile;
/// import com.pulumi.gcp.datastream.ConnectionProfileArgs;
/// import com.pulumi.gcp.datastream.inputs.ConnectionProfileMongodbProfileArgs;
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
/// var default_ = new ConnectionProfile("default", ConnectionProfileArgs.builder()
/// .displayName("Mongodb Source")
/// .location("us-central1")
/// .connectionProfileId("source-profile")
/// .mongodbProfile(ConnectionProfileMongodbProfileArgs.builder()
/// .hostAddresses(ConnectionProfileMongodbProfileHostAddressArgs.builder()
/// .hostname("mongodb-primary.example.com")
/// .port(27017)
/// .build())
/// .replicaSet("myReplicaSet")
/// .username("mongoUser")
/// .password("mongoPassword")
/// .database("myDatabase")
/// .standardConnectionFormat(ConnectionProfileMongodbProfileStandardConnectionFormatArgs.builder()
/// .build()[0])
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ConnectionProfile can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/connectionProfiles/{{connection_profile_id}}`
///
/// * `{{project}}/{{location}}/{{connection_profile_id}}`
///
/// * `{{location}}/{{connection_profile_id}}`
///
/// When using the `pulumi import` command, ConnectionProfile can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:datastream/connectionProfile:ConnectionProfile default projects/{{project}}/locations/{{location}}/connectionProfiles/{{connection_profile_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:datastream/connectionProfile:ConnectionProfile default {{project}}/{{location}}/{{connection_profile_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:datastream/connectionProfile:ConnectionProfile default {{location}}/{{connection_profile_id}}
/// ```
class ConnectionProfile2 extends CustomResource {
  /// BigQuery warehouse profile.
  late final Output<Map<String, dynamic>?> bigqueryProfile;

  /// The connection profile identifier.
  late final Output<String> connectionProfileId;

  /// Create the connection profile without validating it.
  late final Output<bool?> createWithoutValidation;

  /// Display name.
  late final Output<String> displayName;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Forward SSH tunnel connectivity.
  /// Structure is documented below.
  late final Output<ConnectionProfileForwardSshConnectivity?>
      forwardSshConnectivity;

  /// Cloud Storage bucket profile.
  /// Structure is documented below.
  late final Output<ConnectionProfileGcsProfile?> gcsProfile;

  /// Labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The name of the location this connection profile is located in.
  late final Output<String> location;

  /// Configuration for connecting to a MongoDB database.
  /// Structure is documented below.
  late final Output<ConnectionProfileMongodbProfile?> mongodbProfile;

  /// MySQL database profile.
  /// Structure is documented below.
  late final Output<ConnectionProfileMysqlProfile?> mysqlProfile;

  /// The resource's name.
  late final Output<String> name;

  /// Oracle database profile.
  /// Structure is documented below.
  late final Output<ConnectionProfileOracleProfile?> oracleProfile;

  /// PostgreSQL database profile.
  /// Structure is documented below.
  late final Output<ConnectionProfilePostgresqlProfile?> postgresqlProfile;

  /// Private connectivity.
  /// Structure is documented below.
  late final Output<ConnectionProfilePrivateConnectivity?> privateConnectivity;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// Salesforce profile.
  /// Structure is documented below.
  late final Output<ConnectionProfileSalesforceProfile?> salesforceProfile;

  /// Spanner profile.
  /// Structure is documented below.
  late final Output<ConnectionProfileSpannerProfile?> spannerProfile;

  /// SQL Server database profile.
  /// Structure is documented below.
  late final Output<ConnectionProfileSqlServerProfile?> sqlServerProfile;

  ConnectionProfile2(
    String name, {
    ConnectionProfileArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:datastream/connectionProfile:ConnectionProfile',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.bigqueryProfile = Output.createUnknown<Map<String, dynamic>?>();
    this.connectionProfileId = Output.createUnknown<String>();
    this.createWithoutValidation = Output.createUnknown<bool?>();
    this.displayName = Output.createUnknown<String>();
    this.effectiveLabels = Output.createUnknown<Map<String, String>>();
    this.forwardSshConnectivity =
        Output.createUnknown<ConnectionProfileForwardSshConnectivity?>();
    this.gcsProfile = Output.createUnknown<ConnectionProfileGcsProfile?>();
    this.labels = Output.createUnknown<Map<String, String>?>();
    this.location = Output.createUnknown<String>();
    this.mongodbProfile =
        Output.createUnknown<ConnectionProfileMongodbProfile?>();
    this.mysqlProfile = Output.createUnknown<ConnectionProfileMysqlProfile?>();
    this.name = Output.createUnknown<String>();
    this.oracleProfile =
        Output.createUnknown<ConnectionProfileOracleProfile?>();
    this.postgresqlProfile =
        Output.createUnknown<ConnectionProfilePostgresqlProfile?>();
    this.privateConnectivity =
        Output.createUnknown<ConnectionProfilePrivateConnectivity?>();
    this.project = Output.createUnknown<String>();
    this.pulumiLabels = Output.createUnknown<Map<String, String>>();
    this.salesforceProfile =
        Output.createUnknown<ConnectionProfileSalesforceProfile?>();
    this.spannerProfile =
        Output.createUnknown<ConnectionProfileSpannerProfile?>();
    this.sqlServerProfile =
        Output.createUnknown<ConnectionProfileSqlServerProfile?>();
  }
}

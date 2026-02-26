import 'package:pulumi/pulumi.dart';
import '../metastore_service_encryption_config/metastore_service_encryption_config.dart';
import '../metastore_service_hive_metastore_config/metastore_service_hive_metastore_config.dart';
import '../metastore_service_maintenance_window/metastore_service_maintenance_window.dart';
import '../metastore_service_metadata_integration/metastore_service_metadata_integration.dart';
import '../metastore_service_network_config/metastore_service_network_config.dart';
import '../metastore_service_scaling_config/metastore_service_scaling_config.dart';
import '../metastore_service_scheduled_backup/metastore_service_scheduled_backup.dart';
import '../metastore_service_telemetry_config/metastore_service_telemetry_config.dart';
import 'metastore_service_args.dart';

/// A managed metastore service that serves metadata queries.
///
///
/// To get more information about Service, see:
///
/// * [API documentation](https://cloud.google.com/dataproc-metastore/docs/reference/rest/v1/projects.locations.services)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/dataproc-metastore/docs/overview)
///
/// ## Example Usage
///
/// ### Dataproc Metastore Service Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.dataproc.MetastoreService("default", {
/// serviceId: "metastore-srv",
/// location: "us-central1",
/// port: 9080,
/// tier: "DEVELOPER",
/// maintenanceWindow: {
/// hourOfDay: 2,
/// dayOfWeek: "SUNDAY",
/// },
/// hiveMetastoreConfig: {
/// version: "2.3.6",
/// },
/// labels: {
/// env: "test",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.dataproc.MetastoreService("default",
/// service_id="metastore-srv",
/// location="us-central1",
/// port=9080,
/// tier="DEVELOPER",
/// maintenance_window={
/// "hour_of_day": 2,
/// "day_of_week": "SUNDAY",
/// },
/// hive_metastore_config={
/// "version": "2.3.6",
/// },
/// labels={
/// "env": "test",
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
/// var @default = new Gcp.Dataproc.MetastoreService("default", new()
/// {
/// ServiceId = "metastore-srv",
/// Location = "us-central1",
/// Port = 9080,
/// Tier = "DEVELOPER",
/// MaintenanceWindow = new Gcp.Dataproc.Inputs.MetastoreServiceMaintenanceWindowArgs
/// {
/// HourOfDay = 2,
/// DayOfWeek = "SUNDAY",
/// },
/// HiveMetastoreConfig = new Gcp.Dataproc.Inputs.MetastoreServiceHiveMetastoreConfigArgs
/// {
/// Version = "2.3.6",
/// },
/// Labels =
/// {
/// { "env", "test" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataproc"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := dataproc.NewMetastoreService(ctx, "default", &dataproc.MetastoreServiceArgs{
/// ServiceId: pulumi.String("metastore-srv"),
/// Location:  pulumi.String("us-central1"),
/// Port:      pulumi.Int(9080),
/// Tier:      pulumi.String("DEVELOPER"),
/// MaintenanceWindow: &dataproc.MetastoreServiceMaintenanceWindowArgs{
/// HourOfDay: pulumi.Int(2),
/// DayOfWeek: pulumi.String("SUNDAY"),
/// },
/// HiveMetastoreConfig: &dataproc.MetastoreServiceHiveMetastoreConfigArgs{
/// Version: pulumi.String("2.3.6"),
/// },
/// Labels: pulumi.StringMap{
/// "env": pulumi.String("test"),
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
/// import com.pulumi.gcp.dataproc.MetastoreService;
/// import com.pulumi.gcp.dataproc.MetastoreServiceArgs;
/// import com.pulumi.gcp.dataproc.inputs.MetastoreServiceMaintenanceWindowArgs;
/// import com.pulumi.gcp.dataproc.inputs.MetastoreServiceHiveMetastoreConfigArgs;
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
/// var default_ = new MetastoreService("default", MetastoreServiceArgs.builder()
/// .serviceId("metastore-srv")
/// .location("us-central1")
/// .port(9080)
/// .tier("DEVELOPER")
/// .maintenanceWindow(MetastoreServiceMaintenanceWindowArgs.builder()
/// .hourOfDay(2)
/// .dayOfWeek("SUNDAY")
/// .build())
/// .hiveMetastoreConfig(MetastoreServiceHiveMetastoreConfigArgs.builder()
/// .version("2.3.6")
/// .build())
/// .labels(Map.of("env", "test"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: gcp:dataproc:MetastoreService
/// properties:
/// serviceId: metastore-srv
/// location: us-central1
/// port: 9080
/// tier: DEVELOPER
/// maintenanceWindow:
/// hourOfDay: 2
/// dayOfWeek: SUNDAY
/// hiveMetastoreConfig:
/// version: 2.3.6
/// labels:
/// env: test
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Dataproc Metastore Service Deletion Protection
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.dataproc.MetastoreService("default", {
/// serviceId: "metastore-srv",
/// location: "us-central1",
/// port: 9080,
/// tier: "DEVELOPER",
/// deletionProtection: true,
/// maintenanceWindow: {
/// hourOfDay: 2,
/// dayOfWeek: "SUNDAY",
/// },
/// hiveMetastoreConfig: {
/// version: "2.3.6",
/// },
/// labels: {
/// env: "test",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.dataproc.MetastoreService("default",
/// service_id="metastore-srv",
/// location="us-central1",
/// port=9080,
/// tier="DEVELOPER",
/// deletion_protection=True,
/// maintenance_window={
/// "hour_of_day": 2,
/// "day_of_week": "SUNDAY",
/// },
/// hive_metastore_config={
/// "version": "2.3.6",
/// },
/// labels={
/// "env": "test",
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
/// var @default = new Gcp.Dataproc.MetastoreService("default", new()
/// {
/// ServiceId = "metastore-srv",
/// Location = "us-central1",
/// Port = 9080,
/// Tier = "DEVELOPER",
/// DeletionProtection = true,
/// MaintenanceWindow = new Gcp.Dataproc.Inputs.MetastoreServiceMaintenanceWindowArgs
/// {
/// HourOfDay = 2,
/// DayOfWeek = "SUNDAY",
/// },
/// HiveMetastoreConfig = new Gcp.Dataproc.Inputs.MetastoreServiceHiveMetastoreConfigArgs
/// {
/// Version = "2.3.6",
/// },
/// Labels =
/// {
/// { "env", "test" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataproc"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := dataproc.NewMetastoreService(ctx, "default", &dataproc.MetastoreServiceArgs{
/// ServiceId:          pulumi.String("metastore-srv"),
/// Location:           pulumi.String("us-central1"),
/// Port:               pulumi.Int(9080),
/// Tier:               pulumi.String("DEVELOPER"),
/// DeletionProtection: pulumi.Bool(true),
/// MaintenanceWindow: &dataproc.MetastoreServiceMaintenanceWindowArgs{
/// HourOfDay: pulumi.Int(2),
/// DayOfWeek: pulumi.String("SUNDAY"),
/// },
/// HiveMetastoreConfig: &dataproc.MetastoreServiceHiveMetastoreConfigArgs{
/// Version: pulumi.String("2.3.6"),
/// },
/// Labels: pulumi.StringMap{
/// "env": pulumi.String("test"),
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
/// import com.pulumi.gcp.dataproc.MetastoreService;
/// import com.pulumi.gcp.dataproc.MetastoreServiceArgs;
/// import com.pulumi.gcp.dataproc.inputs.MetastoreServiceMaintenanceWindowArgs;
/// import com.pulumi.gcp.dataproc.inputs.MetastoreServiceHiveMetastoreConfigArgs;
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
/// var default_ = new MetastoreService("default", MetastoreServiceArgs.builder()
/// .serviceId("metastore-srv")
/// .location("us-central1")
/// .port(9080)
/// .tier("DEVELOPER")
/// .deletionProtection(true)
/// .maintenanceWindow(MetastoreServiceMaintenanceWindowArgs.builder()
/// .hourOfDay(2)
/// .dayOfWeek("SUNDAY")
/// .build())
/// .hiveMetastoreConfig(MetastoreServiceHiveMetastoreConfigArgs.builder()
/// .version("2.3.6")
/// .build())
/// .labels(Map.of("env", "test"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: gcp:dataproc:MetastoreService
/// properties:
/// serviceId: metastore-srv
/// location: us-central1
/// port: 9080
/// tier: DEVELOPER
/// deletionProtection: true
/// maintenanceWindow:
/// hourOfDay: 2
/// dayOfWeek: SUNDAY
/// hiveMetastoreConfig:
/// version: 2.3.6
/// labels:
/// env: test
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Dataproc Metastore Service Cmek Example
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const keyRing = new gcp.kms.KeyRing("key_ring", {
/// name: "example-keyring",
/// location: "us-central1",
/// });
/// const cryptoKey = new gcp.kms.CryptoKey("crypto_key", {
/// name: "example-key",
/// keyRing: keyRing.id,
/// purpose: "ENCRYPT_DECRYPT",
/// });
/// const _default = new gcp.dataproc.MetastoreService("default", {
/// serviceId: "example-service",
/// location: "us-central1",
/// encryptionConfig: {
/// kmsKey: cryptoKey.id,
/// },
/// hiveMetastoreConfig: {
/// version: "3.1.2",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// key_ring = gcp.kms.KeyRing("key_ring",
/// name="example-keyring",
/// location="us-central1")
/// crypto_key = gcp.kms.CryptoKey("crypto_key",
/// name="example-key",
/// key_ring=key_ring.id,
/// purpose="ENCRYPT_DECRYPT")
/// default = gcp.dataproc.MetastoreService("default",
/// service_id="example-service",
/// location="us-central1",
/// encryption_config={
/// "kms_key": crypto_key.id,
/// },
/// hive_metastore_config={
/// "version": "3.1.2",
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
/// var keyRing = new Gcp.Kms.KeyRing("key_ring", new()
/// {
/// Name = "example-keyring",
/// Location = "us-central1",
/// });
///
/// var cryptoKey = new Gcp.Kms.CryptoKey("crypto_key", new()
/// {
/// Name = "example-key",
/// KeyRing = keyRing.Id,
/// Purpose = "ENCRYPT_DECRYPT",
/// });
///
/// var @default = new Gcp.Dataproc.MetastoreService("default", new()
/// {
/// ServiceId = "example-service",
/// Location = "us-central1",
/// EncryptionConfig = new Gcp.Dataproc.Inputs.MetastoreServiceEncryptionConfigArgs
/// {
/// KmsKey = cryptoKey.Id,
/// },
/// HiveMetastoreConfig = new Gcp.Dataproc.Inputs.MetastoreServiceHiveMetastoreConfigArgs
/// {
/// Version = "3.1.2",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataproc"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// keyRing, err := kms.NewKeyRing(ctx, "key_ring", &kms.KeyRingArgs{
/// Name:     pulumi.String("example-keyring"),
/// Location: pulumi.String("us-central1"),
/// })
/// if err != nil {
/// return err
/// }
/// cryptoKey, err := kms.NewCryptoKey(ctx, "crypto_key", &kms.CryptoKeyArgs{
/// Name:    pulumi.String("example-key"),
/// KeyRing: keyRing.ID(),
/// Purpose: pulumi.String("ENCRYPT_DECRYPT"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = dataproc.NewMetastoreService(ctx, "default", &dataproc.MetastoreServiceArgs{
/// ServiceId: pulumi.String("example-service"),
/// Location:  pulumi.String("us-central1"),
/// EncryptionConfig: &dataproc.MetastoreServiceEncryptionConfigArgs{
/// KmsKey: cryptoKey.ID(),
/// },
/// HiveMetastoreConfig: &dataproc.MetastoreServiceHiveMetastoreConfigArgs{
/// Version: pulumi.String("3.1.2"),
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
/// import com.pulumi.gcp.kms.KeyRing;
/// import com.pulumi.gcp.kms.KeyRingArgs;
/// import com.pulumi.gcp.kms.CryptoKey;
/// import com.pulumi.gcp.kms.CryptoKeyArgs;
/// import com.pulumi.gcp.dataproc.MetastoreService;
/// import com.pulumi.gcp.dataproc.MetastoreServiceArgs;
/// import com.pulumi.gcp.dataproc.inputs.MetastoreServiceEncryptionConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.MetastoreServiceHiveMetastoreConfigArgs;
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
/// var keyRing = new KeyRing("keyRing", KeyRingArgs.builder()
/// .name("example-keyring")
/// .location("us-central1")
/// .build());
///
/// var cryptoKey = new CryptoKey("cryptoKey", CryptoKeyArgs.builder()
/// .name("example-key")
/// .keyRing(keyRing.id())
/// .purpose("ENCRYPT_DECRYPT")
/// .build());
///
/// var default_ = new MetastoreService("default", MetastoreServiceArgs.builder()
/// .serviceId("example-service")
/// .location("us-central1")
/// .encryptionConfig(MetastoreServiceEncryptionConfigArgs.builder()
/// .kmsKey(cryptoKey.id())
/// .build())
/// .hiveMetastoreConfig(MetastoreServiceHiveMetastoreConfigArgs.builder()
/// .version("3.1.2")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: gcp:dataproc:MetastoreService
/// properties:
/// serviceId: example-service
/// location: us-central1
/// encryptionConfig:
/// kmsKey: ${cryptoKey.id}
/// hiveMetastoreConfig:
/// version: 3.1.2
/// cryptoKey:
/// type: gcp:kms:CryptoKey
/// name: crypto_key
/// properties:
/// name: example-key
/// keyRing: ${keyRing.id}
/// purpose: ENCRYPT_DECRYPT
/// keyRing:
/// type: gcp:kms:KeyRing
/// name: key_ring
/// properties:
/// name: example-keyring
/// location: us-central1
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Dataproc Metastore Service Private Service Connect
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const net = new gcp.compute.Network("net", {
/// name: "my-network",
/// autoCreateSubnetworks: false,
/// });
/// const subnet = new gcp.compute.Subnetwork("subnet", {
/// name: "my-subnetwork",
/// region: "us-central1",
/// network: net.id,
/// ipCidrRange: "10.0.0.0/22",
/// privateIpGoogleAccess: true,
/// });
/// const _default = new gcp.dataproc.MetastoreService("default", {
/// serviceId: "metastore-srv",
/// location: "us-central1",
/// tier: "DEVELOPER",
/// hiveMetastoreConfig: {
/// version: "3.1.2",
/// },
/// networkConfig: {
/// consumers: [{
/// subnetwork: subnet.id,
/// }],
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// net = gcp.compute.Network("net",
/// name="my-network",
/// auto_create_subnetworks=False)
/// subnet = gcp.compute.Subnetwork("subnet",
/// name="my-subnetwork",
/// region="us-central1",
/// network=net.id,
/// ip_cidr_range="10.0.0.0/22",
/// private_ip_google_access=True)
/// default = gcp.dataproc.MetastoreService("default",
/// service_id="metastore-srv",
/// location="us-central1",
/// tier="DEVELOPER",
/// hive_metastore_config={
/// "version": "3.1.2",
/// },
/// network_config={
/// "consumers": [{
/// "subnetwork": subnet.id,
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
/// var net = new Gcp.Compute.Network("net", new()
/// {
/// Name = "my-network",
/// AutoCreateSubnetworks = false,
/// });
///
/// var subnet = new Gcp.Compute.Subnetwork("subnet", new()
/// {
/// Name = "my-subnetwork",
/// Region = "us-central1",
/// Network = net.Id,
/// IpCidrRange = "10.0.0.0/22",
/// PrivateIpGoogleAccess = true,
/// });
///
/// var @default = new Gcp.Dataproc.MetastoreService("default", new()
/// {
/// ServiceId = "metastore-srv",
/// Location = "us-central1",
/// Tier = "DEVELOPER",
/// HiveMetastoreConfig = new Gcp.Dataproc.Inputs.MetastoreServiceHiveMetastoreConfigArgs
/// {
/// Version = "3.1.2",
/// },
/// NetworkConfig = new Gcp.Dataproc.Inputs.MetastoreServiceNetworkConfigArgs
/// {
/// Consumers = new[]
/// {
/// new Gcp.Dataproc.Inputs.MetastoreServiceNetworkConfigConsumerArgs
/// {
/// Subnetwork = subnet.Id,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataproc"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// net, err := compute.NewNetwork(ctx, "net", &compute.NetworkArgs{
/// Name:                  pulumi.String("my-network"),
/// AutoCreateSubnetworks: pulumi.Bool(false),
/// })
/// if err != nil {
/// return err
/// }
/// subnet, err := compute.NewSubnetwork(ctx, "subnet", &compute.SubnetworkArgs{
/// Name:                  pulumi.String("my-subnetwork"),
/// Region:                pulumi.String("us-central1"),
/// Network:               net.ID(),
/// IpCidrRange:           pulumi.String("10.0.0.0/22"),
/// PrivateIpGoogleAccess: pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = dataproc.NewMetastoreService(ctx, "default", &dataproc.MetastoreServiceArgs{
/// ServiceId: pulumi.String("metastore-srv"),
/// Location:  pulumi.String("us-central1"),
/// Tier:      pulumi.String("DEVELOPER"),
/// HiveMetastoreConfig: &dataproc.MetastoreServiceHiveMetastoreConfigArgs{
/// Version: pulumi.String("3.1.2"),
/// },
/// NetworkConfig: &dataproc.MetastoreServiceNetworkConfigArgs{
/// Consumers: dataproc.MetastoreServiceNetworkConfigConsumerArray{
/// &dataproc.MetastoreServiceNetworkConfigConsumerArgs{
/// Subnetwork: subnet.ID(),
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
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.dataproc.MetastoreService;
/// import com.pulumi.gcp.dataproc.MetastoreServiceArgs;
/// import com.pulumi.gcp.dataproc.inputs.MetastoreServiceHiveMetastoreConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.MetastoreServiceNetworkConfigArgs;
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
/// var net = new Network("net", NetworkArgs.builder()
/// .name("my-network")
/// .autoCreateSubnetworks(false)
/// .build());
///
/// var subnet = new Subnetwork("subnet", SubnetworkArgs.builder()
/// .name("my-subnetwork")
/// .region("us-central1")
/// .network(net.id())
/// .ipCidrRange("10.0.0.0/22")
/// .privateIpGoogleAccess(true)
/// .build());
///
/// var default_ = new MetastoreService("default", MetastoreServiceArgs.builder()
/// .serviceId("metastore-srv")
/// .location("us-central1")
/// .tier("DEVELOPER")
/// .hiveMetastoreConfig(MetastoreServiceHiveMetastoreConfigArgs.builder()
/// .version("3.1.2")
/// .build())
/// .networkConfig(MetastoreServiceNetworkConfigArgs.builder()
/// .consumers(MetastoreServiceNetworkConfigConsumerArgs.builder()
/// .subnetwork(subnet.id())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// net:
/// type: gcp:compute:Network
/// properties:
/// name: my-network
/// autoCreateSubnetworks: false
/// subnet:
/// type: gcp:compute:Subnetwork
/// properties:
/// name: my-subnetwork
/// region: us-central1
/// network: ${net.id}
/// ipCidrRange: 10.0.0.0/22
/// privateIpGoogleAccess: true
/// default:
/// type: gcp:dataproc:MetastoreService
/// properties:
/// serviceId: metastore-srv
/// location: us-central1
/// tier: DEVELOPER
/// hiveMetastoreConfig:
/// version: 3.1.2
/// networkConfig:
/// consumers:
/// - subnetwork: ${subnet.id}
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Dataproc Metastore Service Private Service Connect Custom Routes
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const net = new gcp.compute.Network("net", {
/// name: "my-network",
/// autoCreateSubnetworks: false,
/// });
/// const subnet = new gcp.compute.Subnetwork("subnet", {
/// name: "my-subnetwork",
/// region: "us-central1",
/// network: net.id,
/// ipCidrRange: "10.0.0.0/22",
/// privateIpGoogleAccess: true,
/// });
/// const _default = new gcp.dataproc.MetastoreService("default", {
/// serviceId: "metastore-srv",
/// location: "us-central1",
/// hiveMetastoreConfig: {
/// version: "3.1.2",
/// },
/// networkConfig: {
/// consumers: [{
/// subnetwork: subnet.id,
/// }],
/// customRoutesEnabled: true,
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// net = gcp.compute.Network("net",
/// name="my-network",
/// auto_create_subnetworks=False)
/// subnet = gcp.compute.Subnetwork("subnet",
/// name="my-subnetwork",
/// region="us-central1",
/// network=net.id,
/// ip_cidr_range="10.0.0.0/22",
/// private_ip_google_access=True)
/// default = gcp.dataproc.MetastoreService("default",
/// service_id="metastore-srv",
/// location="us-central1",
/// hive_metastore_config={
/// "version": "3.1.2",
/// },
/// network_config={
/// "consumers": [{
/// "subnetwork": subnet.id,
/// }],
/// "custom_routes_enabled": True,
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
/// var net = new Gcp.Compute.Network("net", new()
/// {
/// Name = "my-network",
/// AutoCreateSubnetworks = false,
/// });
///
/// var subnet = new Gcp.Compute.Subnetwork("subnet", new()
/// {
/// Name = "my-subnetwork",
/// Region = "us-central1",
/// Network = net.Id,
/// IpCidrRange = "10.0.0.0/22",
/// PrivateIpGoogleAccess = true,
/// });
///
/// var @default = new Gcp.Dataproc.MetastoreService("default", new()
/// {
/// ServiceId = "metastore-srv",
/// Location = "us-central1",
/// HiveMetastoreConfig = new Gcp.Dataproc.Inputs.MetastoreServiceHiveMetastoreConfigArgs
/// {
/// Version = "3.1.2",
/// },
/// NetworkConfig = new Gcp.Dataproc.Inputs.MetastoreServiceNetworkConfigArgs
/// {
/// Consumers = new[]
/// {
/// new Gcp.Dataproc.Inputs.MetastoreServiceNetworkConfigConsumerArgs
/// {
/// Subnetwork = subnet.Id,
/// },
/// },
/// CustomRoutesEnabled = true,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataproc"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// net, err := compute.NewNetwork(ctx, "net", &compute.NetworkArgs{
/// Name:                  pulumi.String("my-network"),
/// AutoCreateSubnetworks: pulumi.Bool(false),
/// })
/// if err != nil {
/// return err
/// }
/// subnet, err := compute.NewSubnetwork(ctx, "subnet", &compute.SubnetworkArgs{
/// Name:                  pulumi.String("my-subnetwork"),
/// Region:                pulumi.String("us-central1"),
/// Network:               net.ID(),
/// IpCidrRange:           pulumi.String("10.0.0.0/22"),
/// PrivateIpGoogleAccess: pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = dataproc.NewMetastoreService(ctx, "default", &dataproc.MetastoreServiceArgs{
/// ServiceId: pulumi.String("metastore-srv"),
/// Location:  pulumi.String("us-central1"),
/// HiveMetastoreConfig: &dataproc.MetastoreServiceHiveMetastoreConfigArgs{
/// Version: pulumi.String("3.1.2"),
/// },
/// NetworkConfig: &dataproc.MetastoreServiceNetworkConfigArgs{
/// Consumers: dataproc.MetastoreServiceNetworkConfigConsumerArray{
/// &dataproc.MetastoreServiceNetworkConfigConsumerArgs{
/// Subnetwork: subnet.ID(),
/// },
/// },
/// CustomRoutesEnabled: pulumi.Bool(true),
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
/// import com.pulumi.gcp.dataproc.MetastoreService;
/// import com.pulumi.gcp.dataproc.MetastoreServiceArgs;
/// import com.pulumi.gcp.dataproc.inputs.MetastoreServiceHiveMetastoreConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.MetastoreServiceNetworkConfigArgs;
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
/// var net = new Network("net", NetworkArgs.builder()
/// .name("my-network")
/// .autoCreateSubnetworks(false)
/// .build());
///
/// var subnet = new Subnetwork("subnet", SubnetworkArgs.builder()
/// .name("my-subnetwork")
/// .region("us-central1")
/// .network(net.id())
/// .ipCidrRange("10.0.0.0/22")
/// .privateIpGoogleAccess(true)
/// .build());
///
/// var default_ = new MetastoreService("default", MetastoreServiceArgs.builder()
/// .serviceId("metastore-srv")
/// .location("us-central1")
/// .hiveMetastoreConfig(MetastoreServiceHiveMetastoreConfigArgs.builder()
/// .version("3.1.2")
/// .build())
/// .networkConfig(MetastoreServiceNetworkConfigArgs.builder()
/// .consumers(MetastoreServiceNetworkConfigConsumerArgs.builder()
/// .subnetwork(subnet.id())
/// .build())
/// .customRoutesEnabled(true)
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// net:
/// type: gcp:compute:Network
/// properties:
/// name: my-network
/// autoCreateSubnetworks: false
/// subnet:
/// type: gcp:compute:Subnetwork
/// properties:
/// name: my-subnetwork
/// region: us-central1
/// network: ${net.id}
/// ipCidrRange: 10.0.0.0/22
/// privateIpGoogleAccess: true
/// default:
/// type: gcp:dataproc:MetastoreService
/// properties:
/// serviceId: metastore-srv
/// location: us-central1
/// hiveMetastoreConfig:
/// version: 3.1.2
/// networkConfig:
/// consumers:
/// - subnetwork: ${subnet.id}
/// customRoutesEnabled: true
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Dataproc Metastore Service Dpms2
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const dpms2 = new gcp.dataproc.MetastoreService("dpms2", {
/// serviceId: "ms-dpms2",
/// location: "us-central1",
/// databaseType: "SPANNER",
/// hiveMetastoreConfig: {
/// version: "3.1.2",
/// },
/// scalingConfig: {
/// instanceSize: "EXTRA_SMALL",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// dpms2 = gcp.dataproc.MetastoreService("dpms2",
/// service_id="ms-dpms2",
/// location="us-central1",
/// database_type="SPANNER",
/// hive_metastore_config={
/// "version": "3.1.2",
/// },
/// scaling_config={
/// "instance_size": "EXTRA_SMALL",
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
/// var dpms2 = new Gcp.Dataproc.MetastoreService("dpms2", new()
/// {
/// ServiceId = "ms-dpms2",
/// Location = "us-central1",
/// DatabaseType = "SPANNER",
/// HiveMetastoreConfig = new Gcp.Dataproc.Inputs.MetastoreServiceHiveMetastoreConfigArgs
/// {
/// Version = "3.1.2",
/// },
/// ScalingConfig = new Gcp.Dataproc.Inputs.MetastoreServiceScalingConfigArgs
/// {
/// InstanceSize = "EXTRA_SMALL",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataproc"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := dataproc.NewMetastoreService(ctx, "dpms2", &dataproc.MetastoreServiceArgs{
/// ServiceId:    pulumi.String("ms-dpms2"),
/// Location:     pulumi.String("us-central1"),
/// DatabaseType: pulumi.String("SPANNER"),
/// HiveMetastoreConfig: &dataproc.MetastoreServiceHiveMetastoreConfigArgs{
/// Version: pulumi.String("3.1.2"),
/// },
/// ScalingConfig: &dataproc.MetastoreServiceScalingConfigArgs{
/// InstanceSize: pulumi.String("EXTRA_SMALL"),
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
/// import com.pulumi.gcp.dataproc.MetastoreService;
/// import com.pulumi.gcp.dataproc.MetastoreServiceArgs;
/// import com.pulumi.gcp.dataproc.inputs.MetastoreServiceHiveMetastoreConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.MetastoreServiceScalingConfigArgs;
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
/// var dpms2 = new MetastoreService("dpms2", MetastoreServiceArgs.builder()
/// .serviceId("ms-dpms2")
/// .location("us-central1")
/// .databaseType("SPANNER")
/// .hiveMetastoreConfig(MetastoreServiceHiveMetastoreConfigArgs.builder()
/// .version("3.1.2")
/// .build())
/// .scalingConfig(MetastoreServiceScalingConfigArgs.builder()
/// .instanceSize("EXTRA_SMALL")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// dpms2:
/// type: gcp:dataproc:MetastoreService
/// properties:
/// serviceId: ms-dpms2
/// location: us-central1
/// databaseType: SPANNER
/// hiveMetastoreConfig:
/// version: 3.1.2
/// scalingConfig:
/// instanceSize: EXTRA_SMALL
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Dataproc Metastore Service Dpms2 Scaling Factor
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const dpms2ScalingFactor = new gcp.dataproc.MetastoreService("dpms2_scaling_factor", {
/// serviceId: "ms-dpms2sf",
/// location: "us-central1",
/// databaseType: "SPANNER",
/// hiveMetastoreConfig: {
/// version: "3.1.2",
/// },
/// scalingConfig: {
/// scalingFactor: 2,
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// dpms2_scaling_factor = gcp.dataproc.MetastoreService("dpms2_scaling_factor",
/// service_id="ms-dpms2sf",
/// location="us-central1",
/// database_type="SPANNER",
/// hive_metastore_config={
/// "version": "3.1.2",
/// },
/// scaling_config={
/// "scaling_factor": 2,
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
/// var dpms2ScalingFactor = new Gcp.Dataproc.MetastoreService("dpms2_scaling_factor", new()
/// {
/// ServiceId = "ms-dpms2sf",
/// Location = "us-central1",
/// DatabaseType = "SPANNER",
/// HiveMetastoreConfig = new Gcp.Dataproc.Inputs.MetastoreServiceHiveMetastoreConfigArgs
/// {
/// Version = "3.1.2",
/// },
/// ScalingConfig = new Gcp.Dataproc.Inputs.MetastoreServiceScalingConfigArgs
/// {
/// ScalingFactor = 2,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataproc"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := dataproc.NewMetastoreService(ctx, "dpms2_scaling_factor", &dataproc.MetastoreServiceArgs{
/// ServiceId:    pulumi.String("ms-dpms2sf"),
/// Location:     pulumi.String("us-central1"),
/// DatabaseType: pulumi.String("SPANNER"),
/// HiveMetastoreConfig: &dataproc.MetastoreServiceHiveMetastoreConfigArgs{
/// Version: pulumi.String("3.1.2"),
/// },
/// ScalingConfig: &dataproc.MetastoreServiceScalingConfigArgs{
/// ScalingFactor: pulumi.Float64(2),
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
/// import com.pulumi.gcp.dataproc.MetastoreService;
/// import com.pulumi.gcp.dataproc.MetastoreServiceArgs;
/// import com.pulumi.gcp.dataproc.inputs.MetastoreServiceHiveMetastoreConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.MetastoreServiceScalingConfigArgs;
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
/// var dpms2ScalingFactor = new MetastoreService("dpms2ScalingFactor", MetastoreServiceArgs.builder()
/// .serviceId("ms-dpms2sf")
/// .location("us-central1")
/// .databaseType("SPANNER")
/// .hiveMetastoreConfig(MetastoreServiceHiveMetastoreConfigArgs.builder()
/// .version("3.1.2")
/// .build())
/// .scalingConfig(MetastoreServiceScalingConfigArgs.builder()
/// .scalingFactor(2.0)
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// dpms2ScalingFactor:
/// type: gcp:dataproc:MetastoreService
/// name: dpms2_scaling_factor
/// properties:
/// serviceId: ms-dpms2sf
/// location: us-central1
/// databaseType: SPANNER
/// hiveMetastoreConfig:
/// version: 3.1.2
/// scalingConfig:
/// scalingFactor: '2'
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Dataproc Metastore Service Scheduled Backup
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const bucket = new gcp.storage.Bucket("bucket", {
/// name: "backup",
/// location: "us-central1",
/// });
/// const backup = new gcp.dataproc.MetastoreService("backup", {
/// serviceId: "backup",
/// location: "us-central1",
/// port: 9080,
/// tier: "DEVELOPER",
/// maintenanceWindow: {
/// hourOfDay: 2,
/// dayOfWeek: "SUNDAY",
/// },
/// hiveMetastoreConfig: {
/// version: "2.3.6",
/// },
/// scheduledBackup: {
/// enabled: true,
/// cronSchedule: "0 0 * * *",
/// timeZone: "UTC",
/// backupLocation: pulumi.interpolate`gs://${bucket.name}`,
/// },
/// labels: {
/// env: "test",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// bucket = gcp.storage.Bucket("bucket",
/// name="backup",
/// location="us-central1")
/// backup = gcp.dataproc.MetastoreService("backup",
/// service_id="backup",
/// location="us-central1",
/// port=9080,
/// tier="DEVELOPER",
/// maintenance_window={
/// "hour_of_day": 2,
/// "day_of_week": "SUNDAY",
/// },
/// hive_metastore_config={
/// "version": "2.3.6",
/// },
/// scheduled_backup={
/// "enabled": True,
/// "cron_schedule": "0 0 * * *",
/// "time_zone": "UTC",
/// "backup_location": bucket.name.apply(lambda name: f"gs://{name}"),
/// },
/// labels={
/// "env": "test",
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
/// var bucket = new Gcp.Storage.Bucket("bucket", new()
/// {
/// Name = "backup",
/// Location = "us-central1",
/// });
///
/// var backup = new Gcp.Dataproc.MetastoreService("backup", new()
/// {
/// ServiceId = "backup",
/// Location = "us-central1",
/// Port = 9080,
/// Tier = "DEVELOPER",
/// MaintenanceWindow = new Gcp.Dataproc.Inputs.MetastoreServiceMaintenanceWindowArgs
/// {
/// HourOfDay = 2,
/// DayOfWeek = "SUNDAY",
/// },
/// HiveMetastoreConfig = new Gcp.Dataproc.Inputs.MetastoreServiceHiveMetastoreConfigArgs
/// {
/// Version = "2.3.6",
/// },
/// ScheduledBackup = new Gcp.Dataproc.Inputs.MetastoreServiceScheduledBackupArgs
/// {
/// Enabled = true,
/// CronSchedule = "0 0 * * *",
/// TimeZone = "UTC",
/// BackupLocation = bucket.Name.Apply(name => $"gs://{name}"),
/// },
/// Labels =
/// {
/// { "env", "test" },
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataproc"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// bucket, err := storage.NewBucket(ctx, "bucket", &storage.BucketArgs{
/// Name:     pulumi.String("backup"),
/// Location: pulumi.String("us-central1"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = dataproc.NewMetastoreService(ctx, "backup", &dataproc.MetastoreServiceArgs{
/// ServiceId: pulumi.String("backup"),
/// Location:  pulumi.String("us-central1"),
/// Port:      pulumi.Int(9080),
/// Tier:      pulumi.String("DEVELOPER"),
/// MaintenanceWindow: &dataproc.MetastoreServiceMaintenanceWindowArgs{
/// HourOfDay: pulumi.Int(2),
/// DayOfWeek: pulumi.String("SUNDAY"),
/// },
/// HiveMetastoreConfig: &dataproc.MetastoreServiceHiveMetastoreConfigArgs{
/// Version: pulumi.String("2.3.6"),
/// },
/// ScheduledBackup: &dataproc.MetastoreServiceScheduledBackupArgs{
/// Enabled:      pulumi.Bool(true),
/// CronSchedule: pulumi.String("0 0 * * *"),
/// TimeZone:     pulumi.String("UTC"),
/// BackupLocation: bucket.Name.ApplyT(func(name string) (string, error) {
/// return fmt.Sprintf("gs://%v", name), nil
/// }).(pulumi.StringOutput),
/// },
/// Labels: pulumi.StringMap{
/// "env": pulumi.String("test"),
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
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.dataproc.MetastoreService;
/// import com.pulumi.gcp.dataproc.MetastoreServiceArgs;
/// import com.pulumi.gcp.dataproc.inputs.MetastoreServiceMaintenanceWindowArgs;
/// import com.pulumi.gcp.dataproc.inputs.MetastoreServiceHiveMetastoreConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.MetastoreServiceScheduledBackupArgs;
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
/// var bucket = new Bucket("bucket", BucketArgs.builder()
/// .name("backup")
/// .location("us-central1")
/// .build());
///
/// var backup = new MetastoreService("backup", MetastoreServiceArgs.builder()
/// .serviceId("backup")
/// .location("us-central1")
/// .port(9080)
/// .tier("DEVELOPER")
/// .maintenanceWindow(MetastoreServiceMaintenanceWindowArgs.builder()
/// .hourOfDay(2)
/// .dayOfWeek("SUNDAY")
/// .build())
/// .hiveMetastoreConfig(MetastoreServiceHiveMetastoreConfigArgs.builder()
/// .version("2.3.6")
/// .build())
/// .scheduledBackup(MetastoreServiceScheduledBackupArgs.builder()
/// .enabled(true)
/// .cronSchedule("0 0 * * *")
/// .timeZone("UTC")
/// .backupLocation(bucket.name().applyValue(_name -> String.format("gs://%s", _name)))
/// .build())
/// .labels(Map.of("env", "test"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// backup:
/// type: gcp:dataproc:MetastoreService
/// properties:
/// serviceId: backup
/// location: us-central1
/// port: 9080
/// tier: DEVELOPER
/// maintenanceWindow:
/// hourOfDay: 2
/// dayOfWeek: SUNDAY
/// hiveMetastoreConfig:
/// version: 2.3.6
/// scheduledBackup:
/// enabled: true
/// cronSchedule: 0 0 * * *
/// timeZone: UTC
/// backupLocation: gs://${bucket.name}
/// labels:
/// env: test
/// bucket:
/// type: gcp:storage:Bucket
/// properties:
/// name: backup
/// location: us-central1
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Dataproc Metastore Service Autoscaling Max Scaling Factor
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const testResource = new gcp.dataproc.MetastoreService("test_resource", {
/// serviceId: "test-service",
/// location: "us-central1",
/// databaseType: "SPANNER",
/// hiveMetastoreConfig: {
/// version: "3.1.2",
/// },
/// scalingConfig: {
/// autoscalingConfig: {
/// autoscalingEnabled: true,
/// limitConfig: {
/// maxScalingFactor: 1,
/// },
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// test_resource = gcp.dataproc.MetastoreService("test_resource",
/// service_id="test-service",
/// location="us-central1",
/// database_type="SPANNER",
/// hive_metastore_config={
/// "version": "3.1.2",
/// },
/// scaling_config={
/// "autoscaling_config": {
/// "autoscaling_enabled": True,
/// "limit_config": {
/// "max_scaling_factor": 1,
/// },
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
/// var testResource = new Gcp.Dataproc.MetastoreService("test_resource", new()
/// {
/// ServiceId = "test-service",
/// Location = "us-central1",
/// DatabaseType = "SPANNER",
/// HiveMetastoreConfig = new Gcp.Dataproc.Inputs.MetastoreServiceHiveMetastoreConfigArgs
/// {
/// Version = "3.1.2",
/// },
/// ScalingConfig = new Gcp.Dataproc.Inputs.MetastoreServiceScalingConfigArgs
/// {
/// AutoscalingConfig = new Gcp.Dataproc.Inputs.MetastoreServiceScalingConfigAutoscalingConfigArgs
/// {
/// AutoscalingEnabled = true,
/// LimitConfig = new Gcp.Dataproc.Inputs.MetastoreServiceScalingConfigAutoscalingConfigLimitConfigArgs
/// {
/// MaxScalingFactor = 1,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataproc"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := dataproc.NewMetastoreService(ctx, "test_resource", &dataproc.MetastoreServiceArgs{
/// ServiceId:    pulumi.String("test-service"),
/// Location:     pulumi.String("us-central1"),
/// DatabaseType: pulumi.String("SPANNER"),
/// HiveMetastoreConfig: &dataproc.MetastoreServiceHiveMetastoreConfigArgs{
/// Version: pulumi.String("3.1.2"),
/// },
/// ScalingConfig: &dataproc.MetastoreServiceScalingConfigArgs{
/// AutoscalingConfig: &dataproc.MetastoreServiceScalingConfigAutoscalingConfigArgs{
/// AutoscalingEnabled: pulumi.Bool(true),
/// LimitConfig: &dataproc.MetastoreServiceScalingConfigAutoscalingConfigLimitConfigArgs{
/// MaxScalingFactor: pulumi.Float64(1),
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
/// import com.pulumi.gcp.dataproc.MetastoreService;
/// import com.pulumi.gcp.dataproc.MetastoreServiceArgs;
/// import com.pulumi.gcp.dataproc.inputs.MetastoreServiceHiveMetastoreConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.MetastoreServiceScalingConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.MetastoreServiceScalingConfigAutoscalingConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.MetastoreServiceScalingConfigAutoscalingConfigLimitConfigArgs;
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
/// var testResource = new MetastoreService("testResource", MetastoreServiceArgs.builder()
/// .serviceId("test-service")
/// .location("us-central1")
/// .databaseType("SPANNER")
/// .hiveMetastoreConfig(MetastoreServiceHiveMetastoreConfigArgs.builder()
/// .version("3.1.2")
/// .build())
/// .scalingConfig(MetastoreServiceScalingConfigArgs.builder()
/// .autoscalingConfig(MetastoreServiceScalingConfigAutoscalingConfigArgs.builder()
/// .autoscalingEnabled(true)
/// .limitConfig(MetastoreServiceScalingConfigAutoscalingConfigLimitConfigArgs.builder()
/// .maxScalingFactor(1.0)
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
/// testResource:
/// type: gcp:dataproc:MetastoreService
/// name: test_resource
/// properties:
/// serviceId: test-service
/// location: us-central1
/// databaseType: SPANNER
/// hiveMetastoreConfig:
/// version: 3.1.2
/// scalingConfig:
/// autoscalingConfig:
/// autoscalingEnabled: true
/// limitConfig:
/// maxScalingFactor: 1
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Dataproc Metastore Service Autoscaling Min And Max Scaling Factor
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const testResource = new gcp.dataproc.MetastoreService("test_resource", {
/// serviceId: "test-service",
/// location: "us-central1",
/// databaseType: "SPANNER",
/// hiveMetastoreConfig: {
/// version: "3.1.2",
/// },
/// scalingConfig: {
/// autoscalingConfig: {
/// autoscalingEnabled: true,
/// limitConfig: {
/// minScalingFactor: 0.1,
/// maxScalingFactor: 1,
/// },
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// test_resource = gcp.dataproc.MetastoreService("test_resource",
/// service_id="test-service",
/// location="us-central1",
/// database_type="SPANNER",
/// hive_metastore_config={
/// "version": "3.1.2",
/// },
/// scaling_config={
/// "autoscaling_config": {
/// "autoscaling_enabled": True,
/// "limit_config": {
/// "min_scaling_factor": 0.1,
/// "max_scaling_factor": 1,
/// },
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
/// var testResource = new Gcp.Dataproc.MetastoreService("test_resource", new()
/// {
/// ServiceId = "test-service",
/// Location = "us-central1",
/// DatabaseType = "SPANNER",
/// HiveMetastoreConfig = new Gcp.Dataproc.Inputs.MetastoreServiceHiveMetastoreConfigArgs
/// {
/// Version = "3.1.2",
/// },
/// ScalingConfig = new Gcp.Dataproc.Inputs.MetastoreServiceScalingConfigArgs
/// {
/// AutoscalingConfig = new Gcp.Dataproc.Inputs.MetastoreServiceScalingConfigAutoscalingConfigArgs
/// {
/// AutoscalingEnabled = true,
/// LimitConfig = new Gcp.Dataproc.Inputs.MetastoreServiceScalingConfigAutoscalingConfigLimitConfigArgs
/// {
/// MinScalingFactor = 0.1,
/// MaxScalingFactor = 1,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataproc"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := dataproc.NewMetastoreService(ctx, "test_resource", &dataproc.MetastoreServiceArgs{
/// ServiceId:    pulumi.String("test-service"),
/// Location:     pulumi.String("us-central1"),
/// DatabaseType: pulumi.String("SPANNER"),
/// HiveMetastoreConfig: &dataproc.MetastoreServiceHiveMetastoreConfigArgs{
/// Version: pulumi.String("3.1.2"),
/// },
/// ScalingConfig: &dataproc.MetastoreServiceScalingConfigArgs{
/// AutoscalingConfig: &dataproc.MetastoreServiceScalingConfigAutoscalingConfigArgs{
/// AutoscalingEnabled: pulumi.Bool(true),
/// LimitConfig: &dataproc.MetastoreServiceScalingConfigAutoscalingConfigLimitConfigArgs{
/// MinScalingFactor: pulumi.Float64(0.1),
/// MaxScalingFactor: pulumi.Float64(1),
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
/// import com.pulumi.gcp.dataproc.MetastoreService;
/// import com.pulumi.gcp.dataproc.MetastoreServiceArgs;
/// import com.pulumi.gcp.dataproc.inputs.MetastoreServiceHiveMetastoreConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.MetastoreServiceScalingConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.MetastoreServiceScalingConfigAutoscalingConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.MetastoreServiceScalingConfigAutoscalingConfigLimitConfigArgs;
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
/// var testResource = new MetastoreService("testResource", MetastoreServiceArgs.builder()
/// .serviceId("test-service")
/// .location("us-central1")
/// .databaseType("SPANNER")
/// .hiveMetastoreConfig(MetastoreServiceHiveMetastoreConfigArgs.builder()
/// .version("3.1.2")
/// .build())
/// .scalingConfig(MetastoreServiceScalingConfigArgs.builder()
/// .autoscalingConfig(MetastoreServiceScalingConfigAutoscalingConfigArgs.builder()
/// .autoscalingEnabled(true)
/// .limitConfig(MetastoreServiceScalingConfigAutoscalingConfigLimitConfigArgs.builder()
/// .minScalingFactor(0.1)
/// .maxScalingFactor(1.0)
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
/// testResource:
/// type: gcp:dataproc:MetastoreService
/// name: test_resource
/// properties:
/// serviceId: test-service
/// location: us-central1
/// databaseType: SPANNER
/// hiveMetastoreConfig:
/// version: 3.1.2
/// scalingConfig:
/// autoscalingConfig:
/// autoscalingEnabled: true
/// limitConfig:
/// minScalingFactor: 0.1
/// maxScalingFactor: 1
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Dataproc Metastore Service Autoscaling Min Scaling Factor
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const testResource = new gcp.dataproc.MetastoreService("test_resource", {
/// serviceId: "test-service",
/// location: "us-central1",
/// databaseType: "SPANNER",
/// hiveMetastoreConfig: {
/// version: "3.1.2",
/// },
/// scalingConfig: {
/// autoscalingConfig: {
/// autoscalingEnabled: true,
/// limitConfig: {
/// minScalingFactor: 0.1,
/// },
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// test_resource = gcp.dataproc.MetastoreService("test_resource",
/// service_id="test-service",
/// location="us-central1",
/// database_type="SPANNER",
/// hive_metastore_config={
/// "version": "3.1.2",
/// },
/// scaling_config={
/// "autoscaling_config": {
/// "autoscaling_enabled": True,
/// "limit_config": {
/// "min_scaling_factor": 0.1,
/// },
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
/// var testResource = new Gcp.Dataproc.MetastoreService("test_resource", new()
/// {
/// ServiceId = "test-service",
/// Location = "us-central1",
/// DatabaseType = "SPANNER",
/// HiveMetastoreConfig = new Gcp.Dataproc.Inputs.MetastoreServiceHiveMetastoreConfigArgs
/// {
/// Version = "3.1.2",
/// },
/// ScalingConfig = new Gcp.Dataproc.Inputs.MetastoreServiceScalingConfigArgs
/// {
/// AutoscalingConfig = new Gcp.Dataproc.Inputs.MetastoreServiceScalingConfigAutoscalingConfigArgs
/// {
/// AutoscalingEnabled = true,
/// LimitConfig = new Gcp.Dataproc.Inputs.MetastoreServiceScalingConfigAutoscalingConfigLimitConfigArgs
/// {
/// MinScalingFactor = 0.1,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataproc"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := dataproc.NewMetastoreService(ctx, "test_resource", &dataproc.MetastoreServiceArgs{
/// ServiceId:    pulumi.String("test-service"),
/// Location:     pulumi.String("us-central1"),
/// DatabaseType: pulumi.String("SPANNER"),
/// HiveMetastoreConfig: &dataproc.MetastoreServiceHiveMetastoreConfigArgs{
/// Version: pulumi.String("3.1.2"),
/// },
/// ScalingConfig: &dataproc.MetastoreServiceScalingConfigArgs{
/// AutoscalingConfig: &dataproc.MetastoreServiceScalingConfigAutoscalingConfigArgs{
/// AutoscalingEnabled: pulumi.Bool(true),
/// LimitConfig: &dataproc.MetastoreServiceScalingConfigAutoscalingConfigLimitConfigArgs{
/// MinScalingFactor: pulumi.Float64(0.1),
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
/// import com.pulumi.gcp.dataproc.MetastoreService;
/// import com.pulumi.gcp.dataproc.MetastoreServiceArgs;
/// import com.pulumi.gcp.dataproc.inputs.MetastoreServiceHiveMetastoreConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.MetastoreServiceScalingConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.MetastoreServiceScalingConfigAutoscalingConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.MetastoreServiceScalingConfigAutoscalingConfigLimitConfigArgs;
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
/// var testResource = new MetastoreService("testResource", MetastoreServiceArgs.builder()
/// .serviceId("test-service")
/// .location("us-central1")
/// .databaseType("SPANNER")
/// .hiveMetastoreConfig(MetastoreServiceHiveMetastoreConfigArgs.builder()
/// .version("3.1.2")
/// .build())
/// .scalingConfig(MetastoreServiceScalingConfigArgs.builder()
/// .autoscalingConfig(MetastoreServiceScalingConfigAutoscalingConfigArgs.builder()
/// .autoscalingEnabled(true)
/// .limitConfig(MetastoreServiceScalingConfigAutoscalingConfigLimitConfigArgs.builder()
/// .minScalingFactor(0.1)
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
/// testResource:
/// type: gcp:dataproc:MetastoreService
/// name: test_resource
/// properties:
/// serviceId: test-service
/// location: us-central1
/// databaseType: SPANNER
/// hiveMetastoreConfig:
/// version: 3.1.2
/// scalingConfig:
/// autoscalingConfig:
/// autoscalingEnabled: true
/// limitConfig:
/// minScalingFactor: 0.1
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Dataproc Metastore Service Autoscaling No Limit Config
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const testResource = new gcp.dataproc.MetastoreService("test_resource", {
/// serviceId: "test-service",
/// location: "us-central1",
/// databaseType: "SPANNER",
/// hiveMetastoreConfig: {
/// version: "3.1.2",
/// },
/// scalingConfig: {
/// autoscalingConfig: {
/// autoscalingEnabled: true,
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// test_resource = gcp.dataproc.MetastoreService("test_resource",
/// service_id="test-service",
/// location="us-central1",
/// database_type="SPANNER",
/// hive_metastore_config={
/// "version": "3.1.2",
/// },
/// scaling_config={
/// "autoscaling_config": {
/// "autoscaling_enabled": True,
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
/// var testResource = new Gcp.Dataproc.MetastoreService("test_resource", new()
/// {
/// ServiceId = "test-service",
/// Location = "us-central1",
/// DatabaseType = "SPANNER",
/// HiveMetastoreConfig = new Gcp.Dataproc.Inputs.MetastoreServiceHiveMetastoreConfigArgs
/// {
/// Version = "3.1.2",
/// },
/// ScalingConfig = new Gcp.Dataproc.Inputs.MetastoreServiceScalingConfigArgs
/// {
/// AutoscalingConfig = new Gcp.Dataproc.Inputs.MetastoreServiceScalingConfigAutoscalingConfigArgs
/// {
/// AutoscalingEnabled = true,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataproc"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := dataproc.NewMetastoreService(ctx, "test_resource", &dataproc.MetastoreServiceArgs{
/// ServiceId:    pulumi.String("test-service"),
/// Location:     pulumi.String("us-central1"),
/// DatabaseType: pulumi.String("SPANNER"),
/// HiveMetastoreConfig: &dataproc.MetastoreServiceHiveMetastoreConfigArgs{
/// Version: pulumi.String("3.1.2"),
/// },
/// ScalingConfig: &dataproc.MetastoreServiceScalingConfigArgs{
/// AutoscalingConfig: &dataproc.MetastoreServiceScalingConfigAutoscalingConfigArgs{
/// AutoscalingEnabled: pulumi.Bool(true),
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
/// import com.pulumi.gcp.dataproc.MetastoreService;
/// import com.pulumi.gcp.dataproc.MetastoreServiceArgs;
/// import com.pulumi.gcp.dataproc.inputs.MetastoreServiceHiveMetastoreConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.MetastoreServiceScalingConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.MetastoreServiceScalingConfigAutoscalingConfigArgs;
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
/// var testResource = new MetastoreService("testResource", MetastoreServiceArgs.builder()
/// .serviceId("test-service")
/// .location("us-central1")
/// .databaseType("SPANNER")
/// .hiveMetastoreConfig(MetastoreServiceHiveMetastoreConfigArgs.builder()
/// .version("3.1.2")
/// .build())
/// .scalingConfig(MetastoreServiceScalingConfigArgs.builder()
/// .autoscalingConfig(MetastoreServiceScalingConfigAutoscalingConfigArgs.builder()
/// .autoscalingEnabled(true)
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// testResource:
/// type: gcp:dataproc:MetastoreService
/// name: test_resource
/// properties:
/// serviceId: test-service
/// location: us-central1
/// databaseType: SPANNER
/// hiveMetastoreConfig:
/// version: 3.1.2
/// scalingConfig:
/// autoscalingConfig:
/// autoscalingEnabled: true
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Service can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/services/{{service_id}}`
///
/// * `{{project}}/{{location}}/{{service_id}}`
///
/// * `{{location}}/{{service_id}}`
///
/// When using the `pulumi import` command, Service can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:dataproc/metastoreService:MetastoreService default projects/{{project}}/locations/{{location}}/services/{{service_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataproc/metastoreService:MetastoreService default {{project}}/{{location}}/{{service_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataproc/metastoreService:MetastoreService default {{location}}/{{service_id}}
/// ```
class MetastoreService extends CustomResource {
  /// A Cloud Storage URI (starting with gs://) that specifies where artifacts related to the metastore service are stored.
  late final Output<String> artifactGcsUri;

  /// Output only. The time when the metastore service was created.
  late final Output<String> createTime;

  /// The database type that the Metastore service stores its data.
  /// Default value is `MYSQL`.
  /// Possible values are: `MYSQL`, `SPANNER`.
  late final Output<String?> databaseType;

  /// Indicates if the dataproc metastore should be protected against accidental deletions.
  late final Output<bool?> deletionProtection;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Information used to configure the Dataproc Metastore service to encrypt
  /// customer data at rest.
  /// Structure is documented below.
  late final Output<MetastoreServiceEncryptionConfig?> encryptionConfig;

  /// The URI of the endpoint used to access the metastore service.
  late final Output<String> endpointUri;

  /// Configuration information specific to running Hive metastore software as the metastore service.
  /// Structure is documented below.
  late final Output<MetastoreServiceHiveMetastoreConfig?> hiveMetastoreConfig;

  /// User-defined labels for the metastore service.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The location where the metastore service should reside.
  /// The default value is <span pulumi-lang-nodejs="`global`" pulumi-lang-dotnet="`Global`" pulumi-lang-go="`global`" pulumi-lang-python="`global`" pulumi-lang-yaml="`global`" pulumi-lang-java="`global`">`global`</span>.
  late final Output<String?> location;

  /// The one hour maintenance window of the metastore service.
  /// This specifies when the service can be restarted for maintenance purposes in UTC time.
  /// Maintenance window is not needed for services with the `SPANNER` database type.
  /// Structure is documented below.
  late final Output<MetastoreServiceMaintenanceWindow?> maintenanceWindow;

  /// The setting that defines how metastore metadata should be integrated with external services and systems.
  /// Structure is documented below.
  late final Output<MetastoreServiceMetadataIntegration?> metadataIntegration;

  /// The relative resource name of the metastore service.
  late final Output<String> name;

  /// The relative resource name of the VPC network on which the instance can be accessed. It is specified in the following form:
  /// "projects/{projectNumber}/global/networks/{network_id}".
  late final Output<String> network;

  /// The configuration specifying the network settings for the Dataproc Metastore service.
  /// Structure is documented below.
  late final Output<MetastoreServiceNetworkConfig?> networkConfig;

  /// The TCP port at which the metastore service is reached. Default: 9083.
  late final Output<int> port;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// The release channel of the service. If unspecified, defaults to `STABLE`.
  /// Default value is `STABLE`.
  /// Possible values are: `CANARY`, `STABLE`.
  late final Output<String?> releaseChannel;

  /// Represents the scaling configuration of a metastore service.
  /// Structure is documented below.
  late final Output<MetastoreServiceScalingConfig?> scalingConfig;

  /// The configuration of scheduled backup for the metastore service.
  /// Structure is documented below.
  late final Output<MetastoreServiceScheduledBackup?> scheduledBackup;

  /// The ID of the metastore service. The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_),
  /// and hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of between
  /// 3 and 63 characters.
  late final Output<String> serviceId;

  /// The current state of the metastore service.
  late final Output<String> state;

  /// Additional information about the current state of the metastore service, if available.
  late final Output<String> stateMessage;

  /// A map of resource manager tags.
  /// Resource manager tag keys and values have the same definition as resource manager tags.
  /// Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/{tag_value_id}.
  late final Output<Map<String, String>?> tags;

  /// The configuration specifying telemetry settings for the Dataproc Metastore service. If unspecified defaults to JSON.
  /// Structure is documented below.
  late final Output<MetastoreServiceTelemetryConfig> telemetryConfig;

  /// The tier of the service.
  /// Possible values are: `DEVELOPER`, `ENTERPRISE`.
  late final Output<String> tier;

  /// The globally unique resource identifier of the metastore service.
  late final Output<String> uid;

  /// Output only. The time when the metastore service was last updated.
  late final Output<String> updateTime;

  MetastoreService(
    String name, {
    MetastoreServiceArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:dataproc/metastoreService:MetastoreService',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.artifactGcsUri = Output.createUnknown<String>();
    this.createTime = Output.createUnknown<String>();
    this.databaseType = Output.createUnknown<String?>();
    this.deletionProtection = Output.createUnknown<bool?>();
    this.effectiveLabels = Output.createUnknown<Map<String, String>>();
    this.encryptionConfig =
        Output.createUnknown<MetastoreServiceEncryptionConfig?>();
    this.endpointUri = Output.createUnknown<String>();
    this.hiveMetastoreConfig =
        Output.createUnknown<MetastoreServiceHiveMetastoreConfig?>();
    this.labels = Output.createUnknown<Map<String, String>?>();
    this.location = Output.createUnknown<String?>();
    this.maintenanceWindow =
        Output.createUnknown<MetastoreServiceMaintenanceWindow?>();
    this.metadataIntegration =
        Output.createUnknown<MetastoreServiceMetadataIntegration?>();
    this.name = Output.createUnknown<String>();
    this.network = Output.createUnknown<String>();
    this.networkConfig = Output.createUnknown<MetastoreServiceNetworkConfig?>();
    this.port = Output.createUnknown<int>();
    this.project = Output.createUnknown<String>();
    this.pulumiLabels = Output.createUnknown<Map<String, String>>();
    this.releaseChannel = Output.createUnknown<String?>();
    this.scalingConfig = Output.createUnknown<MetastoreServiceScalingConfig?>();
    this.scheduledBackup =
        Output.createUnknown<MetastoreServiceScheduledBackup?>();
    this.serviceId = Output.createUnknown<String>();
    this.state = Output.createUnknown<String>();
    this.stateMessage = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.telemetryConfig =
        Output.createUnknown<MetastoreServiceTelemetryConfig>();
    this.tier = Output.createUnknown<String>();
    this.uid = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}

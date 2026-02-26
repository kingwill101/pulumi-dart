import 'package:pulumi/pulumi.dart';
import '../cloud_vm_cluster_data_collection_options/cloud_vm_cluster_data_collection_options.dart';
import '../cloud_vm_cluster_iorm_config_cache/cloud_vm_cluster_iorm_config_cache.dart';
import '../cloud_vm_cluster_timeouts/cloud_vm_cluster_timeouts.dart';
import 'cloud_vm_cluster_args.dart';

/// Terraform to manage cloud vm cluster resource in AWS for Oracle Database@AWS. If underlying odb network and cloud exadata infrastructure is shared, ARN must be used while creating VM cluster.
///
/// You can find out more about Oracle Database@AWS from [User Guide](https://docs.aws.amazon.com/odb/latest/UserGuide/what-is-odb.html).
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const withMinimumParameter = new aws.odb.CloudVmCluster("with_minimum_parameter", {
/// displayName: "my_vm_cluster",
/// cloudExadataInfrastructureId: "<aws_odb_cloud_exadata_infrastructure_id>",
/// cpuCoreCount: 6,
/// giVersion: "23.0.0.0",
/// hostnamePrefix: "apollo12",
/// sshPublicKeys: ["public-ssh-key"],
/// odbNetworkId: "<aws_odb_network_id>",
/// isLocalBackupEnabled: true,
/// isSparseDiskgroupEnabled: true,
/// licenseModel: "LICENSE_INCLUDED",
/// dataStorageSizeInTbs: 20,
/// dbServers: [
/// "db-server-1",
/// "db-server-2",
/// ],
/// dbNodeStorageSizeInGbs: 120,
/// memorySizeInGbs: 60,
/// dataCollectionOptions: {
/// isDiagnosticsEventsEnabled: false,
/// isHealthMonitoringEnabled: false,
/// isIncidentLogsEnabled: false,
/// },
/// });
/// const withAllParameters = new aws.odb.CloudVmCluster("with_all_parameters", {
/// displayName: "my_vm_cluster",
/// cloudExadataInfrastructureId: "<aws_odb_cloud_exadata_infrastructure_id>",
/// cpuCoreCount: 6,
/// giVersion: "23.0.0.0",
/// hostnamePrefix: "apollo12",
/// sshPublicKeys: ["my-ssh-key"],
/// odbNetworkId: "<aws_odb_network_id>",
/// isLocalBackupEnabled: true,
/// isSparseDiskgroupEnabled: true,
/// licenseModel: "LICENSE_INCLUDED",
/// dataStorageSizeInTbs: 20,
/// dbServers: [
/// "my-dbserver-1",
/// "my-db-server-2",
/// ],
/// dbNodeStorageSizeInGbs: 120,
/// memorySizeInGbs: 60,
/// clusterName: "julia-13",
/// timezone: "UTC",
/// scanListenerPortTcp: 1521,
/// tags: {
/// env: "dev",
/// },
/// dataCollectionOptions: {
/// isDiagnosticsEventsEnabled: true,
/// isHealthMonitoringEnabled: true,
/// isIncidentLogsEnabled: true,
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// with_minimum_parameter = aws.odb.CloudVmCluster("with_minimum_parameter",
/// display_name="my_vm_cluster",
/// cloud_exadata_infrastructure_id="<aws_odb_cloud_exadata_infrastructure_id>",
/// cpu_core_count=6,
/// gi_version="23.0.0.0",
/// hostname_prefix="apollo12",
/// ssh_public_keys=["public-ssh-key"],
/// odb_network_id="<aws_odb_network_id>",
/// is_local_backup_enabled=True,
/// is_sparse_diskgroup_enabled=True,
/// license_model="LICENSE_INCLUDED",
/// data_storage_size_in_tbs=20,
/// db_servers=[
/// "db-server-1",
/// "db-server-2",
/// ],
/// db_node_storage_size_in_gbs=120,
/// memory_size_in_gbs=60,
/// data_collection_options={
/// "is_diagnostics_events_enabled": False,
/// "is_health_monitoring_enabled": False,
/// "is_incident_logs_enabled": False,
/// })
/// with_all_parameters = aws.odb.CloudVmCluster("with_all_parameters",
/// display_name="my_vm_cluster",
/// cloud_exadata_infrastructure_id="<aws_odb_cloud_exadata_infrastructure_id>",
/// cpu_core_count=6,
/// gi_version="23.0.0.0",
/// hostname_prefix="apollo12",
/// ssh_public_keys=["my-ssh-key"],
/// odb_network_id="<aws_odb_network_id>",
/// is_local_backup_enabled=True,
/// is_sparse_diskgroup_enabled=True,
/// license_model="LICENSE_INCLUDED",
/// data_storage_size_in_tbs=20,
/// db_servers=[
/// "my-dbserver-1",
/// "my-db-server-2",
/// ],
/// db_node_storage_size_in_gbs=120,
/// memory_size_in_gbs=60,
/// cluster_name="julia-13",
/// timezone="UTC",
/// scan_listener_port_tcp=1521,
/// tags={
/// "env": "dev",
/// },
/// data_collection_options={
/// "is_diagnostics_events_enabled": True,
/// "is_health_monitoring_enabled": True,
/// "is_incident_logs_enabled": True,
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var withMinimumParameter = new Aws.Odb.CloudVmCluster("with_minimum_parameter", new()
/// {
/// DisplayName = "my_vm_cluster",
/// CloudExadataInfrastructureId = "<aws_odb_cloud_exadata_infrastructure_id>",
/// CpuCoreCount = 6,
/// GiVersion = "23.0.0.0",
/// HostnamePrefix = "apollo12",
/// SshPublicKeys = new[]
/// {
/// "public-ssh-key",
/// },
/// OdbNetworkId = "<aws_odb_network_id>",
/// IsLocalBackupEnabled = true,
/// IsSparseDiskgroupEnabled = true,
/// LicenseModel = "LICENSE_INCLUDED",
/// DataStorageSizeInTbs = 20,
/// DbServers = new[]
/// {
/// "db-server-1",
/// "db-server-2",
/// },
/// DbNodeStorageSizeInGbs = 120,
/// MemorySizeInGbs = 60,
/// DataCollectionOptions = new Aws.Odb.Inputs.CloudVmClusterDataCollectionOptionsArgs
/// {
/// IsDiagnosticsEventsEnabled = false,
/// IsHealthMonitoringEnabled = false,
/// IsIncidentLogsEnabled = false,
/// },
/// });
///
/// var withAllParameters = new Aws.Odb.CloudVmCluster("with_all_parameters", new()
/// {
/// DisplayName = "my_vm_cluster",
/// CloudExadataInfrastructureId = "<aws_odb_cloud_exadata_infrastructure_id>",
/// CpuCoreCount = 6,
/// GiVersion = "23.0.0.0",
/// HostnamePrefix = "apollo12",
/// SshPublicKeys = new[]
/// {
/// "my-ssh-key",
/// },
/// OdbNetworkId = "<aws_odb_network_id>",
/// IsLocalBackupEnabled = true,
/// IsSparseDiskgroupEnabled = true,
/// LicenseModel = "LICENSE_INCLUDED",
/// DataStorageSizeInTbs = 20,
/// DbServers = new[]
/// {
/// "my-dbserver-1",
/// "my-db-server-2",
/// },
/// DbNodeStorageSizeInGbs = 120,
/// MemorySizeInGbs = 60,
/// ClusterName = "julia-13",
/// Timezone = "UTC",
/// ScanListenerPortTcp = 1521,
/// Tags =
/// {
/// { "env", "dev" },
/// },
/// DataCollectionOptions = new Aws.Odb.Inputs.CloudVmClusterDataCollectionOptionsArgs
/// {
/// IsDiagnosticsEventsEnabled = true,
/// IsHealthMonitoringEnabled = true,
/// IsIncidentLogsEnabled = true,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/odb"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := odb.NewCloudVmCluster(ctx, "with_minimum_parameter", &odb.CloudVmClusterArgs{
/// DisplayName:                  pulumi.String("my_vm_cluster"),
/// CloudExadataInfrastructureId: pulumi.String("<aws_odb_cloud_exadata_infrastructure_id>"),
/// CpuCoreCount:                 pulumi.Int(6),
/// GiVersion:                    pulumi.String("23.0.0.0"),
/// HostnamePrefix:               pulumi.String("apollo12"),
/// SshPublicKeys: pulumi.StringArray{
/// pulumi.String("public-ssh-key"),
/// },
/// OdbNetworkId:             pulumi.String("<aws_odb_network_id>"),
/// IsLocalBackupEnabled:     pulumi.Bool(true),
/// IsSparseDiskgroupEnabled: pulumi.Bool(true),
/// LicenseModel:             pulumi.String("LICENSE_INCLUDED"),
/// DataStorageSizeInTbs:     pulumi.Float64(20),
/// DbServers: pulumi.StringArray{
/// pulumi.String("db-server-1"),
/// pulumi.String("db-server-2"),
/// },
/// DbNodeStorageSizeInGbs: pulumi.Int(120),
/// MemorySizeInGbs:        pulumi.Int(60),
/// DataCollectionOptions: &odb.CloudVmClusterDataCollectionOptionsArgs{
/// IsDiagnosticsEventsEnabled: pulumi.Bool(false),
/// IsHealthMonitoringEnabled:  pulumi.Bool(false),
/// IsIncidentLogsEnabled:      pulumi.Bool(false),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = odb.NewCloudVmCluster(ctx, "with_all_parameters", &odb.CloudVmClusterArgs{
/// DisplayName:                  pulumi.String("my_vm_cluster"),
/// CloudExadataInfrastructureId: pulumi.String("<aws_odb_cloud_exadata_infrastructure_id>"),
/// CpuCoreCount:                 pulumi.Int(6),
/// GiVersion:                    pulumi.String("23.0.0.0"),
/// HostnamePrefix:               pulumi.String("apollo12"),
/// SshPublicKeys: pulumi.StringArray{
/// pulumi.String("my-ssh-key"),
/// },
/// OdbNetworkId:             pulumi.String("<aws_odb_network_id>"),
/// IsLocalBackupEnabled:     pulumi.Bool(true),
/// IsSparseDiskgroupEnabled: pulumi.Bool(true),
/// LicenseModel:             pulumi.String("LICENSE_INCLUDED"),
/// DataStorageSizeInTbs:     pulumi.Float64(20),
/// DbServers: pulumi.StringArray{
/// pulumi.String("my-dbserver-1"),
/// pulumi.String("my-db-server-2"),
/// },
/// DbNodeStorageSizeInGbs: pulumi.Int(120),
/// MemorySizeInGbs:        pulumi.Int(60),
/// ClusterName:            pulumi.String("julia-13"),
/// Timezone:               pulumi.String("UTC"),
/// ScanListenerPortTcp:    pulumi.Int(1521),
/// Tags: pulumi.StringMap{
/// "env": pulumi.String("dev"),
/// },
/// DataCollectionOptions: &odb.CloudVmClusterDataCollectionOptionsArgs{
/// IsDiagnosticsEventsEnabled: pulumi.Bool(true),
/// IsHealthMonitoringEnabled:  pulumi.Bool(true),
/// IsIncidentLogsEnabled:      pulumi.Bool(true),
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
/// import com.pulumi.aws.odb.CloudVmCluster;
/// import com.pulumi.aws.odb.CloudVmClusterArgs;
/// import com.pulumi.aws.odb.inputs.CloudVmClusterDataCollectionOptionsArgs;
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
/// var withMinimumParameter = new CloudVmCluster("withMinimumParameter", CloudVmClusterArgs.builder()
/// .displayName("my_vm_cluster")
/// .cloudExadataInfrastructureId("<aws_odb_cloud_exadata_infrastructure_id>")
/// .cpuCoreCount(6)
/// .giVersion("23.0.0.0")
/// .hostnamePrefix("apollo12")
/// .sshPublicKeys("public-ssh-key")
/// .odbNetworkId("<aws_odb_network_id>")
/// .isLocalBackupEnabled(true)
/// .isSparseDiskgroupEnabled(true)
/// .licenseModel("LICENSE_INCLUDED")
/// .dataStorageSizeInTbs(20.0)
/// .dbServers(
/// "db-server-1",
/// "db-server-2")
/// .dbNodeStorageSizeInGbs(120)
/// .memorySizeInGbs(60)
/// .dataCollectionOptions(CloudVmClusterDataCollectionOptionsArgs.builder()
/// .isDiagnosticsEventsEnabled(false)
/// .isHealthMonitoringEnabled(false)
/// .isIncidentLogsEnabled(false)
/// .build())
/// .build());
///
/// var withAllParameters = new CloudVmCluster("withAllParameters", CloudVmClusterArgs.builder()
/// .displayName("my_vm_cluster")
/// .cloudExadataInfrastructureId("<aws_odb_cloud_exadata_infrastructure_id>")
/// .cpuCoreCount(6)
/// .giVersion("23.0.0.0")
/// .hostnamePrefix("apollo12")
/// .sshPublicKeys("my-ssh-key")
/// .odbNetworkId("<aws_odb_network_id>")
/// .isLocalBackupEnabled(true)
/// .isSparseDiskgroupEnabled(true)
/// .licenseModel("LICENSE_INCLUDED")
/// .dataStorageSizeInTbs(20.0)
/// .dbServers(
/// "my-dbserver-1",
/// "my-db-server-2")
/// .dbNodeStorageSizeInGbs(120)
/// .memorySizeInGbs(60)
/// .clusterName("julia-13")
/// .timezone("UTC")
/// .scanListenerPortTcp(1521)
/// .tags(Map.of("env", "dev"))
/// .dataCollectionOptions(CloudVmClusterDataCollectionOptionsArgs.builder()
/// .isDiagnosticsEventsEnabled(true)
/// .isHealthMonitoringEnabled(true)
/// .isIncidentLogsEnabled(true)
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// withMinimumParameter:
/// type: aws:odb:CloudVmCluster
/// name: with_minimum_parameter
/// properties:
/// displayName: my_vm_cluster
/// cloudExadataInfrastructureId: <aws_odb_cloud_exadata_infrastructure_id>
/// cpuCoreCount: 6
/// giVersion: 23.0.0.0
/// hostnamePrefix: apollo12
/// sshPublicKeys:
/// - public-ssh-key
/// odbNetworkId: <aws_odb_network_id>
/// isLocalBackupEnabled: true
/// isSparseDiskgroupEnabled: true
/// licenseModel: LICENSE_INCLUDED
/// dataStorageSizeInTbs: 20
/// dbServers:
/// - db-server-1
/// - db-server-2
/// dbNodeStorageSizeInGbs: 120
/// memorySizeInGbs: 60
/// dataCollectionOptions:
/// isDiagnosticsEventsEnabled: false
/// isHealthMonitoringEnabled: false
/// isIncidentLogsEnabled: false
/// withAllParameters:
/// type: aws:odb:CloudVmCluster
/// name: with_all_parameters
/// properties:
/// displayName: my_vm_cluster
/// cloudExadataInfrastructureId: <aws_odb_cloud_exadata_infrastructure_id>
/// cpuCoreCount: 6
/// giVersion: 23.0.0.0
/// hostnamePrefix: apollo12
/// sshPublicKeys:
/// - my-ssh-key
/// odbNetworkId: <aws_odb_network_id>
/// isLocalBackupEnabled: true
/// isSparseDiskgroupEnabled: true
/// licenseModel: LICENSE_INCLUDED
/// dataStorageSizeInTbs: 20
/// dbServers:
/// - my-dbserver-1
/// - my-db-server-2
/// dbNodeStorageSizeInGbs: 120
/// memorySizeInGbs: 60
/// clusterName: julia-13
/// timezone: UTC
/// scanListenerPortTcp: 1521
/// tags:
/// env: dev
/// dataCollectionOptions:
/// isDiagnosticsEventsEnabled: true
/// isHealthMonitoringEnabled: true
/// isIncidentLogsEnabled: true
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import cloud vm cluster using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:odb/cloudVmCluster:CloudVmCluster example example
/// ```
class CloudVmCluster extends CustomResource {
  /// The Amazon Resource Name (ARN) for the cloud vm cluster.
  late final Output<String> arn;

  /// The ARN of the Exadata infrastructure for this VM cluster. Changing this will create a new resource. Either the combination of<span pulumi-lang-nodejs=" cloudExadataInfrastructureId " pulumi-lang-dotnet=" CloudExadataInfrastructureId " pulumi-lang-go=" cloudExadataInfrastructureId " pulumi-lang-python=" cloud_exadata_infrastructure_id " pulumi-lang-yaml=" cloudExadataInfrastructureId " pulumi-lang-java=" cloudExadataInfrastructureId "> cloud_exadata_infrastructure_id </span>and<span pulumi-lang-nodejs=" odbNetworkId " pulumi-lang-dotnet=" OdbNetworkId " pulumi-lang-go=" odbNetworkId " pulumi-lang-python=" odb_network_id " pulumi-lang-yaml=" odbNetworkId " pulumi-lang-java=" odbNetworkId "> odb_network_id </span>or<span pulumi-lang-nodejs=" cloudExadataInfrastructureArn " pulumi-lang-dotnet=" CloudExadataInfrastructureArn " pulumi-lang-go=" cloudExadataInfrastructureArn " pulumi-lang-python=" cloud_exadata_infrastructure_arn " pulumi-lang-yaml=" cloudExadataInfrastructureArn " pulumi-lang-java=" cloudExadataInfrastructureArn "> cloud_exadata_infrastructure_arn </span>and<span pulumi-lang-nodejs=" odbNetworkArn " pulumi-lang-dotnet=" OdbNetworkArn " pulumi-lang-go=" odbNetworkArn " pulumi-lang-python=" odb_network_arn " pulumi-lang-yaml=" odbNetworkArn " pulumi-lang-java=" odbNetworkArn "> odb_network_arn </span>must be used.
  late final Output<String> cloudExadataInfrastructureArn;

  /// The unique identifier of the Exadata infrastructure for this VM cluster. Changing this will create a new resource. Either the combination of<span pulumi-lang-nodejs=" cloudExadataInfrastructureId " pulumi-lang-dotnet=" CloudExadataInfrastructureId " pulumi-lang-go=" cloudExadataInfrastructureId " pulumi-lang-python=" cloud_exadata_infrastructure_id " pulumi-lang-yaml=" cloudExadataInfrastructureId " pulumi-lang-java=" cloudExadataInfrastructureId "> cloud_exadata_infrastructure_id </span>and<span pulumi-lang-nodejs=" odbNetworkId " pulumi-lang-dotnet=" OdbNetworkId " pulumi-lang-go=" odbNetworkId " pulumi-lang-python=" odb_network_id " pulumi-lang-yaml=" odbNetworkId " pulumi-lang-java=" odbNetworkId "> odb_network_id </span>or<span pulumi-lang-nodejs=" cloudExadataInfrastructureArn " pulumi-lang-dotnet=" CloudExadataInfrastructureArn " pulumi-lang-go=" cloudExadataInfrastructureArn " pulumi-lang-python=" cloud_exadata_infrastructure_arn " pulumi-lang-yaml=" cloudExadataInfrastructureArn " pulumi-lang-java=" cloudExadataInfrastructureArn "> cloud_exadata_infrastructure_arn </span>and<span pulumi-lang-nodejs=" odbNetworkArn " pulumi-lang-dotnet=" OdbNetworkArn " pulumi-lang-go=" odbNetworkArn " pulumi-lang-python=" odb_network_arn " pulumi-lang-yaml=" odbNetworkArn " pulumi-lang-java=" odbNetworkArn "> odb_network_arn </span>must be used.
  late final Output<String> cloudExadataInfrastructureId;

  /// The name of the Grid Infrastructure (GI) cluster. Changing this will create a new resource.
  late final Output<String> clusterName;

  /// The compute model used when the instance is created or cloned — either ECPU or OCPU. ECPU is a virtualized compute unit; OCPU is a physical processor core with hyper-threading.
  late final Output<String> computeModel;

  /// The number of CPU cores to enable on the VM cluster. Changing this will create a new resource.
  late final Output<int> cpuCoreCount;

  /// The timestamp when the VM cluster was created.
  late final Output<String> createdAt;

  /// The set of preferences for the various diagnostic collection options for the VM cluster.
  late final Output<CloudVmClusterDataCollectionOptions> dataCollectionOptions;

  /// The size of the data disk group, in terabytes (TBs), to allocate for the VM cluster. Changing this will create a new resource.
  ///
  /// The following arguments are optional:
  late final Output<double> dataStorageSizeInTbs;

  /// The amount of local node storage, in gigabytes (GBs), to allocate for the VM cluster. Changing this will create a new resource.
  late final Output<int> dbNodeStorageSizeInGbs;

  /// The list of database servers for the VM cluster. Changing this will create a new resource.
  late final Output<List<String>> dbServers;

  /// The type of redundancy for the VM cluster: NORMAL (2-way) or HIGH (3-way).
  /// * `AttrDomain` - The domain name associated with the VM cluster.
  late final Output<String> diskRedundancy;

  /// A user-friendly name for the VM cluster. Changing this will create a new resource.
  late final Output<String> displayName;

  /// The domain name associated with the VM cluster.
  late final Output<String> domain;

  /// A valid software version of Oracle Grid Infrastructure (GI). To get the list of valid values, use the ListGiVersions operation and specify the shape of the Exadata infrastructure. Example: 19.0.0.0 Changing this will create a new resource.
  late final Output<String> giVersion;

  /// A complete software version of Oracle Grid Infrastructure (GI).
  late final Output<String> giVersionComputed;

  /// The host name prefix for the VM cluster. Constraints: - Can't be "localhost" or "hostname". - Can't contain "-version". - The maximum length of the combined hostname and domain is 63 characters. - The hostname must be unique within the subnet. Changing this will create a new resource.
  late final Output<String> hostnamePrefix;

  /// The host name for the VM cluster. Constraints: - Can't be "localhost" or "hostname". - Can't contain "-version". - The maximum length of the combined hostname and domain is 63 characters. - The hostname must be unique within the subnet. This member is required. Changing this will create a new resource.
  late final Output<String> hostnamePrefixComputed;

  /// The Exadata IORM (I/O Resource Manager) configuration cache details for the VM cluster.
  late final Output<List<CloudVmClusterIormConfigCache>> iormConfigCaches;

  /// Specifies whether to enable database backups to local Exadata storage for the VM cluster. Changing this will create a new resource.
  late final Output<bool> isLocalBackupEnabled;

  /// Specifies whether to create a sparse disk group for the VM cluster. Changing this will create a new resource.
  late final Output<bool> isSparseDiskgroupEnabled;

  /// The OCID of the most recent maintenance update history entry.
  late final Output<String> lastUpdateHistoryEntryId;

  /// The Oracle license model to apply to the VM cluster. Default: LICENSE_INCLUDED. Changing this will create a new resource.
  late final Output<String> licenseModel;

  /// The listener port number configured on the VM cluster.
  late final Output<int> listenerPort;

  /// The amount of memory, in gigabytes (GBs), to allocate for the VM cluster. Changing this will create a new resource.
  late final Output<int> memorySizeInGbs;

  /// The total number of nodes in the VM cluster.
  late final Output<int> nodeCount;

  /// The name of the OCI resource anchor associated with the VM cluster.
  late final Output<String> ociResourceAnchorName;

  /// The HTTPS link to the VM cluster resource in OCI.
  late final Output<String> ociUrl;

  /// The OCID (Oracle Cloud Identifier) of the VM cluster.
  late final Output<String> ocid;

  /// The ARN of the ODB network for the VM cluster. Changing this will create a new resource. Either the combination of<span pulumi-lang-nodejs=" cloudExadataInfrastructureId " pulumi-lang-dotnet=" CloudExadataInfrastructureId " pulumi-lang-go=" cloudExadataInfrastructureId " pulumi-lang-python=" cloud_exadata_infrastructure_id " pulumi-lang-yaml=" cloudExadataInfrastructureId " pulumi-lang-java=" cloudExadataInfrastructureId "> cloud_exadata_infrastructure_id </span>and<span pulumi-lang-nodejs=" odbNetworkId " pulumi-lang-dotnet=" OdbNetworkId " pulumi-lang-go=" odbNetworkId " pulumi-lang-python=" odb_network_id " pulumi-lang-yaml=" odbNetworkId " pulumi-lang-java=" odbNetworkId "> odb_network_id </span>or<span pulumi-lang-nodejs=" cloudExadataInfrastructureArn " pulumi-lang-dotnet=" CloudExadataInfrastructureArn " pulumi-lang-go=" cloudExadataInfrastructureArn " pulumi-lang-python=" cloud_exadata_infrastructure_arn " pulumi-lang-yaml=" cloudExadataInfrastructureArn " pulumi-lang-java=" cloudExadataInfrastructureArn "> cloud_exadata_infrastructure_arn </span>and<span pulumi-lang-nodejs=" odbNetworkArn " pulumi-lang-dotnet=" OdbNetworkArn " pulumi-lang-go=" odbNetworkArn " pulumi-lang-python=" odb_network_arn " pulumi-lang-yaml=" odbNetworkArn " pulumi-lang-java=" odbNetworkArn "> odb_network_arn </span>must be used.
  late final Output<String> odbNetworkArn;

  /// The unique identifier of the ODB network for the VM cluster. Changing this will create a new resource. Either the combination of<span pulumi-lang-nodejs=" cloudExadataInfrastructureId " pulumi-lang-dotnet=" CloudExadataInfrastructureId " pulumi-lang-go=" cloudExadataInfrastructureId " pulumi-lang-python=" cloud_exadata_infrastructure_id " pulumi-lang-yaml=" cloudExadataInfrastructureId " pulumi-lang-java=" cloudExadataInfrastructureId "> cloud_exadata_infrastructure_id </span>and<span pulumi-lang-nodejs=" odbNetworkId " pulumi-lang-dotnet=" OdbNetworkId " pulumi-lang-go=" odbNetworkId " pulumi-lang-python=" odb_network_id " pulumi-lang-yaml=" odbNetworkId " pulumi-lang-java=" odbNetworkId "> odb_network_id </span>or<span pulumi-lang-nodejs=" cloudExadataInfrastructureArn " pulumi-lang-dotnet=" CloudExadataInfrastructureArn " pulumi-lang-go=" cloudExadataInfrastructureArn " pulumi-lang-python=" cloud_exadata_infrastructure_arn " pulumi-lang-yaml=" cloudExadataInfrastructureArn " pulumi-lang-java=" cloudExadataInfrastructureArn "> cloud_exadata_infrastructure_arn </span>and<span pulumi-lang-nodejs=" odbNetworkArn " pulumi-lang-dotnet=" OdbNetworkArn " pulumi-lang-go=" odbNetworkArn " pulumi-lang-python=" odb_network_arn " pulumi-lang-yaml=" odbNetworkArn " pulumi-lang-java=" odbNetworkArn "> odb_network_arn </span>must be used.
  late final Output<String> odbNetworkId;

  /// The percentage of progress made on the current operation for the VM cluster.
  late final Output<double> percentProgress;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The fully qualified domain name (FQDN) for the SCAN IP addresses associated with the VM cluster.
  late final Output<String> scanDnsName;

  /// The OCID of the DNS record for the SCAN IPs linked to the VM cluster.
  late final Output<String> scanDnsRecordId;

  /// The list of OCIDs for SCAN IP addresses associated with the VM cluster.
  late final Output<List<String>> scanIpIds;

  /// The port number for TCP connections to the single client access name (SCAN) listener. Valid values: 1024–8999, except 2484, 6100, 6200, 7060, 7070, 7085, and 7879. Default: 1521. Changing this will create a new resource.
  late final Output<int> scanListenerPortTcp;

  /// The hardware model name of the Exadata infrastructure running the VM cluster.
  late final Output<String> shape;

  /// The public key portion of one or more key pairs used for SSH access to the VM cluster. Changing this will create a new resource.
  late final Output<List<String>> sshPublicKeys;

  /// The current lifecycle status of the VM cluster.
  late final Output<String> status;

  /// Additional information regarding the current status of the VM cluster.
  late final Output<String> statusReason;

  /// The local node storage allocated to the VM cluster, in gigabytes (GB).
  late final Output<int> storageSizeInGbs;

  /// The operating system version of the image chosen for the VM cluster.
  late final Output<String> systemVersion;

  /// A map of tags to assign to the exadata infrastructure. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// The combined set of user-defined and provider-defined tags.
  late final Output<Map<String, String>> tagsAll;
  late final Output<CloudVmClusterTimeouts?> timeouts;

  /// The configured time zone of the VM cluster. Changing this will create a new resource.
  late final Output<String> timezone;

  /// The virtual IP (VIP) addresses assigned to the VM cluster. CRS assigns one VIP per node for failover support.
  late final Output<List<String>> vipIds;

  CloudVmCluster(
    String name, {
    CloudVmClusterArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:odb/cloudVmCluster:CloudVmCluster',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.cloudExadataInfrastructureArn = Output.createUnknown<String>();
    this.cloudExadataInfrastructureId = Output.createUnknown<String>();
    this.clusterName = Output.createUnknown<String>();
    this.computeModel = Output.createUnknown<String>();
    this.cpuCoreCount = Output.createUnknown<int>();
    this.createdAt = Output.createUnknown<String>();
    this.dataCollectionOptions =
        Output.createUnknown<CloudVmClusterDataCollectionOptions>();
    this.dataStorageSizeInTbs = Output.createUnknown<double>();
    this.dbNodeStorageSizeInGbs = Output.createUnknown<int>();
    this.dbServers = Output.createUnknown<List<String>>();
    this.diskRedundancy = Output.createUnknown<String>();
    this.displayName = Output.createUnknown<String>();
    this.domain = Output.createUnknown<String>();
    this.giVersion = Output.createUnknown<String>();
    this.giVersionComputed = Output.createUnknown<String>();
    this.hostnamePrefix = Output.createUnknown<String>();
    this.hostnamePrefixComputed = Output.createUnknown<String>();
    this.iormConfigCaches =
        Output.createUnknown<List<CloudVmClusterIormConfigCache>>();
    this.isLocalBackupEnabled = Output.createUnknown<bool>();
    this.isSparseDiskgroupEnabled = Output.createUnknown<bool>();
    this.lastUpdateHistoryEntryId = Output.createUnknown<String>();
    this.licenseModel = Output.createUnknown<String>();
    this.listenerPort = Output.createUnknown<int>();
    this.memorySizeInGbs = Output.createUnknown<int>();
    this.nodeCount = Output.createUnknown<int>();
    this.ociResourceAnchorName = Output.createUnknown<String>();
    this.ociUrl = Output.createUnknown<String>();
    this.ocid = Output.createUnknown<String>();
    this.odbNetworkArn = Output.createUnknown<String>();
    this.odbNetworkId = Output.createUnknown<String>();
    this.percentProgress = Output.createUnknown<double>();
    this.region = Output.createUnknown<String>();
    this.scanDnsName = Output.createUnknown<String>();
    this.scanDnsRecordId = Output.createUnknown<String>();
    this.scanIpIds = Output.createUnknown<List<String>>();
    this.scanListenerPortTcp = Output.createUnknown<int>();
    this.shape = Output.createUnknown<String>();
    this.sshPublicKeys = Output.createUnknown<List<String>>();
    this.status = Output.createUnknown<String>();
    this.statusReason = Output.createUnknown<String>();
    this.storageSizeInGbs = Output.createUnknown<int>();
    this.systemVersion = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.timeouts = Output.createUnknown<CloudVmClusterTimeouts?>();
    this.timezone = Output.createUnknown<String>();
    this.vipIds = Output.createUnknown<List<String>>();
  }
}

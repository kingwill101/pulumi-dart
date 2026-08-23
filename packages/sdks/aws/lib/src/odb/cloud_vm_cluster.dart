import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_vm_cluster_args.dart';
import 'cloud_vm_cluster_data_collection_options.dart';
import 'cloud_vm_cluster_state.dart';
import 'cloud_vm_cluster_timeouts.dart';

/// Terraform to manage cloud vm cluster resource in AWS for Oracle Database@AWS. If underlying odb network and cloud exadata infrastructure is shared, ARN must be used while creating VM cluster.
///
/// You can find out more about Oracle Database@AWS from [User Guide](https://docs.aws.amazon.com/odb/latest/UserGuide/what-is-odb.html).
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const withMinimumParameter = new aws.odb.CloudVmCluster("with_minimum_parameter", {
///     displayName: "my_vm_cluster",
///     cloudExadataInfrastructureId: "<aws_odb_cloud_exadata_infrastructure_id>",
///     cpuCoreCount: 6,
///     giVersion: "23.0.0.0",
///     hostnamePrefix: "apollo12",
///     sshPublicKeys: ["public-ssh-key"],
///     odbNetworkId: "<aws_odb_network_id>",
///     isLocalBackupEnabled: true,
///     isSparseDiskgroupEnabled: true,
///     licenseModel: "LICENSE_INCLUDED",
///     dataStorageSizeInTbs: 20,
///     dbServers: [
///         "db-server-1",
///         "db-server-2",
///     ],
///     dbNodeStorageSizeInGbs: 120,
///     memorySizeInGbs: 60,
///     dataCollectionOptions: {
///         isDiagnosticsEventsEnabled: false,
///         isHealthMonitoringEnabled: false,
///         isIncidentLogsEnabled: false,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// with_minimum_parameter = aws.odb.CloudVmCluster("with_minimum_parameter",
///     display_name="my_vm_cluster",
///     cloud_exadata_infrastructure_id="<aws_odb_cloud_exadata_infrastructure_id>",
///     cpu_core_count=6,
///     gi_version="23.0.0.0",
///     hostname_prefix="apollo12",
///     ssh_public_keys=["public-ssh-key"],
///     odb_network_id="<aws_odb_network_id>",
///     is_local_backup_enabled=True,
///     is_sparse_diskgroup_enabled=True,
///     license_model="LICENSE_INCLUDED",
///     data_storage_size_in_tbs=float(20),
///     db_servers=[
///         "db-server-1",
///         "db-server-2",
///     ],
///     db_node_storage_size_in_gbs=120,
///     memory_size_in_gbs=60,
///     data_collection_options={
///         "is_diagnostics_events_enabled": False,
///         "is_health_monitoring_enabled": False,
///         "is_incident_logs_enabled": False,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var withMinimumParameter = new Aws.Odb.CloudVmCluster("with_minimum_parameter", new()
///     {
///         DisplayName = "my_vm_cluster",
///         CloudExadataInfrastructureId = "<aws_odb_cloud_exadata_infrastructure_id>",
///         CpuCoreCount = 6,
///         GiVersion = "23.0.0.0",
///         HostnamePrefix = "apollo12",
///         SshPublicKeys = new[]
///         {
///             "public-ssh-key",
///         },
///         OdbNetworkId = "<aws_odb_network_id>",
///         IsLocalBackupEnabled = true,
///         IsSparseDiskgroupEnabled = true,
///         LicenseModel = "LICENSE_INCLUDED",
///         DataStorageSizeInTbs = 20,
///         DbServers = new[]
///         {
///             "db-server-1",
///             "db-server-2",
///         },
///         DbNodeStorageSizeInGbs = 120,
///         MemorySizeInGbs = 60,
///         DataCollectionOptions = new Aws.Odb.Inputs.CloudVmClusterDataCollectionOptionsArgs
///         {
///             IsDiagnosticsEventsEnabled = false,
///             IsHealthMonitoringEnabled = false,
///             IsIncidentLogsEnabled = false,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/odb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := odb.NewCloudVmCluster(ctx, "with_minimum_parameter", &odb.CloudVmClusterArgs{
/// 			DisplayName:                  pulumi.String("my_vm_cluster"),
/// 			CloudExadataInfrastructureId: pulumi.String("<aws_odb_cloud_exadata_infrastructure_id>"),
/// 			CpuCoreCount:                 pulumi.Int(6),
/// 			GiVersion:                    pulumi.String("23.0.0.0"),
/// 			HostnamePrefix:               pulumi.String("apollo12"),
/// 			SshPublicKeys: pulumi.StringArray{
/// 				pulumi.String("public-ssh-key"),
/// 			},
/// 			OdbNetworkId:             pulumi.String("<aws_odb_network_id>"),
/// 			IsLocalBackupEnabled:     pulumi.Bool(true),
/// 			IsSparseDiskgroupEnabled: pulumi.Bool(true),
/// 			LicenseModel:             pulumi.String("LICENSE_INCLUDED"),
/// 			DataStorageSizeInTbs:     pulumi.Float64(20),
/// 			DbServers: pulumi.StringArray{
/// 				pulumi.String("db-server-1"),
/// 				pulumi.String("db-server-2"),
/// 			},
/// 			DbNodeStorageSizeInGbs: pulumi.Int(120),
/// 			MemorySizeInGbs:        pulumi.Int(60),
/// 			DataCollectionOptions: &odb.CloudVmClusterDataCollectionOptionsArgs{
/// 				IsDiagnosticsEventsEnabled: pulumi.Bool(false),
/// 				IsHealthMonitoringEnabled:  pulumi.Bool(false),
/// 				IsIncidentLogsEnabled:      pulumi.Bool(false),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_odb_cloudvmcluster" "with_minimum_parameter" {
///   display_name                    = "my_vm_cluster"
///   cloud_exadata_infrastructure_id = "<aws_odb_cloud_exadata_infrastructure_id>"
///   cpu_core_count                  = 6
///   gi_version                      = "23.0.0.0"
///   hostname_prefix                 = "apollo12"
///   ssh_public_keys                 = ["public-ssh-key"]
///   odb_network_id                  = "<aws_odb_network_id>"
///   is_local_backup_enabled         = true
///   is_sparse_diskgroup_enabled     = true
///   license_model                   = "LICENSE_INCLUDED"
///   data_storage_size_in_tbs        = 20
///   db_servers                      = ["db-server-1", "db-server-2"]
///   db_node_storage_size_in_gbs     = 120
///   memory_size_in_gbs              = 60
///   data_collection_options = {
///     is_diagnostics_events_enabled = false
///     is_health_monitoring_enabled  = false
///     is_incident_logs_enabled      = false
///   }
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var withMinimumParameter = new CloudVmCluster("withMinimumParameter", CloudVmClusterArgs.builder()
///             .displayName("my_vm_cluster")
///             .cloudExadataInfrastructureId("<aws_odb_cloud_exadata_infrastructure_id>")
///             .cpuCoreCount(6)
///             .giVersion("23.0.0.0")
///             .hostnamePrefix("apollo12")
///             .sshPublicKeys("public-ssh-key")
///             .odbNetworkId("<aws_odb_network_id>")
///             .isLocalBackupEnabled(true)
///             .isSparseDiskgroupEnabled(true)
///             .licenseModel("LICENSE_INCLUDED")
///             .dataStorageSizeInTbs(20.0)
///             .dbServers(
///                 "db-server-1",
///                 "db-server-2")
///             .dbNodeStorageSizeInGbs(120)
///             .memorySizeInGbs(60)
///             .dataCollectionOptions(CloudVmClusterDataCollectionOptionsArgs.builder()
///                 .isDiagnosticsEventsEnabled(false)
///                 .isHealthMonitoringEnabled(false)
///                 .isIncidentLogsEnabled(false)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   withMinimumParameter:
///     type: aws:odb:CloudVmCluster
///     name: with_minimum_parameter
///     properties:
///       displayName: my_vm_cluster
///       cloudExadataInfrastructureId: <aws_odb_cloud_exadata_infrastructure_id>
///       cpuCoreCount: 6
///       giVersion: 23.0.0.0
///       hostnamePrefix: apollo12
///       sshPublicKeys:
///         - public-ssh-key
///       odbNetworkId: <aws_odb_network_id>
///       isLocalBackupEnabled: true
///       isSparseDiskgroupEnabled: true
///       licenseModel: LICENSE_INCLUDED
///       dataStorageSizeInTbs: 20
///       dbServers:
///         - db-server-1
///         - db-server-2
///       dbNodeStorageSizeInGbs: 120
///       memorySizeInGbs: 60
///       dataCollectionOptions:
///         isDiagnosticsEventsEnabled: false
///         isHealthMonitoringEnabled: false
///         isIncidentLogsEnabled: false
/// ```
///
///
/// ### With Optional Arguments
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const withAllParameters = new aws.odb.CloudVmCluster("with_all_parameters", {
///     displayName: "my_vm_cluster",
///     cloudExadataInfrastructureId: "<aws_odb_cloud_exadata_infrastructure_id>",
///     cpuCoreCount: 6,
///     giVersion: "23.0.0.0",
///     hostnamePrefix: "apollo12",
///     sshPublicKeys: ["my-ssh-key"],
///     odbNetworkId: "<aws_odb_network_id>",
///     isLocalBackupEnabled: true,
///     isSparseDiskgroupEnabled: true,
///     licenseModel: "LICENSE_INCLUDED",
///     dataStorageSizeInTbs: 20,
///     dbServers: [
///         "my-dbserver-1",
///         "my-db-server-2",
///     ],
///     dbNodeStorageSizeInGbs: 120,
///     memorySizeInGbs: 60,
///     clusterName: "julia-13",
///     timezone: "UTC",
///     scanListenerPortTcp: 1521,
///     tags: {
///         env: "dev",
///     },
///     dataCollectionOptions: {
///         isDiagnosticsEventsEnabled: true,
///         isHealthMonitoringEnabled: true,
///         isIncidentLogsEnabled: true,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// with_all_parameters = aws.odb.CloudVmCluster("with_all_parameters",
///     display_name="my_vm_cluster",
///     cloud_exadata_infrastructure_id="<aws_odb_cloud_exadata_infrastructure_id>",
///     cpu_core_count=6,
///     gi_version="23.0.0.0",
///     hostname_prefix="apollo12",
///     ssh_public_keys=["my-ssh-key"],
///     odb_network_id="<aws_odb_network_id>",
///     is_local_backup_enabled=True,
///     is_sparse_diskgroup_enabled=True,
///     license_model="LICENSE_INCLUDED",
///     data_storage_size_in_tbs=float(20),
///     db_servers=[
///         "my-dbserver-1",
///         "my-db-server-2",
///     ],
///     db_node_storage_size_in_gbs=120,
///     memory_size_in_gbs=60,
///     cluster_name="julia-13",
///     timezone="UTC",
///     scan_listener_port_tcp=1521,
///     tags={
///         "env": "dev",
///     },
///     data_collection_options={
///         "is_diagnostics_events_enabled": True,
///         "is_health_monitoring_enabled": True,
///         "is_incident_logs_enabled": True,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var withAllParameters = new Aws.Odb.CloudVmCluster("with_all_parameters", new()
///     {
///         DisplayName = "my_vm_cluster",
///         CloudExadataInfrastructureId = "<aws_odb_cloud_exadata_infrastructure_id>",
///         CpuCoreCount = 6,
///         GiVersion = "23.0.0.0",
///         HostnamePrefix = "apollo12",
///         SshPublicKeys = new[]
///         {
///             "my-ssh-key",
///         },
///         OdbNetworkId = "<aws_odb_network_id>",
///         IsLocalBackupEnabled = true,
///         IsSparseDiskgroupEnabled = true,
///         LicenseModel = "LICENSE_INCLUDED",
///         DataStorageSizeInTbs = 20,
///         DbServers = new[]
///         {
///             "my-dbserver-1",
///             "my-db-server-2",
///         },
///         DbNodeStorageSizeInGbs = 120,
///         MemorySizeInGbs = 60,
///         ClusterName = "julia-13",
///         Timezone = "UTC",
///         ScanListenerPortTcp = 1521,
///         Tags =
///         {
///             { "env", "dev" },
///         },
///         DataCollectionOptions = new Aws.Odb.Inputs.CloudVmClusterDataCollectionOptionsArgs
///         {
///             IsDiagnosticsEventsEnabled = true,
///             IsHealthMonitoringEnabled = true,
///             IsIncidentLogsEnabled = true,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/odb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := odb.NewCloudVmCluster(ctx, "with_all_parameters", &odb.CloudVmClusterArgs{
/// 			DisplayName:                  pulumi.String("my_vm_cluster"),
/// 			CloudExadataInfrastructureId: pulumi.String("<aws_odb_cloud_exadata_infrastructure_id>"),
/// 			CpuCoreCount:                 pulumi.Int(6),
/// 			GiVersion:                    pulumi.String("23.0.0.0"),
/// 			HostnamePrefix:               pulumi.String("apollo12"),
/// 			SshPublicKeys: pulumi.StringArray{
/// 				pulumi.String("my-ssh-key"),
/// 			},
/// 			OdbNetworkId:             pulumi.String("<aws_odb_network_id>"),
/// 			IsLocalBackupEnabled:     pulumi.Bool(true),
/// 			IsSparseDiskgroupEnabled: pulumi.Bool(true),
/// 			LicenseModel:             pulumi.String("LICENSE_INCLUDED"),
/// 			DataStorageSizeInTbs:     pulumi.Float64(20),
/// 			DbServers: pulumi.StringArray{
/// 				pulumi.String("my-dbserver-1"),
/// 				pulumi.String("my-db-server-2"),
/// 			},
/// 			DbNodeStorageSizeInGbs: pulumi.Int(120),
/// 			MemorySizeInGbs:        pulumi.Int(60),
/// 			ClusterName:            pulumi.String("julia-13"),
/// 			Timezone:               pulumi.String("UTC"),
/// 			ScanListenerPortTcp:    pulumi.Int(1521),
/// 			Tags: pulumi.StringMap{
/// 				"env": pulumi.String("dev"),
/// 			},
/// 			DataCollectionOptions: &odb.CloudVmClusterDataCollectionOptionsArgs{
/// 				IsDiagnosticsEventsEnabled: pulumi.Bool(true),
/// 				IsHealthMonitoringEnabled:  pulumi.Bool(true),
/// 				IsIncidentLogsEnabled:      pulumi.Bool(true),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_odb_cloudvmcluster" "with_all_parameters" {
///   display_name                    = "my_vm_cluster"
///   cloud_exadata_infrastructure_id = "<aws_odb_cloud_exadata_infrastructure_id>"
///   cpu_core_count                  = 6
///   gi_version                      = "23.0.0.0"
///   hostname_prefix                 = "apollo12"
///   ssh_public_keys                 = ["my-ssh-key"]
///   odb_network_id                  = "<aws_odb_network_id>"
///   is_local_backup_enabled         = true
///   is_sparse_diskgroup_enabled     = true
///   license_model                   = "LICENSE_INCLUDED"
///   data_storage_size_in_tbs        = 20
///   db_servers                      = ["my-dbserver-1", "my-db-server-2"]
///   db_node_storage_size_in_gbs     = 120
///   memory_size_in_gbs              = 60
///   cluster_name                    = "julia-13"
///   timezone                        = "UTC"
///   scan_listener_port_tcp          = 1521
///   tags = {
///     "env" = "dev"
///   }
///   data_collection_options = {
///     is_diagnostics_events_enabled = true
///     is_health_monitoring_enabled  = true
///     is_incident_logs_enabled      = true
///   }
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var withAllParameters = new CloudVmCluster("withAllParameters", CloudVmClusterArgs.builder()
///             .displayName("my_vm_cluster")
///             .cloudExadataInfrastructureId("<aws_odb_cloud_exadata_infrastructure_id>")
///             .cpuCoreCount(6)
///             .giVersion("23.0.0.0")
///             .hostnamePrefix("apollo12")
///             .sshPublicKeys("my-ssh-key")
///             .odbNetworkId("<aws_odb_network_id>")
///             .isLocalBackupEnabled(true)
///             .isSparseDiskgroupEnabled(true)
///             .licenseModel("LICENSE_INCLUDED")
///             .dataStorageSizeInTbs(20.0)
///             .dbServers(
///                 "my-dbserver-1",
///                 "my-db-server-2")
///             .dbNodeStorageSizeInGbs(120)
///             .memorySizeInGbs(60)
///             .clusterName("julia-13")
///             .timezone("UTC")
///             .scanListenerPortTcp(1521)
///             .tags(Map.of("env", "dev"))
///             .dataCollectionOptions(CloudVmClusterDataCollectionOptionsArgs.builder()
///                 .isDiagnosticsEventsEnabled(true)
///                 .isHealthMonitoringEnabled(true)
///                 .isIncidentLogsEnabled(true)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   withAllParameters:
///     type: aws:odb:CloudVmCluster
///     name: with_all_parameters
///     properties:
///       displayName: my_vm_cluster
///       cloudExadataInfrastructureId: <aws_odb_cloud_exadata_infrastructure_id>
///       cpuCoreCount: 6
///       giVersion: 23.0.0.0
///       hostnamePrefix: apollo12
///       sshPublicKeys:
///         - my-ssh-key
///       odbNetworkId: <aws_odb_network_id>
///       isLocalBackupEnabled: true
///       isSparseDiskgroupEnabled: true
///       licenseModel: LICENSE_INCLUDED
///       dataStorageSizeInTbs: 20
///       dbServers:
///         - my-dbserver-1
///         - my-db-server-2
///       dbNodeStorageSizeInGbs: 120
///       memorySizeInGbs: 60
///       clusterName: julia-13
///       timezone: UTC
///       scanListenerPortTcp: 1521
///       tags:
///         env: dev
///       dataCollectionOptions:
///         isDiagnosticsEventsEnabled: true
///         isHealthMonitoringEnabled: true
///         isIncidentLogsEnabled: true
/// ```
///
///
/// ### With GI Version Tag
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const giVersionTagExample = new aws.odb.CloudVmCluster("gi_version_tag_example", {
///     displayName: "my_vm_cluster",
///     cloudExadataInfrastructureId: "<aws_odb_cloud_exadata_infrastructure_id>",
///     cpuCoreCount: 6,
///     giVersion: "23.0.0.0",
///     hostnamePrefix: "apollo12",
///     sshPublicKeys: ["my-ssh-key"],
///     odbNetworkId: "<aws_odb_network_id>",
///     isLocalBackupEnabled: true,
///     isSparseDiskgroupEnabled: true,
///     licenseModel: "LICENSE_INCLUDED",
///     dataStorageSizeInTbs: 20,
///     dbServers: [
///         "my-dbserver-1",
///         "my-db-server-2",
///     ],
///     dbNodeStorageSizeInGbs: 120,
///     memorySizeInGbs: 60,
///     clusterName: "julia-13",
///     timezone: "UTC",
///     scanListenerPortTcp: 1521,
///     tags: {
///         "odb:input_gi_version": "23.0.0.0",
///     },
///     dataCollectionOptions: {
///         isDiagnosticsEventsEnabled: true,
///         isHealthMonitoringEnabled: true,
///         isIncidentLogsEnabled: true,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// gi_version_tag_example = aws.odb.CloudVmCluster("gi_version_tag_example",
///     display_name="my_vm_cluster",
///     cloud_exadata_infrastructure_id="<aws_odb_cloud_exadata_infrastructure_id>",
///     cpu_core_count=6,
///     gi_version="23.0.0.0",
///     hostname_prefix="apollo12",
///     ssh_public_keys=["my-ssh-key"],
///     odb_network_id="<aws_odb_network_id>",
///     is_local_backup_enabled=True,
///     is_sparse_diskgroup_enabled=True,
///     license_model="LICENSE_INCLUDED",
///     data_storage_size_in_tbs=float(20),
///     db_servers=[
///         "my-dbserver-1",
///         "my-db-server-2",
///     ],
///     db_node_storage_size_in_gbs=120,
///     memory_size_in_gbs=60,
///     cluster_name="julia-13",
///     timezone="UTC",
///     scan_listener_port_tcp=1521,
///     tags={
///         "odb:input_gi_version": "23.0.0.0",
///     },
///     data_collection_options={
///         "is_diagnostics_events_enabled": True,
///         "is_health_monitoring_enabled": True,
///         "is_incident_logs_enabled": True,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var giVersionTagExample = new Aws.Odb.CloudVmCluster("gi_version_tag_example", new()
///     {
///         DisplayName = "my_vm_cluster",
///         CloudExadataInfrastructureId = "<aws_odb_cloud_exadata_infrastructure_id>",
///         CpuCoreCount = 6,
///         GiVersion = "23.0.0.0",
///         HostnamePrefix = "apollo12",
///         SshPublicKeys = new[]
///         {
///             "my-ssh-key",
///         },
///         OdbNetworkId = "<aws_odb_network_id>",
///         IsLocalBackupEnabled = true,
///         IsSparseDiskgroupEnabled = true,
///         LicenseModel = "LICENSE_INCLUDED",
///         DataStorageSizeInTbs = 20,
///         DbServers = new[]
///         {
///             "my-dbserver-1",
///             "my-db-server-2",
///         },
///         DbNodeStorageSizeInGbs = 120,
///         MemorySizeInGbs = 60,
///         ClusterName = "julia-13",
///         Timezone = "UTC",
///         ScanListenerPortTcp = 1521,
///         Tags =
///         {
///             { "odb:input_gi_version", "23.0.0.0" },
///         },
///         DataCollectionOptions = new Aws.Odb.Inputs.CloudVmClusterDataCollectionOptionsArgs
///         {
///             IsDiagnosticsEventsEnabled = true,
///             IsHealthMonitoringEnabled = true,
///             IsIncidentLogsEnabled = true,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/odb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := odb.NewCloudVmCluster(ctx, "gi_version_tag_example", &odb.CloudVmClusterArgs{
/// 			DisplayName:                  pulumi.String("my_vm_cluster"),
/// 			CloudExadataInfrastructureId: pulumi.String("<aws_odb_cloud_exadata_infrastructure_id>"),
/// 			CpuCoreCount:                 pulumi.Int(6),
/// 			GiVersion:                    pulumi.String("23.0.0.0"),
/// 			HostnamePrefix:               pulumi.String("apollo12"),
/// 			SshPublicKeys: pulumi.StringArray{
/// 				pulumi.String("my-ssh-key"),
/// 			},
/// 			OdbNetworkId:             pulumi.String("<aws_odb_network_id>"),
/// 			IsLocalBackupEnabled:     pulumi.Bool(true),
/// 			IsSparseDiskgroupEnabled: pulumi.Bool(true),
/// 			LicenseModel:             pulumi.String("LICENSE_INCLUDED"),
/// 			DataStorageSizeInTbs:     pulumi.Float64(20),
/// 			DbServers: pulumi.StringArray{
/// 				pulumi.String("my-dbserver-1"),
/// 				pulumi.String("my-db-server-2"),
/// 			},
/// 			DbNodeStorageSizeInGbs: pulumi.Int(120),
/// 			MemorySizeInGbs:        pulumi.Int(60),
/// 			ClusterName:            pulumi.String("julia-13"),
/// 			Timezone:               pulumi.String("UTC"),
/// 			ScanListenerPortTcp:    pulumi.Int(1521),
/// 			Tags: pulumi.StringMap{
/// 				"odb:input_gi_version": pulumi.String("23.0.0.0"),
/// 			},
/// 			DataCollectionOptions: &odb.CloudVmClusterDataCollectionOptionsArgs{
/// 				IsDiagnosticsEventsEnabled: pulumi.Bool(true),
/// 				IsHealthMonitoringEnabled:  pulumi.Bool(true),
/// 				IsIncidentLogsEnabled:      pulumi.Bool(true),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_odb_cloudvmcluster" "gi_version_tag_example" {
///   display_name                    = "my_vm_cluster"
///   cloud_exadata_infrastructure_id = "<aws_odb_cloud_exadata_infrastructure_id>"
///   cpu_core_count                  = 6
///   gi_version                      = "23.0.0.0"
///   hostname_prefix                 = "apollo12"
///   ssh_public_keys                 = ["my-ssh-key"]
///   odb_network_id                  = "<aws_odb_network_id>"
///   is_local_backup_enabled         = true
///   is_sparse_diskgroup_enabled     = true
///   license_model                   = "LICENSE_INCLUDED"
///   data_storage_size_in_tbs        = 20
///   db_servers                      = ["my-dbserver-1", "my-db-server-2"]
///   db_node_storage_size_in_gbs     = 120
///   memory_size_in_gbs              = 60
///   cluster_name                    = "julia-13"
///   timezone                        = "UTC"
///   scan_listener_port_tcp          = 1521
///   tags = {
///     "odb:input_gi_version" = "23.0.0.0"
///   }
///   data_collection_options = {
///     is_diagnostics_events_enabled = true
///     is_health_monitoring_enabled  = true
///     is_incident_logs_enabled      = true
///   }
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var giVersionTagExample = new CloudVmCluster("giVersionTagExample", CloudVmClusterArgs.builder()
///             .displayName("my_vm_cluster")
///             .cloudExadataInfrastructureId("<aws_odb_cloud_exadata_infrastructure_id>")
///             .cpuCoreCount(6)
///             .giVersion("23.0.0.0")
///             .hostnamePrefix("apollo12")
///             .sshPublicKeys("my-ssh-key")
///             .odbNetworkId("<aws_odb_network_id>")
///             .isLocalBackupEnabled(true)
///             .isSparseDiskgroupEnabled(true)
///             .licenseModel("LICENSE_INCLUDED")
///             .dataStorageSizeInTbs(20.0)
///             .dbServers(
///                 "my-dbserver-1",
///                 "my-db-server-2")
///             .dbNodeStorageSizeInGbs(120)
///             .memorySizeInGbs(60)
///             .clusterName("julia-13")
///             .timezone("UTC")
///             .scanListenerPortTcp(1521)
///             .tags(Map.of("odb:input_gi_version", "23.0.0.0"))
///             .dataCollectionOptions(CloudVmClusterDataCollectionOptionsArgs.builder()
///                 .isDiagnosticsEventsEnabled(true)
///                 .isHealthMonitoringEnabled(true)
///                 .isIncidentLogsEnabled(true)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   giVersionTagExample:
///     type: aws:odb:CloudVmCluster
///     name: gi_version_tag_example
///     properties:
///       displayName: my_vm_cluster
///       cloudExadataInfrastructureId: <aws_odb_cloud_exadata_infrastructure_id>
///       cpuCoreCount: 6
///       giVersion: 23.0.0.0
///       hostnamePrefix: apollo12
///       sshPublicKeys:
///         - my-ssh-key
///       odbNetworkId: <aws_odb_network_id>
///       isLocalBackupEnabled: true
///       isSparseDiskgroupEnabled: true
///       licenseModel: LICENSE_INCLUDED
///       dataStorageSizeInTbs: 20
///       dbServers:
///         - my-dbserver-1
///         - my-db-server-2
///       dbNodeStorageSizeInGbs: 120
///       memorySizeInGbs: 60
///       clusterName: julia-13
///       timezone: UTC
///       scanListenerPortTcp: 1521
///       tags:
///         odb:input_gi_version: 23.0.0.0
///       dataCollectionOptions:
///         isDiagnosticsEventsEnabled: true
///         isHealthMonitoringEnabled: true
///         isIncidentLogsEnabled: true
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import cloud vm cluster using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:odb/cloudVmCluster:CloudVmCluster example example
/// ```
class CloudVmCluster extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) for the cloud vm cluster.
  late final pulumi.Output<String> arn;
  /// ARN of the Exadata infrastructure for this VM cluster. Changing this will create a new resource. Either the combination of cloudExadataInfrastructureId and odbNetworkId or cloudExadataInfrastructureArn and odbNetworkArn must be used.
  late final pulumi.Output<String> cloudExadataInfrastructureArn;
  /// Unique identifier of the Exadata infrastructure for this VM cluster. Changing this will create a new resource. Either the combination of cloudExadataInfrastructureId and odbNetworkId or cloudExadataInfrastructureArn and odbNetworkArn must be used.
  late final pulumi.Output<String> cloudExadataInfrastructureId;
  /// Name of the Grid Infrastructure (GI) cluster. Changing this will create a new resource.
  late final pulumi.Output<String> clusterName;
  /// Compute model used when the instance is created or cloned — either ECPU or OCPU. ECPU is a virtualized compute unit; OCPU is a physical processor core with hyper-threading.
  late final pulumi.Output<String> computeModel;
  /// Number of CPU cores to enable on the VM cluster. Changing this will create a new resource.
  late final pulumi.Output<int> cpuCoreCount;
  /// Timestamp when the VM cluster was created.
  late final pulumi.Output<String> createdAt;
  /// Set of preferences for the various diagnostic collection options for the VM cluster. See `dataCollectionOptions` Block below. Changing this will create a new resource.
  late final pulumi.Output<CloudVmClusterDataCollectionOptions> dataCollectionOptions;
  /// Size of the data disk group, in terabytes (TBs), to allocate for the VM cluster. Changing this will create a new resource.
  late final pulumi.Output<double> dataStorageSizeInTbs;
  /// Amount of local node storage, in gigabytes (GBs), to allocate for the VM cluster. Changing this will create a new resource.
  late final pulumi.Output<int> dbNodeStorageSizeInGbs;
  /// List of database servers for the VM cluster. Changing this will create a new resource.
  late final pulumi.Output<List<String>> dbServers;
  /// Type of redundancy for the VM cluster: NORMAL (2-way) or HIGH (3-way).
  late final pulumi.Output<String> diskRedundancy;
  /// User-friendly name for the VM cluster. Changing this will create a new resource.
  late final pulumi.Output<String> displayName;
  /// Domain name associated with the VM cluster.
  late final pulumi.Output<String> domain;
  /// Valid Oracle Grid Infrastructure (GI) software version. To get valid values, use the ListGiVersions operation for the Exadata infrastructure shape. Example: `19.0.0.0`. Changing this creates a new resource. Prefer to provide `odb:input_gi_version` tag. If `odb:input_gi_version` tag is provided, its value must exactly match `giVersion`, otherwise Terraform returns an error. See the `With GI Version Tag` example above.
  late final pulumi.Output<String> giVersion;
  /// Complete software version of Oracle Grid Infrastructure (GI).
  late final pulumi.Output<String> giVersionComputed;
  /// Host name prefix for the VM cluster. Constraints: - Can't be "localhost" or "hostname". - Can't contain "-version". - Maximum length of the combined hostname and domain is 63 characters. - Hostname must be unique within the subnet. Changing this will create a new resource.
  late final pulumi.Output<String> hostnamePrefix;
  /// Host name for the VM cluster. Constraints: - Can't be "localhost" or "hostname". - Can't contain "-version". - Maximum length of the combined hostname and domain is 63 characters. - Hostname must be unique within the subnet.
  late final pulumi.Output<String> hostnamePrefixComputed;
  /// Exadata IORM (I/O Resource Manager) configuration cache details for the VM cluster. See `iormConfigCache` Block below.
  late final pulumi.Output<List<Map<String, dynamic>>> iormConfigCaches;
  /// Whether to enable database backups to local Exadata storage for the VM cluster. Changing this will create a new resource.
  late final pulumi.Output<bool> isLocalBackupEnabled;
  /// Whether to create a sparse disk group for the VM cluster. Changing this will create a new resource.
  late final pulumi.Output<bool> isSparseDiskgroupEnabled;
  /// OCID of the most recent maintenance update history entry.
  late final pulumi.Output<String> lastUpdateHistoryEntryId;
  /// Oracle license model to apply to the VM cluster. Default: LICENSE_INCLUDED. Changing this will create a new resource.
  late final pulumi.Output<String> licenseModel;
  /// Listener port number configured on the VM cluster.
  late final pulumi.Output<int> listenerPort;
  /// Amount of memory, in gigabytes (GBs), to allocate for the VM cluster. Changing this will create a new resource.
  late final pulumi.Output<int> memorySizeInGbs;
  /// Total number of nodes in the VM cluster.
  late final pulumi.Output<int> nodeCount;
  /// Name of the OCI resource anchor associated with the VM cluster.
  late final pulumi.Output<String> ociResourceAnchorName;
  /// HTTPS link to the VM cluster resource in OCI.
  late final pulumi.Output<String> ociUrl;
  /// OCID (Oracle Cloud Identifier) of the VM cluster.
  late final pulumi.Output<String> ocid;
  /// ARN of the ODB network for the VM cluster. Changing this will create a new resource. Either the combination of cloudExadataInfrastructureId and odbNetworkId or cloudExadataInfrastructureArn and odbNetworkArn must be used.
  late final pulumi.Output<String> odbNetworkArn;
  /// Unique identifier of the ODB network for the VM cluster. Changing this will create a new resource. Either the combination of cloudExadataInfrastructureId and odbNetworkId or cloudExadataInfrastructureArn and odbNetworkArn must be used.
  late final pulumi.Output<String> odbNetworkId;
  /// Percentage of progress made on the current operation for the VM cluster.
  late final pulumi.Output<double> percentProgress;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Fully qualified domain name (FQDN) for the SCAN IP addresses associated with the VM cluster.
  late final pulumi.Output<String> scanDnsName;
  /// OCID of the DNS record for the SCAN IPs linked to the VM cluster.
  late final pulumi.Output<String> scanDnsRecordId;
  /// List of OCIDs for SCAN IP addresses associated with the VM cluster.
  late final pulumi.Output<List<String>> scanIpIds;
  /// Port number for TCP connections to the single client access name (SCAN) listener. Valid values: 1024–8999, except 2484, 6100, 6200, 7060, 7070, 7085, and 7879. Default: 1521. Changing this will create a new resource.
  late final pulumi.Output<int> scanListenerPortTcp;
  /// Hardware model name of the Exadata infrastructure running the VM cluster.
  late final pulumi.Output<String> shape;
  /// Public key portion of one or more key pairs used for SSH access to the VM cluster. Changing this will create a new resource.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<List<String>> sshPublicKeys;
  /// Current lifecycle status of the VM cluster.
  late final pulumi.Output<String> status;
  /// Additional information regarding the current status of the VM cluster.
  late final pulumi.Output<String> statusReason;
  /// Local node storage allocated to the VM cluster, in gigabytes (GB).
  late final pulumi.Output<int> storageSizeInGbs;
  /// Operating system version of the image chosen for the VM cluster.
  late final pulumi.Output<String> systemVersion;
  /// Map of tags to assign to the exadata infrastructure. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Combined set of user-defined and provider-defined tags.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<CloudVmClusterTimeouts?> timeouts;
  /// Configured time zone of the VM cluster. Changing this will create a new resource.
  late final pulumi.Output<String> timezone;
  /// Virtual IP (VIP) addresses assigned to the VM cluster. CRS assigns one VIP per node for failover support.
  late final pulumi.Output<List<String>> vipIds;

  /// Creates a new [CloudVmCluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CloudVmCluster]. {@macro pulumi_odb_cloud_vm_cluster_cloud_vm_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CloudVmCluster(
    String name, {
    CloudVmClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:odb/cloudVmCluster:CloudVmCluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    cloudExadataInfrastructureArn = registerOutput<String>('cloudExadataInfrastructureArn');
    cloudExadataInfrastructureId = registerOutput<String>('cloudExadataInfrastructureId');
    clusterName = registerOutput<String>('clusterName');
    computeModel = registerOutput<String>('computeModel');
    cpuCoreCount = registerOutput<int>('cpuCoreCount');
    createdAt = registerOutput<String>('createdAt');
    dataCollectionOptions = registerOutput<CloudVmClusterDataCollectionOptions>('dataCollectionOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CloudVmClusterDataCollectionOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dataStorageSizeInTbs = registerOutput<double>('dataStorageSizeInTbs');
    dbNodeStorageSizeInGbs = registerOutput<int>('dbNodeStorageSizeInGbs');
    dbServers = registerOutput<List<String>>('dbServers');
    diskRedundancy = registerOutput<String>('diskRedundancy');
    displayName = registerOutput<String>('displayName');
    domain = registerOutput<String>('domain');
    giVersion = registerOutput<String>('giVersion');
    giVersionComputed = registerOutput<String>('giVersionComputed');
    hostnamePrefix = registerOutput<String>('hostnamePrefix');
    hostnamePrefixComputed = registerOutput<String>('hostnamePrefixComputed');
    iormConfigCaches = registerOutput<List<Map<String, dynamic>>>('iormConfigCaches');
    isLocalBackupEnabled = registerOutput<bool>('isLocalBackupEnabled');
    isSparseDiskgroupEnabled = registerOutput<bool>('isSparseDiskgroupEnabled');
    lastUpdateHistoryEntryId = registerOutput<String>('lastUpdateHistoryEntryId');
    licenseModel = registerOutput<String>('licenseModel');
    listenerPort = registerOutput<int>('listenerPort');
    memorySizeInGbs = registerOutput<int>('memorySizeInGbs');
    nodeCount = registerOutput<int>('nodeCount');
    ociResourceAnchorName = registerOutput<String>('ociResourceAnchorName');
    ociUrl = registerOutput<String>('ociUrl');
    ocid = registerOutput<String>('ocid');
    odbNetworkArn = registerOutput<String>('odbNetworkArn');
    odbNetworkId = registerOutput<String>('odbNetworkId');
    percentProgress = registerOutput<double>('percentProgress');
    region = registerOutput<String>('region');
    scanDnsName = registerOutput<String>('scanDnsName');
    scanDnsRecordId = registerOutput<String>('scanDnsRecordId');
    scanIpIds = registerOutput<List<String>>('scanIpIds');
    scanListenerPortTcp = registerOutput<int>('scanListenerPortTcp');
    shape = registerOutput<String>('shape');
    sshPublicKeys = registerOutput<List<String>>('sshPublicKeys');
    status = registerOutput<String>('status');
    statusReason = registerOutput<String>('statusReason');
    storageSizeInGbs = registerOutput<int>('storageSizeInGbs');
    systemVersion = registerOutput<String>('systemVersion');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<CloudVmClusterTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CloudVmClusterTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    timezone = registerOutput<String>('timezone');
    vipIds = registerOutput<List<String>>('vipIds');
  }

  /// Gets an existing [CloudVmCluster] resource's state with the given [name] and [id].
  static CloudVmCluster get(
    String name,
    pulumi.Input<String> id, {
    CloudVmClusterState? state,
  }) {
    return CloudVmCluster._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  CloudVmCluster._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:odb/cloudVmCluster:CloudVmCluster',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    cloudExadataInfrastructureArn = registerOutput<String>('cloudExadataInfrastructureArn');
    cloudExadataInfrastructureId = registerOutput<String>('cloudExadataInfrastructureId');
    clusterName = registerOutput<String>('clusterName');
    computeModel = registerOutput<String>('computeModel');
    cpuCoreCount = registerOutput<int>('cpuCoreCount');
    createdAt = registerOutput<String>('createdAt');
    dataCollectionOptions = registerOutput<CloudVmClusterDataCollectionOptions>('dataCollectionOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CloudVmClusterDataCollectionOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dataStorageSizeInTbs = registerOutput<double>('dataStorageSizeInTbs');
    dbNodeStorageSizeInGbs = registerOutput<int>('dbNodeStorageSizeInGbs');
    dbServers = registerOutput<List<String>>('dbServers');
    diskRedundancy = registerOutput<String>('diskRedundancy');
    displayName = registerOutput<String>('displayName');
    domain = registerOutput<String>('domain');
    giVersion = registerOutput<String>('giVersion');
    giVersionComputed = registerOutput<String>('giVersionComputed');
    hostnamePrefix = registerOutput<String>('hostnamePrefix');
    hostnamePrefixComputed = registerOutput<String>('hostnamePrefixComputed');
    iormConfigCaches = registerOutput<List<Map<String, dynamic>>>('iormConfigCaches');
    isLocalBackupEnabled = registerOutput<bool>('isLocalBackupEnabled');
    isSparseDiskgroupEnabled = registerOutput<bool>('isSparseDiskgroupEnabled');
    lastUpdateHistoryEntryId = registerOutput<String>('lastUpdateHistoryEntryId');
    licenseModel = registerOutput<String>('licenseModel');
    listenerPort = registerOutput<int>('listenerPort');
    memorySizeInGbs = registerOutput<int>('memorySizeInGbs');
    nodeCount = registerOutput<int>('nodeCount');
    ociResourceAnchorName = registerOutput<String>('ociResourceAnchorName');
    ociUrl = registerOutput<String>('ociUrl');
    ocid = registerOutput<String>('ocid');
    odbNetworkArn = registerOutput<String>('odbNetworkArn');
    odbNetworkId = registerOutput<String>('odbNetworkId');
    percentProgress = registerOutput<double>('percentProgress');
    region = registerOutput<String>('region');
    scanDnsName = registerOutput<String>('scanDnsName');
    scanDnsRecordId = registerOutput<String>('scanDnsRecordId');
    scanIpIds = registerOutput<List<String>>('scanIpIds');
    scanListenerPortTcp = registerOutput<int>('scanListenerPortTcp');
    shape = registerOutput<String>('shape');
    sshPublicKeys = registerOutput<List<String>>('sshPublicKeys');
    status = registerOutput<String>('status');
    statusReason = registerOutput<String>('statusReason');
    storageSizeInGbs = registerOutput<int>('storageSizeInGbs');
    systemVersion = registerOutput<String>('systemVersion');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<CloudVmClusterTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CloudVmClusterTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    timezone = registerOutput<String>('timezone');
    vipIds = registerOutput<List<String>>('vipIds');
  }
}

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_autonomous_vm_cluster_args.dart';
import 'cloud_autonomous_vm_cluster_maintenance_window.dart';
import 'cloud_autonomous_vm_cluster_timeouts.dart';

/// Resource managing cloud autonomous vm cluster in AWS for Oracle Database@AWS.
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
/// const avmcWithMinimumParameters = new aws.odb.CloudAutonomousVmCluster("avmc_with_minimum_parameters", {
///     cloudExadataInfrastructureId: "<aws_odb_cloud_exadata_infrastructure_id>",
///     odbNetworkId: "<aws_odb_network_id>",
///     displayName: "my_autonomous_vm_cluster",
///     autonomousDataStorageSizeInTbs: 5,
///     memoryPerOracleComputeUnitInGbs: 2,
///     totalContainerDatabases: 1,
///     cpuCoreCountPerNode: 40,
///     licenseModel: "LICENSE_INCLUDED",
///     dbServers: ["<my_db_server_id>"],
///     scanListenerPortTls: 8561,
///     scanListenerPortNonTls: 1024,
///     maintenanceWindow: {
///         preference: "NO_PREFERENCE",
///     },
/// });
/// const avmcWithAllParams = new aws.odb.CloudAutonomousVmCluster("avmc_with_all_params", {
///     description: "my first avmc",
///     timeZone: "UTC",
///     cloudExadataInfrastructureId: "<aws_odb_cloud_exadata_infrastructure_id>",
///     odbNetworkId: "<aws_odb_network_id>",
///     displayName: "my_autonomous_vm_cluster",
///     autonomousDataStorageSizeInTbs: 5,
///     memoryPerOracleComputeUnitInGbs: 2,
///     totalContainerDatabases: 1,
///     cpuCoreCountPerNode: 40,
///     licenseModel: "LICENSE_INCLUDED",
///     dbServers: [
///         "<my_db_server_1>",
///         "<my_db_server_2>",
///     ],
///     scanListenerPortTls: 8561,
///     scanListenerPortNonTls: 1024,
///     maintenanceWindow: {
///         daysOfWeeks: [
///             {
///                 name: "MONDAY",
///             },
///             {
///                 name: "TUESDAY",
///             },
///         ],
///         hoursOfDays: [
///             4,
///             16,
///         ],
///         leadTimeInWeeks: 3,
///         months: [
///             {
///                 name: "FEBRUARY",
///             },
///             {
///                 name: "MAY",
///             },
///             {
///                 name: "AUGUST",
///             },
///             {
///                 name: "NOVEMBER",
///             },
///         ],
///         preference: "CUSTOM_PREFERENCE",
///         weeksOfMonths: [
///             2,
///             4,
///         ],
///     },
///     tags: {
///         env: "dev",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// avmc_with_minimum_parameters = aws.odb.CloudAutonomousVmCluster("avmc_with_minimum_parameters",
///     cloud_exadata_infrastructure_id="<aws_odb_cloud_exadata_infrastructure_id>",
///     odb_network_id="<aws_odb_network_id>",
///     display_name="my_autonomous_vm_cluster",
///     autonomous_data_storage_size_in_tbs=5,
///     memory_per_oracle_compute_unit_in_gbs=2,
///     total_container_databases=1,
///     cpu_core_count_per_node=40,
///     license_model="LICENSE_INCLUDED",
///     db_servers=["<my_db_server_id>"],
///     scan_listener_port_tls=8561,
///     scan_listener_port_non_tls=1024,
///     maintenance_window={
///         "preference": "NO_PREFERENCE",
///     })
/// avmc_with_all_params = aws.odb.CloudAutonomousVmCluster("avmc_with_all_params",
///     description="my first avmc",
///     time_zone="UTC",
///     cloud_exadata_infrastructure_id="<aws_odb_cloud_exadata_infrastructure_id>",
///     odb_network_id="<aws_odb_network_id>",
///     display_name="my_autonomous_vm_cluster",
///     autonomous_data_storage_size_in_tbs=5,
///     memory_per_oracle_compute_unit_in_gbs=2,
///     total_container_databases=1,
///     cpu_core_count_per_node=40,
///     license_model="LICENSE_INCLUDED",
///     db_servers=[
///         "<my_db_server_1>",
///         "<my_db_server_2>",
///     ],
///     scan_listener_port_tls=8561,
///     scan_listener_port_non_tls=1024,
///     maintenance_window={
///         "days_of_weeks": [
///             {
///                 "name": "MONDAY",
///             },
///             {
///                 "name": "TUESDAY",
///             },
///         ],
///         "hours_of_days": [
///             4,
///             16,
///         ],
///         "lead_time_in_weeks": 3,
///         "months": [
///             {
///                 "name": "FEBRUARY",
///             },
///             {
///                 "name": "MAY",
///             },
///             {
///                 "name": "AUGUST",
///             },
///             {
///                 "name": "NOVEMBER",
///             },
///         ],
///         "preference": "CUSTOM_PREFERENCE",
///         "weeks_of_months": [
///             2,
///             4,
///         ],
///     },
///     tags={
///         "env": "dev",
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
///     var avmcWithMinimumParameters = new Aws.Odb.CloudAutonomousVmCluster("avmc_with_minimum_parameters", new()
///     {
///         CloudExadataInfrastructureId = "<aws_odb_cloud_exadata_infrastructure_id>",
///         OdbNetworkId = "<aws_odb_network_id>",
///         DisplayName = "my_autonomous_vm_cluster",
///         AutonomousDataStorageSizeInTbs = 5,
///         MemoryPerOracleComputeUnitInGbs = 2,
///         TotalContainerDatabases = 1,
///         CpuCoreCountPerNode = 40,
///         LicenseModel = "LICENSE_INCLUDED",
///         DbServers = new[]
///         {
///             "<my_db_server_id>",
///         },
///         ScanListenerPortTls = 8561,
///         ScanListenerPortNonTls = 1024,
///         MaintenanceWindow = new Aws.Odb.Inputs.CloudAutonomousVmClusterMaintenanceWindowArgs
///         {
///             Preference = "NO_PREFERENCE",
///         },
///     });
///
///     var avmcWithAllParams = new Aws.Odb.CloudAutonomousVmCluster("avmc_with_all_params", new()
///     {
///         Description = "my first avmc",
///         TimeZone = "UTC",
///         CloudExadataInfrastructureId = "<aws_odb_cloud_exadata_infrastructure_id>",
///         OdbNetworkId = "<aws_odb_network_id>",
///         DisplayName = "my_autonomous_vm_cluster",
///         AutonomousDataStorageSizeInTbs = 5,
///         MemoryPerOracleComputeUnitInGbs = 2,
///         TotalContainerDatabases = 1,
///         CpuCoreCountPerNode = 40,
///         LicenseModel = "LICENSE_INCLUDED",
///         DbServers = new[]
///         {
///             "<my_db_server_1>",
///             "<my_db_server_2>",
///         },
///         ScanListenerPortTls = 8561,
///         ScanListenerPortNonTls = 1024,
///         MaintenanceWindow = new Aws.Odb.Inputs.CloudAutonomousVmClusterMaintenanceWindowArgs
///         {
///             DaysOfWeeks = new[]
///             {
///                 new Aws.Odb.Inputs.CloudAutonomousVmClusterMaintenanceWindowDaysOfWeekArgs
///                 {
///                     Name = "MONDAY",
///                 },
///                 new Aws.Odb.Inputs.CloudAutonomousVmClusterMaintenanceWindowDaysOfWeekArgs
///                 {
///                     Name = "TUESDAY",
///                 },
///             },
///             HoursOfDays = new[]
///             {
///                 4,
///                 16,
///             },
///             LeadTimeInWeeks = 3,
///             Months = new[]
///             {
///                 new Aws.Odb.Inputs.CloudAutonomousVmClusterMaintenanceWindowMonthArgs
///                 {
///                     Name = "FEBRUARY",
///                 },
///                 new Aws.Odb.Inputs.CloudAutonomousVmClusterMaintenanceWindowMonthArgs
///                 {
///                     Name = "MAY",
///                 },
///                 new Aws.Odb.Inputs.CloudAutonomousVmClusterMaintenanceWindowMonthArgs
///                 {
///                     Name = "AUGUST",
///                 },
///                 new Aws.Odb.Inputs.CloudAutonomousVmClusterMaintenanceWindowMonthArgs
///                 {
///                     Name = "NOVEMBER",
///                 },
///             },
///             Preference = "CUSTOM_PREFERENCE",
///             WeeksOfMonths = new[]
///             {
///                 2,
///                 4,
///             },
///         },
///         Tags =
///         {
///             { "env", "dev" },
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
/// 		_, err := odb.NewCloudAutonomousVmCluster(ctx, "avmc_with_minimum_parameters", &odb.CloudAutonomousVmClusterArgs{
/// 			CloudExadataInfrastructureId:    pulumi.String("<aws_odb_cloud_exadata_infrastructure_id>"),
/// 			OdbNetworkId:                    pulumi.String("<aws_odb_network_id>"),
/// 			DisplayName:                     pulumi.String("my_autonomous_vm_cluster"),
/// 			AutonomousDataStorageSizeInTbs:  pulumi.Float64(5),
/// 			MemoryPerOracleComputeUnitInGbs: pulumi.Int(2),
/// 			TotalContainerDatabases:         pulumi.Int(1),
/// 			CpuCoreCountPerNode:             pulumi.Int(40),
/// 			LicenseModel:                    pulumi.String("LICENSE_INCLUDED"),
/// 			DbServers: pulumi.StringArray{
/// 				pulumi.String("<my_db_server_id>"),
/// 			},
/// 			ScanListenerPortTls:    pulumi.Int(8561),
/// 			ScanListenerPortNonTls: pulumi.Int(1024),
/// 			MaintenanceWindow: &odb.CloudAutonomousVmClusterMaintenanceWindowArgs{
/// 				Preference: pulumi.String("NO_PREFERENCE"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = odb.NewCloudAutonomousVmCluster(ctx, "avmc_with_all_params", &odb.CloudAutonomousVmClusterArgs{
/// 			Description:                     pulumi.String("my first avmc"),
/// 			TimeZone:                        pulumi.String("UTC"),
/// 			CloudExadataInfrastructureId:    pulumi.String("<aws_odb_cloud_exadata_infrastructure_id>"),
/// 			OdbNetworkId:                    pulumi.String("<aws_odb_network_id>"),
/// 			DisplayName:                     pulumi.String("my_autonomous_vm_cluster"),
/// 			AutonomousDataStorageSizeInTbs:  pulumi.Float64(5),
/// 			MemoryPerOracleComputeUnitInGbs: pulumi.Int(2),
/// 			TotalContainerDatabases:         pulumi.Int(1),
/// 			CpuCoreCountPerNode:             pulumi.Int(40),
/// 			LicenseModel:                    pulumi.String("LICENSE_INCLUDED"),
/// 			DbServers: pulumi.StringArray{
/// 				pulumi.String("<my_db_server_1>"),
/// 				pulumi.String("<my_db_server_2>"),
/// 			},
/// 			ScanListenerPortTls:    pulumi.Int(8561),
/// 			ScanListenerPortNonTls: pulumi.Int(1024),
/// 			MaintenanceWindow: &odb.CloudAutonomousVmClusterMaintenanceWindowArgs{
/// 				DaysOfWeeks: odb.CloudAutonomousVmClusterMaintenanceWindowDaysOfWeekArray{
/// 					&odb.CloudAutonomousVmClusterMaintenanceWindowDaysOfWeekArgs{
/// 						Name: pulumi.String("MONDAY"),
/// 					},
/// 					&odb.CloudAutonomousVmClusterMaintenanceWindowDaysOfWeekArgs{
/// 						Name: pulumi.String("TUESDAY"),
/// 					},
/// 				},
/// 				HoursOfDays: pulumi.IntArray{
/// 					pulumi.Int(4),
/// 					pulumi.Int(16),
/// 				},
/// 				LeadTimeInWeeks: pulumi.Int(3),
/// 				Months: odb.CloudAutonomousVmClusterMaintenanceWindowMonthArray{
/// 					&odb.CloudAutonomousVmClusterMaintenanceWindowMonthArgs{
/// 						Name: pulumi.String("FEBRUARY"),
/// 					},
/// 					&odb.CloudAutonomousVmClusterMaintenanceWindowMonthArgs{
/// 						Name: pulumi.String("MAY"),
/// 					},
/// 					&odb.CloudAutonomousVmClusterMaintenanceWindowMonthArgs{
/// 						Name: pulumi.String("AUGUST"),
/// 					},
/// 					&odb.CloudAutonomousVmClusterMaintenanceWindowMonthArgs{
/// 						Name: pulumi.String("NOVEMBER"),
/// 					},
/// 				},
/// 				Preference: pulumi.String("CUSTOM_PREFERENCE"),
/// 				WeeksOfMonths: pulumi.IntArray{
/// 					pulumi.Int(2),
/// 					pulumi.Int(4),
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"env": pulumi.String("dev"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.odb.CloudAutonomousVmCluster;
/// import com.pulumi.aws.odb.CloudAutonomousVmClusterArgs;
/// import com.pulumi.aws.odb.inputs.CloudAutonomousVmClusterMaintenanceWindowArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var avmcWithMinimumParameters = new CloudAutonomousVmCluster("avmcWithMinimumParameters", CloudAutonomousVmClusterArgs.builder()
///             .cloudExadataInfrastructureId("<aws_odb_cloud_exadata_infrastructure_id>")
///             .odbNetworkId("<aws_odb_network_id>")
///             .displayName("my_autonomous_vm_cluster")
///             .autonomousDataStorageSizeInTbs(5.0)
///             .memoryPerOracleComputeUnitInGbs(2)
///             .totalContainerDatabases(1)
///             .cpuCoreCountPerNode(40)
///             .licenseModel("LICENSE_INCLUDED")
///             .dbServers("<my_db_server_id>")
///             .scanListenerPortTls(8561)
///             .scanListenerPortNonTls(1024)
///             .maintenanceWindow(CloudAutonomousVmClusterMaintenanceWindowArgs.builder()
///                 .preference("NO_PREFERENCE")
///                 .build())
///             .build());
///
///         var avmcWithAllParams = new CloudAutonomousVmCluster("avmcWithAllParams", CloudAutonomousVmClusterArgs.builder()
///             .description("my first avmc")
///             .timeZone("UTC")
///             .cloudExadataInfrastructureId("<aws_odb_cloud_exadata_infrastructure_id>")
///             .odbNetworkId("<aws_odb_network_id>")
///             .displayName("my_autonomous_vm_cluster")
///             .autonomousDataStorageSizeInTbs(5.0)
///             .memoryPerOracleComputeUnitInGbs(2)
///             .totalContainerDatabases(1)
///             .cpuCoreCountPerNode(40)
///             .licenseModel("LICENSE_INCLUDED")
///             .dbServers(
///                 "<my_db_server_1>",
///                 "<my_db_server_2>")
///             .scanListenerPortTls(8561)
///             .scanListenerPortNonTls(1024)
///             .maintenanceWindow(CloudAutonomousVmClusterMaintenanceWindowArgs.builder()
///                 .daysOfWeeks(
///                     CloudAutonomousVmClusterMaintenanceWindowDaysOfWeekArgs.builder()
///                         .name("MONDAY")
///                         .build(),
///                     CloudAutonomousVmClusterMaintenanceWindowDaysOfWeekArgs.builder()
///                         .name("TUESDAY")
///                         .build())
///                 .hoursOfDays(
///                     4,
///                     16)
///                 .leadTimeInWeeks(3)
///                 .months(
///                     CloudAutonomousVmClusterMaintenanceWindowMonthArgs.builder()
///                         .name("FEBRUARY")
///                         .build(),
///                     CloudAutonomousVmClusterMaintenanceWindowMonthArgs.builder()
///                         .name("MAY")
///                         .build(),
///                     CloudAutonomousVmClusterMaintenanceWindowMonthArgs.builder()
///                         .name("AUGUST")
///                         .build(),
///                     CloudAutonomousVmClusterMaintenanceWindowMonthArgs.builder()
///                         .name("NOVEMBER")
///                         .build())
///                 .preference("CUSTOM_PREFERENCE")
///                 .weeksOfMonths(
///                     2,
///                     4)
///                 .build())
///             .tags(Map.of("env", "dev"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   avmcWithMinimumParameters:
///     type: aws:odb:CloudAutonomousVmCluster
///     name: avmc_with_minimum_parameters
///     properties:
///       cloudExadataInfrastructureId: <aws_odb_cloud_exadata_infrastructure_id>
///       odbNetworkId: <aws_odb_network_id>
///       displayName: my_autonomous_vm_cluster
///       autonomousDataStorageSizeInTbs: 5
///       memoryPerOracleComputeUnitInGbs: 2
///       totalContainerDatabases: 1
///       cpuCoreCountPerNode: 40
///       licenseModel: LICENSE_INCLUDED
///       dbServers:
///         - <my_db_server_id>
///       scanListenerPortTls: 8561
///       scanListenerPortNonTls: 1024
///       maintenanceWindow:
///         preference: NO_PREFERENCE
///   avmcWithAllParams:
///     type: aws:odb:CloudAutonomousVmCluster
///     name: avmc_with_all_params
///     properties:
///       description: my first avmc
///       timeZone: UTC
///       cloudExadataInfrastructureId: <aws_odb_cloud_exadata_infrastructure_id>
///       odbNetworkId: <aws_odb_network_id>
///       displayName: my_autonomous_vm_cluster
///       autonomousDataStorageSizeInTbs: 5
///       memoryPerOracleComputeUnitInGbs: 2
///       totalContainerDatabases: 1
///       cpuCoreCountPerNode: 40
///       licenseModel: LICENSE_INCLUDED
///       dbServers:
///         - <my_db_server_1>
///         - <my_db_server_2>
///       scanListenerPortTls: 8561
///       scanListenerPortNonTls: 1024
///       maintenanceWindow:
///         daysOfWeeks:
///           - name: MONDAY
///           - name: TUESDAY
///         hoursOfDays:
///           - 4
///           - 16
///         leadTimeInWeeks: 3
///         months:
///           - name: FEBRUARY
///           - name: MAY
///           - name: AUGUST
///           - name: NOVEMBER
///         preference: CUSTOM_PREFERENCE
///         weeksOfMonths:
///           - 2
///           - 4
///       tags:
///         env: dev
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import cloud autonomous vm cluster `id`. For example:
///
/// ```sh
/// $ pulumi import aws:odb/cloudAutonomousVmCluster:CloudAutonomousVmCluster example example
/// ```
class CloudAutonomousVmCluster extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) for the Exadata infrastructure.
  late final pulumi.Output<String> arn;
  /// The progress of the current operation on the Autonomous VM cluster, as a percentage.
  late final pulumi.Output<double> autonomousDataStoragePercentage;
  /// The data storage size allocated for Autonomous Databases in the Autonomous VM cluster, in TB. Changing this will force terraform to create new resource.
  late final pulumi.Output<double> autonomousDataStorageSizeInTbs;
  /// The available data storage space for Autonomous Databases in the Autonomous VM cluster, in TB.
  late final pulumi.Output<double> availableAutonomousDataStorageSizeInTbs;
  /// The number of Autonomous CDBs that you can create with the currently available storage.
  late final pulumi.Output<int> availableContainerDatabases;
  /// The number of CPU cores available for allocation to Autonomous Databases.
  late final pulumi.Output<double> availableCpus;
  /// Exadata infrastructure ARN. Changing this will force Terraform to create a new resource. Either the combination of `cloud_exadata_infrastructure_id` and `odb_network_id` or `cloud_exadata_infrastructure_arn` and `odb_network_arn` must be used.
  late final pulumi.Output<String> cloudExadataInfrastructureArn;
  /// Exadata infrastructure id. Changing this will force Terraform to create a new resource. Either the combination of `cloud_exadata_infrastructure_id` and `odb_network_id` or `cloud_exadata_infrastructure_arn` and `odb_network_arn` must be used.
  late final pulumi.Output<String> cloudExadataInfrastructureId;
  /// The compute model of the Autonomous VM cluster: ECPU or OCPU.
  late final pulumi.Output<String> computeModel;
  /// The total number of CPU cores in the Autonomous VM cluster.
  late final pulumi.Output<int> cpuCoreCount;
  /// The number of CPU cores enabled per node in the Autonomous VM cluster. Changing this will force terraform to create new resource.
  late final pulumi.Output<int> cpuCoreCountPerNode;
  /// The percentage of total CPU cores currently in use in the Autonomous VM cluster.
  late final pulumi.Output<double> cpuPercentage;
  /// The date and time when the Autonomous VM cluster was created.
  late final pulumi.Output<String> createdAt;
  /// The total data storage allocated to the Autonomous VM cluster, in GB.
  late final pulumi.Output<double> dataStorageSizeInGbs;
  /// The total data storage allocated to the Autonomous VM cluster, in TB.
  late final pulumi.Output<double> dataStorageSizeInTbs;
  /// The database servers in the Autonomous VM cluster. Changing this will force terraform to create new resource.
  late final pulumi.Output<List<String>> dbServers;
  /// The description of the Autonomous VM cluster.
  late final pulumi.Output<String?> description;
  /// The display name of the Autonomous VM cluster. Changing this will force terraform to create new resource.
  late final pulumi.Output<String> displayName;
  /// The domain name of the Autonomous VM cluster.
  late final pulumi.Output<String> domain;
  /// The minimum value to which you can scale down the Exadata storage, in TB.
  late final pulumi.Output<double> exadataStorageInTbsLowestScaledValue;
  /// The hostname of the Autonomous VM cluster.
  late final pulumi.Output<String> hostname;
  /// Indicates whether mutual TLS (mTLS) authentication is enabled for the Autonomous VM cluster. Changing this will force terraform to create new resource.
  late final pulumi.Output<bool> isMtlsEnabledVmCluster;
  /// The license model for the Autonomous VM cluster. Valid values are LICENSE_INCLUDED or BRING_YOUR_OWN_LICENSE. Changing this will force terraform to create new resource.
  late final pulumi.Output<String> licenseModel;
  /// The maintenance window of the Autonomous VM cluster. Changing this will force terraform to create new resource.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<CloudAutonomousVmClusterMaintenanceWindow> maintenanceWindow;
  /// The minimum value to which you can scale down the maximum number of Autonomous CDBs.
  late final pulumi.Output<int> maxAcdsLowestScaledValue;
  /// The amount of memory allocated per Oracle Compute Unit, in GB. Changing this will force terraform to create new resource.
  late final pulumi.Output<int> memoryPerOracleComputeUnitInGbs;
  /// The total amount of memory allocated to the Autonomous VM cluster, in gigabytes(GB).
  late final pulumi.Output<int> memorySizeInGbs;
  /// The number of database server nodes in the Autonomous VM cluster.
  late final pulumi.Output<int> nodeCount;
  /// The number of Autonomous CDBs that can't be provisioned because of resource constraints.
  late final pulumi.Output<int> nonProvisionableAutonomousContainerDatabases;
  /// The name of the OCI resource anchor associated with this Autonomous VM cluster.
  late final pulumi.Output<String> ociResourceAnchorName;
  /// The URL for accessing the OCI console page for this Autonomous VM cluster.
  late final pulumi.Output<String> ociUrl;
  /// The Oracle Cloud Identifier (OCID) of the Autonomous VM cluster.
  late final pulumi.Output<String> ocid;
  /// ARN of the ODB network associated with this Autonomous VM Cluster. Changing this will force Terraform to create a new resource. Either the combination of `cloud_exadata_infrastructure_id` and `odb_network_id` or `cloud_exadata_infrastructure_arn` and `odb_network_arn` must be used.
  late final pulumi.Output<String> odbNetworkArn;
  /// Unique identifier of the ODB network associated with this Autonomous VM Cluster. Changing this will force Terraform to create a new resource. Changing this will create a new resource. Either the combination of `cloud_exadata_infrastructure_id` and `odb_network_id` or `cloud_exadata_infrastructure_arn` and `odb_network_arn` must be used.
  late final pulumi.Output<String> odbNetworkId;
  /// The local node storage allocated to the Autonomous VM cluster, in gigabytes (GB).
  late final pulumi.Output<int> odbNodeStorageSizeInGbs;
  /// The progress of the current operation on the Autonomous VM cluster, as a percentage.
  late final pulumi.Output<double> percentProgress;
  /// The number of Autonomous CDBs that can be provisioned in the Autonomous VM cluster.
  late final pulumi.Output<int> provisionableAutonomousContainerDatabases;
  /// The number of Autonomous CDBs currently provisioned in the Autonomous VM cluster.
  late final pulumi.Output<int> provisionedAutonomousContainerDatabases;
  /// The number of CPUs provisioned in the Autonomous VM cluster.
  late final pulumi.Output<double> provisionedCpus;
  /// The number of CPU cores that can be reclaimed from terminated or scaled-down Autonomous Databases.
  late final pulumi.Output<double> reclaimableCpus;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The number of CPU cores reserved for system operations and redundancy.
  late final pulumi.Output<double> reservedCpus;
  /// The SCAN listener port for non-TLS (TCP) protocol. The default is 1521. Changing this will force terraform to create new resource.
  late final pulumi.Output<int> scanListenerPortNonTls;
  /// The SCAN listener port for TLS (TCP) protocol. The default is 2484. Changing this will force terraform to create new resource.
  late final pulumi.Output<int> scanListenerPortTls;
  /// The shape of the Exadata infrastructure for the Autonomous VM cluster.
  late final pulumi.Output<String> shape;
  /// The status of the Autonomous VM cluster. Possible values include CREATING, AVAILABLE, UPDATING, DELETING, DELETED, FAILED.
  late final pulumi.Output<String> status;
  /// Additional information about the current status of the Autonomous VM cluster.
  late final pulumi.Output<String> statusReason;
  /// A map of tags to assign to the exadata infrastructure. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The combined set of user-defined and provider-defined tags.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// The expiration date and time of the database SSL certificate.
  late final pulumi.Output<String> timeDatabaseSslCertificateExpires;
  /// The expiration date and time of the ORDS certificate.
  late final pulumi.Output<String> timeOrdsCertificateExpires;
  /// The time zone of the Autonomous VM cluster. Changing this will force terraform to create new resource.
  late final pulumi.Output<String> timeZone;
  late final pulumi.Output<CloudAutonomousVmClusterTimeouts?> timeouts;
  /// The total number of Autonomous Container Databases that can be created with the allocated local storage. Changing this will force terraform to create new resource.
  late final pulumi.Output<int> totalContainerDatabases;

  /// Creates a new [CloudAutonomousVmCluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CloudAutonomousVmCluster]. {@macro pulumi_odb_cloud_autonomous_vm_cluster_cloud_autonomous_vm_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CloudAutonomousVmCluster(
    String name, {
    CloudAutonomousVmClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:odb/cloudAutonomousVmCluster:CloudAutonomousVmCluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.autonomousDataStoragePercentage = registerOutput<double>('autonomousDataStoragePercentage');
    this.autonomousDataStorageSizeInTbs = registerOutput<double>('autonomousDataStorageSizeInTbs');
    this.availableAutonomousDataStorageSizeInTbs = registerOutput<double>('availableAutonomousDataStorageSizeInTbs');
    this.availableContainerDatabases = registerOutput<int>('availableContainerDatabases');
    this.availableCpus = registerOutput<double>('availableCpus');
    this.cloudExadataInfrastructureArn = registerOutput<String>('cloudExadataInfrastructureArn');
    this.cloudExadataInfrastructureId = registerOutput<String>('cloudExadataInfrastructureId');
    this.computeModel = registerOutput<String>('computeModel');
    this.cpuCoreCount = registerOutput<int>('cpuCoreCount');
    this.cpuCoreCountPerNode = registerOutput<int>('cpuCoreCountPerNode');
    this.cpuPercentage = registerOutput<double>('cpuPercentage');
    this.createdAt = registerOutput<String>('createdAt');
    this.dataStorageSizeInGbs = registerOutput<double>('dataStorageSizeInGbs');
    this.dataStorageSizeInTbs = registerOutput<double>('dataStorageSizeInTbs');
    this.dbServers = registerOutput<List<String>>('dbServers');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String>('displayName');
    this.domain = registerOutput<String>('domain');
    this.exadataStorageInTbsLowestScaledValue = registerOutput<double>('exadataStorageInTbsLowestScaledValue');
    this.hostname = registerOutput<String>('hostname');
    this.isMtlsEnabledVmCluster = registerOutput<bool>('isMtlsEnabledVmCluster');
    this.licenseModel = registerOutput<String>('licenseModel');
    this.maintenanceWindow = registerOutput<CloudAutonomousVmClusterMaintenanceWindow>('maintenanceWindow');
    this.maxAcdsLowestScaledValue = registerOutput<int>('maxAcdsLowestScaledValue');
    this.memoryPerOracleComputeUnitInGbs = registerOutput<int>('memoryPerOracleComputeUnitInGbs');
    this.memorySizeInGbs = registerOutput<int>('memorySizeInGbs');
    this.nodeCount = registerOutput<int>('nodeCount');
    this.nonProvisionableAutonomousContainerDatabases = registerOutput<int>('nonProvisionableAutonomousContainerDatabases');
    this.ociResourceAnchorName = registerOutput<String>('ociResourceAnchorName');
    this.ociUrl = registerOutput<String>('ociUrl');
    this.ocid = registerOutput<String>('ocid');
    this.odbNetworkArn = registerOutput<String>('odbNetworkArn');
    this.odbNetworkId = registerOutput<String>('odbNetworkId');
    this.odbNodeStorageSizeInGbs = registerOutput<int>('odbNodeStorageSizeInGbs');
    this.percentProgress = registerOutput<double>('percentProgress');
    this.provisionableAutonomousContainerDatabases = registerOutput<int>('provisionableAutonomousContainerDatabases');
    this.provisionedAutonomousContainerDatabases = registerOutput<int>('provisionedAutonomousContainerDatabases');
    this.provisionedCpus = registerOutput<double>('provisionedCpus');
    this.reclaimableCpus = registerOutput<double>('reclaimableCpus');
    this.region = registerOutput<String>('region');
    this.reservedCpus = registerOutput<double>('reservedCpus');
    this.scanListenerPortNonTls = registerOutput<int>('scanListenerPortNonTls');
    this.scanListenerPortTls = registerOutput<int>('scanListenerPortTls');
    this.shape = registerOutput<String>('shape');
    this.status = registerOutput<String>('status');
    this.statusReason = registerOutput<String>('statusReason');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeDatabaseSslCertificateExpires = registerOutput<String>('timeDatabaseSslCertificateExpires');
    this.timeOrdsCertificateExpires = registerOutput<String>('timeOrdsCertificateExpires');
    this.timeZone = registerOutput<String>('timeZone');
    this.timeouts = registerOutput<CloudAutonomousVmClusterTimeouts?>('timeouts');
    this.totalContainerDatabases = registerOutput<int>('totalContainerDatabases');
  }
}

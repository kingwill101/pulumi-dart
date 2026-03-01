import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_args.dart';
import 'cluster_get_properties_response.dart';
import 'cluster_identity_response.dart';
import 'system_data_response.dart';

/// The HDInsight cluster.
///
/// Uses Azure REST API version 2024-08-01-preview. In version 2.x of the Azure Native provider, it used API version 2021-06-01.
///
/// Other available API versions: 2021-06-01, 2023-04-15-preview, 2023-08-15-preview, 2025-01-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native hdinsight [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create HDInsight cluster with Autoscale configuration
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var cluster = new AzureNative.HDInsight.Cluster("cluster", new()
///     {
///         ClusterName = "cluster1",
///         Properties = new AzureNative.HDInsight.Inputs.ClusterCreatePropertiesArgs
///         {
///             ClusterDefinition = new AzureNative.HDInsight.Inputs.ClusterDefinitionArgs
///             {
///                 ComponentVersion =
///                 {
///                     { "Hadoop", "2.7" },
///                 },
///                 Configurations = new Dictionary<string, object?>
///                 {
///                     ["gateway"] = new Dictionary<string, object?>
///                     {
///                         ["restAuthCredential.isEnabled"] = true,
///                         ["restAuthCredential.password"] = "**********",
///                         ["restAuthCredential.username"] = "admin",
///                     },
///                 },
///                 Kind = "hadoop",
///             },
///             ClusterVersion = "3.6",
///             ComputeProfile = new AzureNative.HDInsight.Inputs.ComputeProfileArgs
///             {
///                 Roles = new[]
///                 {
///                     new AzureNative.HDInsight.Inputs.RoleArgs
///                     {
///                         AutoscaleConfiguration = new AzureNative.HDInsight.Inputs.AutoscaleArgs
///                         {
///                             Recurrence = new AzureNative.HDInsight.Inputs.AutoscaleRecurrenceArgs
///                             {
///                                 Schedule = new[]
///                                 {
///                                     new AzureNative.HDInsight.Inputs.AutoscaleScheduleArgs
///                                     {
///                                         Days = new[]
///                                         {
///                                             AzureNative.HDInsight.DaysOfWeek.Monday,
///                                             AzureNative.HDInsight.DaysOfWeek.Tuesday,
///                                             AzureNative.HDInsight.DaysOfWeek.Wednesday,
///                                             AzureNative.HDInsight.DaysOfWeek.Thursday,
///                                             AzureNative.HDInsight.DaysOfWeek.Friday,
///                                         },
///                                         TimeAndCapacity = new AzureNative.HDInsight.Inputs.AutoscaleTimeAndCapacityArgs
///                                         {
///                                             MaxInstanceCount = 3,
///                                             MinInstanceCount = 3,
///                                             Time = "09:00",
///                                         },
///                                     },
///                                     new AzureNative.HDInsight.Inputs.AutoscaleScheduleArgs
///                                     {
///                                         Days = new[]
///                                         {
///                                             AzureNative.HDInsight.DaysOfWeek.Monday,
///                                             AzureNative.HDInsight.DaysOfWeek.Tuesday,
///                                             AzureNative.HDInsight.DaysOfWeek.Wednesday,
///                                             AzureNative.HDInsight.DaysOfWeek.Thursday,
///                                             AzureNative.HDInsight.DaysOfWeek.Friday,
///                                         },
///                                         TimeAndCapacity = new AzureNative.HDInsight.Inputs.AutoscaleTimeAndCapacityArgs
///                                         {
///                                             MaxInstanceCount = 6,
///                                             MinInstanceCount = 6,
///                                             Time = "18:00",
///                                         },
///                                     },
///                                     new AzureNative.HDInsight.Inputs.AutoscaleScheduleArgs
///                                     {
///                                         Days = new[]
///                                         {
///                                             AzureNative.HDInsight.DaysOfWeek.Saturday,
///                                             AzureNative.HDInsight.DaysOfWeek.Sunday,
///                                         },
///                                         TimeAndCapacity = new AzureNative.HDInsight.Inputs.AutoscaleTimeAndCapacityArgs
///                                         {
///                                             MaxInstanceCount = 2,
///                                             MinInstanceCount = 2,
///                                             Time = "09:00",
///                                         },
///                                     },
///                                     new AzureNative.HDInsight.Inputs.AutoscaleScheduleArgs
///                                     {
///                                         Days = new[]
///                                         {
///                                             AzureNative.HDInsight.DaysOfWeek.Saturday,
///                                             AzureNative.HDInsight.DaysOfWeek.Sunday,
///                                         },
///                                         TimeAndCapacity = new AzureNative.HDInsight.Inputs.AutoscaleTimeAndCapacityArgs
///                                         {
///                                             MaxInstanceCount = 4,
///                                             MinInstanceCount = 4,
///                                             Time = "18:00",
///                                         },
///                                     },
///                                 },
///                                 TimeZone = "China Standard Time",
///                             },
///                         },
///                         HardwareProfile = new AzureNative.HDInsight.Inputs.HardwareProfileArgs
///                         {
///                             VmSize = "Standard_D4_V2",
///                         },
///                         Name = "workernode",
///                         OsProfile = new AzureNative.HDInsight.Inputs.OsProfileArgs
///                         {
///                             LinuxOperatingSystemProfile = new AzureNative.HDInsight.Inputs.LinuxOperatingSystemProfileArgs
///                             {
///                                 Password = "**********",
///                                 Username = "sshuser",
///                             },
///                         },
///                         ScriptActions = new() { },
///                         TargetInstanceCount = 4,
///                     },
///                 },
///             },
///             OsType = AzureNative.HDInsight.OSType.Linux,
///             StorageProfile = new AzureNative.HDInsight.Inputs.StorageProfileArgs
///             {
///                 Storageaccounts = new[]
///                 {
///                     new AzureNative.HDInsight.Inputs.StorageAccountArgs
///                     {
///                         Container = "hdinsight-autoscale-tes-2019-06-18t05-49-16-591z",
///                         EnableSecureChannel = true,
///                         IsDefault = true,
///                         Key = "storagekey",
///                         Name = "mystorage.blob.core.windows.net",
///                     },
///                 },
///             },
///             Tier = AzureNative.HDInsight.Tier.Standard,
///         },
///         ResourceGroupName = "rg1",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	hdinsight "github.com/pulumi/pulumi-azure-native-sdk/hdinsight/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hdinsight.NewCluster(ctx, "cluster", &hdinsight.ClusterArgs{
/// 			ClusterName: pulumi.String("cluster1"),
/// 			Properties: &hdinsight.ClusterCreatePropertiesArgs{
/// 				ClusterDefinition: &hdinsight.ClusterDefinitionArgs{
/// 					ComponentVersion: pulumi.StringMap{
/// 						"Hadoop": pulumi.String("2.7"),
/// 					},
/// 					Configurations: pulumi.Any(map[string]interface{}{
/// 						"gateway": map[string]interface{}{
/// 							"restAuthCredential.isEnabled": true,
/// 							"restAuthCredential.password":  "**********",
/// 							"restAuthCredential.username":  "admin",
/// 						},
/// 					}),
/// 					Kind: pulumi.String("hadoop"),
/// 				},
/// 				ClusterVersion: pulumi.String("3.6"),
/// 				ComputeProfile: &hdinsight.ComputeProfileArgs{
/// 					Roles: hdinsight.RoleArray{
/// 						&hdinsight.RoleArgs{
/// 							AutoscaleConfiguration: &hdinsight.AutoscaleArgs{
/// 								Recurrence: &hdinsight.AutoscaleRecurrenceArgs{
/// 									Schedule: hdinsight.AutoscaleScheduleArray{
/// 										&hdinsight.AutoscaleScheduleArgs{
/// 											Days: pulumi.StringArray{
/// 												pulumi.String(hdinsight.DaysOfWeekMonday),
/// 												pulumi.String(hdinsight.DaysOfWeekTuesday),
/// 												pulumi.String(hdinsight.DaysOfWeekWednesday),
/// 												pulumi.String(hdinsight.DaysOfWeekThursday),
/// 												pulumi.String(hdinsight.DaysOfWeekFriday),
/// 											},
/// 											TimeAndCapacity: &hdinsight.AutoscaleTimeAndCapacityArgs{
/// 												MaxInstanceCount: pulumi.Int(3),
/// 												MinInstanceCount: pulumi.Int(3),
/// 												Time:             pulumi.String("09:00"),
/// 											},
/// 										},
/// 										&hdinsight.AutoscaleScheduleArgs{
/// 											Days: pulumi.StringArray{
/// 												pulumi.String(hdinsight.DaysOfWeekMonday),
/// 												pulumi.String(hdinsight.DaysOfWeekTuesday),
/// 												pulumi.String(hdinsight.DaysOfWeekWednesday),
/// 												pulumi.String(hdinsight.DaysOfWeekThursday),
/// 												pulumi.String(hdinsight.DaysOfWeekFriday),
/// 											},
/// 											TimeAndCapacity: &hdinsight.AutoscaleTimeAndCapacityArgs{
/// 												MaxInstanceCount: pulumi.Int(6),
/// 												MinInstanceCount: pulumi.Int(6),
/// 												Time:             pulumi.String("18:00"),
/// 											},
/// 										},
/// 										&hdinsight.AutoscaleScheduleArgs{
/// 											Days: pulumi.StringArray{
/// 												pulumi.String(hdinsight.DaysOfWeekSaturday),
/// 												pulumi.String(hdinsight.DaysOfWeekSunday),
/// 											},
/// 											TimeAndCapacity: &hdinsight.AutoscaleTimeAndCapacityArgs{
/// 												MaxInstanceCount: pulumi.Int(2),
/// 												MinInstanceCount: pulumi.Int(2),
/// 												Time:             pulumi.String("09:00"),
/// 											},
/// 										},
/// 										&hdinsight.AutoscaleScheduleArgs{
/// 											Days: pulumi.StringArray{
/// 												pulumi.String(hdinsight.DaysOfWeekSaturday),
/// 												pulumi.String(hdinsight.DaysOfWeekSunday),
/// 											},
/// 											TimeAndCapacity: &hdinsight.AutoscaleTimeAndCapacityArgs{
/// 												MaxInstanceCount: pulumi.Int(4),
/// 												MinInstanceCount: pulumi.Int(4),
/// 												Time:             pulumi.String("18:00"),
/// 											},
/// 										},
/// 									},
/// 									TimeZone: pulumi.String("China Standard Time"),
/// 								},
/// 							},
/// 							HardwareProfile: &hdinsight.HardwareProfileArgs{
/// 								VmSize: pulumi.String("Standard_D4_V2"),
/// 							},
/// 							Name: pulumi.String("workernode"),
/// 							OsProfile: &hdinsight.OsProfileArgs{
/// 								LinuxOperatingSystemProfile: &hdinsight.LinuxOperatingSystemProfileArgs{
/// 									Password: pulumi.String("**********"),
/// 									Username: pulumi.String("sshuser"),
/// 								},
/// 							},
/// 							ScriptActions:       hdinsight.ScriptActionArray{},
/// 							TargetInstanceCount: pulumi.Int(4),
/// 						},
/// 					},
/// 				},
/// 				OsType: pulumi.String(hdinsight.OSTypeLinux),
/// 				StorageProfile: &hdinsight.StorageProfileArgs{
/// 					Storageaccounts: hdinsight.StorageAccountArray{
/// 						&hdinsight.StorageAccountArgs{
/// 							Container:           pulumi.String("hdinsight-autoscale-tes-2019-06-18t05-49-16-591z"),
/// 							EnableSecureChannel: pulumi.Bool(true),
/// 							IsDefault:           pulumi.Bool(true),
/// 							Key:                 pulumi.String("storagekey"),
/// 							Name:                pulumi.String("mystorage.blob.core.windows.net"),
/// 						},
/// 					},
/// 				},
/// 				Tier: pulumi.String(hdinsight.TierStandard),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.hdinsight.Cluster;
/// import com.pulumi.azurenative.hdinsight.ClusterArgs;
/// import com.pulumi.azurenative.hdinsight.inputs.ClusterCreatePropertiesArgs;
/// import com.pulumi.azurenative.hdinsight.inputs.ClusterDefinitionArgs;
/// import com.pulumi.azurenative.hdinsight.inputs.ComputeProfileArgs;
/// import com.pulumi.azurenative.hdinsight.inputs.StorageProfileArgs;
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
///         var cluster = new Cluster("cluster", ClusterArgs.builder()
///             .clusterName("cluster1")
///             .properties(ClusterCreatePropertiesArgs.builder()
///                 .clusterDefinition(ClusterDefinitionArgs.builder()
///                     .componentVersion(Map.of("Hadoop", "2.7"))
///                     .configurations(Map.of("gateway", Map.ofEntries(
///                         Map.entry("restAuthCredential.isEnabled", true),
///                         Map.entry("restAuthCredential.password", "**********"),
///                         Map.entry("restAuthCredential.username", "admin")
///                     )))
///                     .kind("hadoop")
///                     .build())
///                 .clusterVersion("3.6")
///                 .computeProfile(ComputeProfileArgs.builder()
///                     .roles(RoleArgs.builder()
///                         .autoscaleConfiguration(AutoscaleArgs.builder()
///                             .recurrence(AutoscaleRecurrenceArgs.builder()
///                                 .schedule(
///                                     AutoscaleScheduleArgs.builder()
///                                         .days(
///                                             "Monday",
///                                             "Tuesday",
///                                             "Wednesday",
///                                             "Thursday",
///                                             "Friday")
///                                         .timeAndCapacity(AutoscaleTimeAndCapacityArgs.builder()
///                                             .maxInstanceCount(3)
///                                             .minInstanceCount(3)
///                                             .time("09:00")
///                                             .build())
///                                         .build(),
///                                     AutoscaleScheduleArgs.builder()
///                                         .days(
///                                             "Monday",
///                                             "Tuesday",
///                                             "Wednesday",
///                                             "Thursday",
///                                             "Friday")
///                                         .timeAndCapacity(AutoscaleTimeAndCapacityArgs.builder()
///                                             .maxInstanceCount(6)
///                                             .minInstanceCount(6)
///                                             .time("18:00")
///                                             .build())
///                                         .build(),
///                                     AutoscaleScheduleArgs.builder()
///                                         .days(
///                                             "Saturday",
///                                             "Sunday")
///                                         .timeAndCapacity(AutoscaleTimeAndCapacityArgs.builder()
///                                             .maxInstanceCount(2)
///                                             .minInstanceCount(2)
///                                             .time("09:00")
///                                             .build())
///                                         .build(),
///                                     AutoscaleScheduleArgs.builder()
///                                         .days(
///                                             "Saturday",
///                                             "Sunday")
///                                         .timeAndCapacity(AutoscaleTimeAndCapacityArgs.builder()
///                                             .maxInstanceCount(4)
///                                             .minInstanceCount(4)
///                                             .time("18:00")
///                                             .build())
///                                         .build())
///                                 .timeZone("China Standard Time")
///                                 .build())
///                             .build())
///                         .hardwareProfile(HardwareProfileArgs.builder()
///                             .vmSize("Standard_D4_V2")
///                             .build())
///                         .name("workernode")
///                         .osProfile(OsProfileArgs.builder()
///                             .linuxOperatingSystemProfile(LinuxOperatingSystemProfileArgs.builder()
///                                 .password("**********")
///                                 .username("sshuser")
///                                 .build())
///                             .build())
///                         .scriptActions()
///                         .targetInstanceCount(4)
///                         .build())
///                     .build())
///                 .osType("Linux")
///                 .storageProfile(StorageProfileArgs.builder()
///                     .storageaccounts(StorageAccountArgs.builder()
///                         .container("hdinsight-autoscale-tes-2019-06-18t05-49-16-591z")
///                         .enableSecureChannel(true)
///                         .isDefault(true)
///                         .key("storagekey")
///                         .name("mystorage.blob.core.windows.net")
///                         .build())
///                     .build())
///                 .tier("Standard")
///                 .build())
///             .resourceGroupName("rg1")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const cluster = new azure_native.hdinsight.Cluster("cluster", {
///     clusterName: "cluster1",
///     properties: {
///         clusterDefinition: {
///             componentVersion: {
///                 Hadoop: "2.7",
///             },
///             configurations: {
///                 gateway: {
///                     "restAuthCredential.isEnabled": true,
///                     "restAuthCredential.password": "**********",
///                     "restAuthCredential.username": "admin",
///                 },
///             },
///             kind: "hadoop",
///         },
///         clusterVersion: "3.6",
///         computeProfile: {
///             roles: [{
///                 autoscaleConfiguration: {
///                     recurrence: {
///                         schedule: [
///                             {
///                                 days: [
///                                     azure_native.hdinsight.DaysOfWeek.Monday,
///                                     azure_native.hdinsight.DaysOfWeek.Tuesday,
///                                     azure_native.hdinsight.DaysOfWeek.Wednesday,
///                                     azure_native.hdinsight.DaysOfWeek.Thursday,
///                                     azure_native.hdinsight.DaysOfWeek.Friday,
///                                 ],
///                                 timeAndCapacity: {
///                                     maxInstanceCount: 3,
///                                     minInstanceCount: 3,
///                                     time: "09:00",
///                                 },
///                             },
///                             {
///                                 days: [
///                                     azure_native.hdinsight.DaysOfWeek.Monday,
///                                     azure_native.hdinsight.DaysOfWeek.Tuesday,
///                                     azure_native.hdinsight.DaysOfWeek.Wednesday,
///                                     azure_native.hdinsight.DaysOfWeek.Thursday,
///                                     azure_native.hdinsight.DaysOfWeek.Friday,
///                                 ],
///                                 timeAndCapacity: {
///                                     maxInstanceCount: 6,
///                                     minInstanceCount: 6,
///                                     time: "18:00",
///                                 },
///                             },
///                             {
///                                 days: [
///                                     azure_native.hdinsight.DaysOfWeek.Saturday,
///                                     azure_native.hdinsight.DaysOfWeek.Sunday,
///                                 ],
///                                 timeAndCapacity: {
///                                     maxInstanceCount: 2,
///                                     minInstanceCount: 2,
///                                     time: "09:00",
///                                 },
///                             },
///                             {
///                                 days: [
///                                     azure_native.hdinsight.DaysOfWeek.Saturday,
///                                     azure_native.hdinsight.DaysOfWeek.Sunday,
///                                 ],
///                                 timeAndCapacity: {
///                                     maxInstanceCount: 4,
///                                     minInstanceCount: 4,
///                                     time: "18:00",
///                                 },
///                             },
///                         ],
///                         timeZone: "China Standard Time",
///                     },
///                 },
///                 hardwareProfile: {
///                     vmSize: "Standard_D4_V2",
///                 },
///                 name: "workernode",
///                 osProfile: {
///                     linuxOperatingSystemProfile: {
///                         password: "**********",
///                         username: "sshuser",
///                     },
///                 },
///                 scriptActions: [],
///                 targetInstanceCount: 4,
///             }],
///         },
///         osType: azure_native.hdinsight.OSType.Linux,
///         storageProfile: {
///             storageaccounts: [{
///                 container: "hdinsight-autoscale-tes-2019-06-18t05-49-16-591z",
///                 enableSecureChannel: true,
///                 isDefault: true,
///                 key: "storagekey",
///                 name: "mystorage.blob.core.windows.net",
///             }],
///         },
///         tier: azure_native.hdinsight.Tier.Standard,
///     },
///     resourceGroupName: "rg1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// cluster = azure_native.hdinsight.Cluster("cluster",
///     cluster_name="cluster1",
///     properties={
///         "cluster_definition": {
///             "component_version": {
///                 "Hadoop": "2.7",
///             },
///             "configurations": {
///                 "gateway": {
///                     "restAuthCredential.isEnabled": True,
///                     "restAuthCredential.password": "**********",
///                     "restAuthCredential.username": "admin",
///                 },
///             },
///             "kind": "hadoop",
///         },
///         "cluster_version": "3.6",
///         "compute_profile": {
///             "roles": [{
///                 "autoscale_configuration": {
///                     "recurrence": {
///                         "schedule": [
///                             {
///                                 "days": [
///                                     azure_native.hdinsight.DaysOfWeek.MONDAY,
///                                     azure_native.hdinsight.DaysOfWeek.TUESDAY,
///                                     azure_native.hdinsight.DaysOfWeek.WEDNESDAY,
///                                     azure_native.hdinsight.DaysOfWeek.THURSDAY,
///                                     azure_native.hdinsight.DaysOfWeek.FRIDAY,
///                                 ],
///                                 "time_and_capacity": {
///                                     "max_instance_count": 3,
///                                     "min_instance_count": 3,
///                                     "time": "09:00",
///                                 },
///                             },
///                             {
///                                 "days": [
///                                     azure_native.hdinsight.DaysOfWeek.MONDAY,
///                                     azure_native.hdinsight.DaysOfWeek.TUESDAY,
///                                     azure_native.hdinsight.DaysOfWeek.WEDNESDAY,
///                                     azure_native.hdinsight.DaysOfWeek.THURSDAY,
///                                     azure_native.hdinsight.DaysOfWeek.FRIDAY,
///                                 ],
///                                 "time_and_capacity": {
///                                     "max_instance_count": 6,
///                                     "min_instance_count": 6,
///                                     "time": "18:00",
///                                 },
///                             },
///                             {
///                                 "days": [
///                                     azure_native.hdinsight.DaysOfWeek.SATURDAY,
///                                     azure_native.hdinsight.DaysOfWeek.SUNDAY,
///                                 ],
///                                 "time_and_capacity": {
///                                     "max_instance_count": 2,
///                                     "min_instance_count": 2,
///                                     "time": "09:00",
///                                 },
///                             },
///                             {
///                                 "days": [
///                                     azure_native.hdinsight.DaysOfWeek.SATURDAY,
///                                     azure_native.hdinsight.DaysOfWeek.SUNDAY,
///                                 ],
///                                 "time_and_capacity": {
///                                     "max_instance_count": 4,
///                                     "min_instance_count": 4,
///                                     "time": "18:00",
///                                 },
///                             },
///                         ],
///                         "time_zone": "China Standard Time",
///                     },
///                 },
///                 "hardware_profile": {
///                     "vm_size": "Standard_D4_V2",
///                 },
///                 "name": "workernode",
///                 "os_profile": {
///                     "linux_operating_system_profile": {
///                         "password": "**********",
///                         "username": "sshuser",
///                     },
///                 },
///                 "script_actions": [],
///                 "target_instance_count": 4,
///             }],
///         },
///         "os_type": azure_native.hdinsight.OSType.LINUX,
///         "storage_profile": {
///             "storageaccounts": [{
///                 "container": "hdinsight-autoscale-tes-2019-06-18t05-49-16-591z",
///                 "enable_secure_channel": True,
///                 "is_default": True,
///                 "key": "storagekey",
///                 "name": "mystorage.blob.core.windows.net",
///             }],
///         },
///         "tier": azure_native.hdinsight.Tier.STANDARD,
///     },
///     resource_group_name="rg1")
///
/// ```
///
/// ```yaml
/// resources:
///   cluster:
///     type: azure-native:hdinsight:Cluster
///     properties:
///       clusterName: cluster1
///       properties:
///         clusterDefinition:
///           componentVersion:
///             Hadoop: '2.7'
///           configurations:
///             gateway:
///               restAuthCredential.isEnabled: true
///               restAuthCredential.password: '**********'
///               restAuthCredential.username: admin
///           kind: hadoop
///         clusterVersion: '3.6'
///         computeProfile:
///           roles:
///             - autoscaleConfiguration:
///                 recurrence:
///                   schedule:
///                     - days:
///                         - Monday
///                         - Tuesday
///                         - Wednesday
///                         - Thursday
///                         - Friday
///                       timeAndCapacity:
///                         maxInstanceCount: 3
///                         minInstanceCount: 3
///                         time: 09:00
///                     - days:
///                         - Monday
///                         - Tuesday
///                         - Wednesday
///                         - Thursday
///                         - Friday
///                       timeAndCapacity:
///                         maxInstanceCount: 6
///                         minInstanceCount: 6
///                         time: 18:00
///                     - days:
///                         - Saturday
///                         - Sunday
///                       timeAndCapacity:
///                         maxInstanceCount: 2
///                         minInstanceCount: 2
///                         time: 09:00
///                     - days:
///                         - Saturday
///                         - Sunday
///                       timeAndCapacity:
///                         maxInstanceCount: 4
///                         minInstanceCount: 4
///                         time: 18:00
///                   timeZone: China Standard Time
///               hardwareProfile:
///                 vmSize: Standard_D4_V2
///               name: workernode
///               osProfile:
///                 linuxOperatingSystemProfile:
///                   password: '**********'
///                   username: sshuser
///               scriptActions: []
///               targetInstanceCount: 4
///         osType: Linux
///         storageProfile:
///           storageaccounts:
///             - container: hdinsight-autoscale-tes-2019-06-18t05-49-16-591z
///               enableSecureChannel: true
///               isDefault: true
///               key: storagekey
///               name: mystorage.blob.core.windows.net
///         tier: Standard
///       resourceGroupName: rg1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create Hadoop cluster with Azure Data Lake Storage Gen 2
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var cluster = new AzureNative.HDInsight.Cluster("cluster", new()
///     {
///         ClusterName = "cluster1",
///         Properties = new AzureNative.HDInsight.Inputs.ClusterCreatePropertiesArgs
///         {
///             ClusterDefinition = new AzureNative.HDInsight.Inputs.ClusterDefinitionArgs
///             {
///                 Configurations = new Dictionary<string, object?>
///                 {
///                     ["gateway"] = new Dictionary<string, object?>
///                     {
///                         ["restAuthCredential.isEnabled"] = "true",
///                         ["restAuthCredential.password"] = "**********",
///                         ["restAuthCredential.username"] = "admin",
///                     },
///                 },
///                 Kind = "Hadoop",
///             },
///             ClusterVersion = "3.6",
///             ComputeProfile = new AzureNative.HDInsight.Inputs.ComputeProfileArgs
///             {
///                 Roles = new[]
///                 {
///                     new AzureNative.HDInsight.Inputs.RoleArgs
///                     {
///                         HardwareProfile = new AzureNative.HDInsight.Inputs.HardwareProfileArgs
///                         {
///                             VmSize = "Standard_D3_V2",
///                         },
///                         MinInstanceCount = 1,
///                         Name = "headnode",
///                         OsProfile = new AzureNative.HDInsight.Inputs.OsProfileArgs
///                         {
///                             LinuxOperatingSystemProfile = new AzureNative.HDInsight.Inputs.LinuxOperatingSystemProfileArgs
///                             {
///                                 Password = "**********",
///                                 Username = "sshuser",
///                             },
///                         },
///                         TargetInstanceCount = 2,
///                     },
///                     new AzureNative.HDInsight.Inputs.RoleArgs
///                     {
///                         HardwareProfile = new AzureNative.HDInsight.Inputs.HardwareProfileArgs
///                         {
///                             VmSize = "Standard_D3_V2",
///                         },
///                         MinInstanceCount = 1,
///                         Name = "workernode",
///                         OsProfile = new AzureNative.HDInsight.Inputs.OsProfileArgs
///                         {
///                             LinuxOperatingSystemProfile = new AzureNative.HDInsight.Inputs.LinuxOperatingSystemProfileArgs
///                             {
///                                 Password = "**********",
///                                 Username = "sshuser",
///                             },
///                         },
///                         TargetInstanceCount = 4,
///                     },
///                     new AzureNative.HDInsight.Inputs.RoleArgs
///                     {
///                         HardwareProfile = new AzureNative.HDInsight.Inputs.HardwareProfileArgs
///                         {
///                             VmSize = "Small",
///                         },
///                         MinInstanceCount = 1,
///                         Name = "zookeepernode",
///                         OsProfile = new AzureNative.HDInsight.Inputs.OsProfileArgs
///                         {
///                             LinuxOperatingSystemProfile = new AzureNative.HDInsight.Inputs.LinuxOperatingSystemProfileArgs
///                             {
///                                 Password = "**********",
///                                 Username = "sshuser",
///                             },
///                         },
///                         TargetInstanceCount = 3,
///                     },
///                 },
///             },
///             OsType = AzureNative.HDInsight.OSType.Linux,
///             StorageProfile = new AzureNative.HDInsight.Inputs.StorageProfileArgs
///             {
///                 Storageaccounts = new[]
///                 {
///                     new AzureNative.HDInsight.Inputs.StorageAccountArgs
///                     {
///                         EnableSecureChannel = true,
///                         FileSystem = "default",
///                         IsDefault = true,
///                         Key = "storagekey",
///                         Name = "mystorage.dfs.core.windows.net",
///                     },
///                 },
///             },
///             Tier = AzureNative.HDInsight.Tier.Standard,
///         },
///         ResourceGroupName = "rg1",
///         Tags =
///         {
///             { "key1", "val1" },
///         },
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	hdinsight "github.com/pulumi/pulumi-azure-native-sdk/hdinsight/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hdinsight.NewCluster(ctx, "cluster", &hdinsight.ClusterArgs{
/// 			ClusterName: pulumi.String("cluster1"),
/// 			Properties: &hdinsight.ClusterCreatePropertiesArgs{
/// 				ClusterDefinition: &hdinsight.ClusterDefinitionArgs{
/// 					Configurations: pulumi.Any(map[string]interface{}{
/// 						"gateway": map[string]interface{}{
/// 							"restAuthCredential.isEnabled": "true",
/// 							"restAuthCredential.password":  "**********",
/// 							"restAuthCredential.username":  "admin",
/// 						},
/// 					}),
/// 					Kind: pulumi.String("Hadoop"),
/// 				},
/// 				ClusterVersion: pulumi.String("3.6"),
/// 				ComputeProfile: &hdinsight.ComputeProfileArgs{
/// 					Roles: hdinsight.RoleArray{
/// 						&hdinsight.RoleArgs{
/// 							HardwareProfile: &hdinsight.HardwareProfileArgs{
/// 								VmSize: pulumi.String("Standard_D3_V2"),
/// 							},
/// 							MinInstanceCount: pulumi.Int(1),
/// 							Name:             pulumi.String("headnode"),
/// 							OsProfile: &hdinsight.OsProfileArgs{
/// 								LinuxOperatingSystemProfile: &hdinsight.LinuxOperatingSystemProfileArgs{
/// 									Password: pulumi.String("**********"),
/// 									Username: pulumi.String("sshuser"),
/// 								},
/// 							},
/// 							TargetInstanceCount: pulumi.Int(2),
/// 						},
/// 						&hdinsight.RoleArgs{
/// 							HardwareProfile: &hdinsight.HardwareProfileArgs{
/// 								VmSize: pulumi.String("Standard_D3_V2"),
/// 							},
/// 							MinInstanceCount: pulumi.Int(1),
/// 							Name:             pulumi.String("workernode"),
/// 							OsProfile: &hdinsight.OsProfileArgs{
/// 								LinuxOperatingSystemProfile: &hdinsight.LinuxOperatingSystemProfileArgs{
/// 									Password: pulumi.String("**********"),
/// 									Username: pulumi.String("sshuser"),
/// 								},
/// 							},
/// 							TargetInstanceCount: pulumi.Int(4),
/// 						},
/// 						&hdinsight.RoleArgs{
/// 							HardwareProfile: &hdinsight.HardwareProfileArgs{
/// 								VmSize: pulumi.String("Small"),
/// 							},
/// 							MinInstanceCount: pulumi.Int(1),
/// 							Name:             pulumi.String("zookeepernode"),
/// 							OsProfile: &hdinsight.OsProfileArgs{
/// 								LinuxOperatingSystemProfile: &hdinsight.LinuxOperatingSystemProfileArgs{
/// 									Password: pulumi.String("**********"),
/// 									Username: pulumi.String("sshuser"),
/// 								},
/// 							},
/// 							TargetInstanceCount: pulumi.Int(3),
/// 						},
/// 					},
/// 				},
/// 				OsType: pulumi.String(hdinsight.OSTypeLinux),
/// 				StorageProfile: &hdinsight.StorageProfileArgs{
/// 					Storageaccounts: hdinsight.StorageAccountArray{
/// 						&hdinsight.StorageAccountArgs{
/// 							EnableSecureChannel: pulumi.Bool(true),
/// 							FileSystem:          pulumi.String("default"),
/// 							IsDefault:           pulumi.Bool(true),
/// 							Key:                 pulumi.String("storagekey"),
/// 							Name:                pulumi.String("mystorage.dfs.core.windows.net"),
/// 						},
/// 					},
/// 				},
/// 				Tier: pulumi.String(hdinsight.TierStandard),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			Tags: pulumi.StringMap{
/// 				"key1": pulumi.String("val1"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.hdinsight.Cluster;
/// import com.pulumi.azurenative.hdinsight.ClusterArgs;
/// import com.pulumi.azurenative.hdinsight.inputs.ClusterCreatePropertiesArgs;
/// import com.pulumi.azurenative.hdinsight.inputs.ClusterDefinitionArgs;
/// import com.pulumi.azurenative.hdinsight.inputs.ComputeProfileArgs;
/// import com.pulumi.azurenative.hdinsight.inputs.StorageProfileArgs;
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
///         var cluster = new Cluster("cluster", ClusterArgs.builder()
///             .clusterName("cluster1")
///             .properties(ClusterCreatePropertiesArgs.builder()
///                 .clusterDefinition(ClusterDefinitionArgs.builder()
///                     .configurations(Map.of("gateway", Map.ofEntries(
///                         Map.entry("restAuthCredential.isEnabled", "true"),
///                         Map.entry("restAuthCredential.password", "**********"),
///                         Map.entry("restAuthCredential.username", "admin")
///                     )))
///                     .kind("Hadoop")
///                     .build())
///                 .clusterVersion("3.6")
///                 .computeProfile(ComputeProfileArgs.builder()
///                     .roles(
///                         RoleArgs.builder()
///                             .hardwareProfile(HardwareProfileArgs.builder()
///                                 .vmSize("Standard_D3_V2")
///                                 .build())
///                             .minInstanceCount(1)
///                             .name("headnode")
///                             .osProfile(OsProfileArgs.builder()
///                                 .linuxOperatingSystemProfile(LinuxOperatingSystemProfileArgs.builder()
///                                     .password("**********")
///                                     .username("sshuser")
///                                     .build())
///                                 .build())
///                             .targetInstanceCount(2)
///                             .build(),
///                         RoleArgs.builder()
///                             .hardwareProfile(HardwareProfileArgs.builder()
///                                 .vmSize("Standard_D3_V2")
///                                 .build())
///                             .minInstanceCount(1)
///                             .name("workernode")
///                             .osProfile(OsProfileArgs.builder()
///                                 .linuxOperatingSystemProfile(LinuxOperatingSystemProfileArgs.builder()
///                                     .password("**********")
///                                     .username("sshuser")
///                                     .build())
///                                 .build())
///                             .targetInstanceCount(4)
///                             .build(),
///                         RoleArgs.builder()
///                             .hardwareProfile(HardwareProfileArgs.builder()
///                                 .vmSize("Small")
///                                 .build())
///                             .minInstanceCount(1)
///                             .name("zookeepernode")
///                             .osProfile(OsProfileArgs.builder()
///                                 .linuxOperatingSystemProfile(LinuxOperatingSystemProfileArgs.builder()
///                                     .password("**********")
///                                     .username("sshuser")
///                                     .build())
///                                 .build())
///                             .targetInstanceCount(3)
///                             .build())
///                     .build())
///                 .osType("Linux")
///                 .storageProfile(StorageProfileArgs.builder()
///                     .storageaccounts(StorageAccountArgs.builder()
///                         .enableSecureChannel(true)
///                         .fileSystem("default")
///                         .isDefault(true)
///                         .key("storagekey")
///                         .name("mystorage.dfs.core.windows.net")
///                         .build())
///                     .build())
///                 .tier("Standard")
///                 .build())
///             .resourceGroupName("rg1")
///             .tags(Map.of("key1", "val1"))
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const cluster = new azure_native.hdinsight.Cluster("cluster", {
///     clusterName: "cluster1",
///     properties: {
///         clusterDefinition: {
///             configurations: {
///                 gateway: {
///                     "restAuthCredential.isEnabled": "true",
///                     "restAuthCredential.password": "**********",
///                     "restAuthCredential.username": "admin",
///                 },
///             },
///             kind: "Hadoop",
///         },
///         clusterVersion: "3.6",
///         computeProfile: {
///             roles: [
///                 {
///                     hardwareProfile: {
///                         vmSize: "Standard_D3_V2",
///                     },
///                     minInstanceCount: 1,
///                     name: "headnode",
///                     osProfile: {
///                         linuxOperatingSystemProfile: {
///                             password: "**********",
///                             username: "sshuser",
///                         },
///                     },
///                     targetInstanceCount: 2,
///                 },
///                 {
///                     hardwareProfile: {
///                         vmSize: "Standard_D3_V2",
///                     },
///                     minInstanceCount: 1,
///                     name: "workernode",
///                     osProfile: {
///                         linuxOperatingSystemProfile: {
///                             password: "**********",
///                             username: "sshuser",
///                         },
///                     },
///                     targetInstanceCount: 4,
///                 },
///                 {
///                     hardwareProfile: {
///                         vmSize: "Small",
///                     },
///                     minInstanceCount: 1,
///                     name: "zookeepernode",
///                     osProfile: {
///                         linuxOperatingSystemProfile: {
///                             password: "**********",
///                             username: "sshuser",
///                         },
///                     },
///                     targetInstanceCount: 3,
///                 },
///             ],
///         },
///         osType: azure_native.hdinsight.OSType.Linux,
///         storageProfile: {
///             storageaccounts: [{
///                 enableSecureChannel: true,
///                 fileSystem: "default",
///                 isDefault: true,
///                 key: "storagekey",
///                 name: "mystorage.dfs.core.windows.net",
///             }],
///         },
///         tier: azure_native.hdinsight.Tier.Standard,
///     },
///     resourceGroupName: "rg1",
///     tags: {
///         key1: "val1",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// cluster = azure_native.hdinsight.Cluster("cluster",
///     cluster_name="cluster1",
///     properties={
///         "cluster_definition": {
///             "configurations": {
///                 "gateway": {
///                     "restAuthCredential.isEnabled": "true",
///                     "restAuthCredential.password": "**********",
///                     "restAuthCredential.username": "admin",
///                 },
///             },
///             "kind": "Hadoop",
///         },
///         "cluster_version": "3.6",
///         "compute_profile": {
///             "roles": [
///                 {
///                     "hardware_profile": {
///                         "vm_size": "Standard_D3_V2",
///                     },
///                     "min_instance_count": 1,
///                     "name": "headnode",
///                     "os_profile": {
///                         "linux_operating_system_profile": {
///                             "password": "**********",
///                             "username": "sshuser",
///                         },
///                     },
///                     "target_instance_count": 2,
///                 },
///                 {
///                     "hardware_profile": {
///                         "vm_size": "Standard_D3_V2",
///                     },
///                     "min_instance_count": 1,
///                     "name": "workernode",
///                     "os_profile": {
///                         "linux_operating_system_profile": {
///                             "password": "**********",
///                             "username": "sshuser",
///                         },
///                     },
///                     "target_instance_count": 4,
///                 },
///                 {
///                     "hardware_profile": {
///                         "vm_size": "Small",
///                     },
///                     "min_instance_count": 1,
///                     "name": "zookeepernode",
///                     "os_profile": {
///                         "linux_operating_system_profile": {
///                             "password": "**********",
///                             "username": "sshuser",
///                         },
///                     },
///                     "target_instance_count": 3,
///                 },
///             ],
///         },
///         "os_type": azure_native.hdinsight.OSType.LINUX,
///         "storage_profile": {
///             "storageaccounts": [{
///                 "enable_secure_channel": True,
///                 "file_system": "default",
///                 "is_default": True,
///                 "key": "storagekey",
///                 "name": "mystorage.dfs.core.windows.net",
///             }],
///         },
///         "tier": azure_native.hdinsight.Tier.STANDARD,
///     },
///     resource_group_name="rg1",
///     tags={
///         "key1": "val1",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   cluster:
///     type: azure-native:hdinsight:Cluster
///     properties:
///       clusterName: cluster1
///       properties:
///         clusterDefinition:
///           configurations:
///             gateway:
///               restAuthCredential.isEnabled: 'true'
///               restAuthCredential.password: '**********'
///               restAuthCredential.username: admin
///           kind: Hadoop
///         clusterVersion: '3.6'
///         computeProfile:
///           roles:
///             - hardwareProfile:
///                 vmSize: Standard_D3_V2
///               minInstanceCount: 1
///               name: headnode
///               osProfile:
///                 linuxOperatingSystemProfile:
///                   password: '**********'
///                   username: sshuser
///               targetInstanceCount: 2
///             - hardwareProfile:
///                 vmSize: Standard_D3_V2
///               minInstanceCount: 1
///               name: workernode
///               osProfile:
///                 linuxOperatingSystemProfile:
///                   password: '**********'
///                   username: sshuser
///               targetInstanceCount: 4
///             - hardwareProfile:
///                 vmSize: Small
///               minInstanceCount: 1
///               name: zookeepernode
///               osProfile:
///                 linuxOperatingSystemProfile:
///                   password: '**********'
///                   username: sshuser
///               targetInstanceCount: 3
///         osType: Linux
///         storageProfile:
///           storageaccounts:
///             - enableSecureChannel: true
///               fileSystem: default
///               isDefault: true
///               key: storagekey
///               name: mystorage.dfs.core.windows.net
///         tier: Standard
///       resourceGroupName: rg1
///       tags:
///         key1: val1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create Hadoop on Linux cluster with SSH password
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var cluster = new AzureNative.HDInsight.Cluster("cluster", new()
///     {
///         ClusterName = "cluster1",
///         Properties = new AzureNative.HDInsight.Inputs.ClusterCreatePropertiesArgs
///         {
///             ClusterDefinition = new AzureNative.HDInsight.Inputs.ClusterDefinitionArgs
///             {
///                 Configurations = new Dictionary<string, object?>
///                 {
///                     ["gateway"] = new Dictionary<string, object?>
///                     {
///                         ["restAuthCredential.isEnabled"] = "true",
///                         ["restAuthCredential.password"] = "**********",
///                         ["restAuthCredential.username"] = "admin",
///                     },
///                 },
///                 Kind = "Hadoop",
///             },
///             ClusterVersion = "3.5",
///             ComputeProfile = new AzureNative.HDInsight.Inputs.ComputeProfileArgs
///             {
///                 Roles = new[]
///                 {
///                     new AzureNative.HDInsight.Inputs.RoleArgs
///                     {
///                         HardwareProfile = new AzureNative.HDInsight.Inputs.HardwareProfileArgs
///                         {
///                             VmSize = "Standard_D3_V2",
///                         },
///                         MinInstanceCount = 1,
///                         Name = "headnode",
///                         OsProfile = new AzureNative.HDInsight.Inputs.OsProfileArgs
///                         {
///                             LinuxOperatingSystemProfile = new AzureNative.HDInsight.Inputs.LinuxOperatingSystemProfileArgs
///                             {
///                                 Password = "**********",
///                                 Username = "sshuser",
///                             },
///                         },
///                         TargetInstanceCount = 2,
///                     },
///                     new AzureNative.HDInsight.Inputs.RoleArgs
///                     {
///                         HardwareProfile = new AzureNative.HDInsight.Inputs.HardwareProfileArgs
///                         {
///                             VmSize = "Standard_D3_V2",
///                         },
///                         MinInstanceCount = 1,
///                         Name = "workernode",
///                         OsProfile = new AzureNative.HDInsight.Inputs.OsProfileArgs
///                         {
///                             LinuxOperatingSystemProfile = new AzureNative.HDInsight.Inputs.LinuxOperatingSystemProfileArgs
///                             {
///                                 Password = "**********",
///                                 Username = "sshuser",
///                             },
///                         },
///                         TargetInstanceCount = 4,
///                     },
///                     new AzureNative.HDInsight.Inputs.RoleArgs
///                     {
///                         HardwareProfile = new AzureNative.HDInsight.Inputs.HardwareProfileArgs
///                         {
///                             VmSize = "Small",
///                         },
///                         MinInstanceCount = 1,
///                         Name = "zookeepernode",
///                         OsProfile = new AzureNative.HDInsight.Inputs.OsProfileArgs
///                         {
///                             LinuxOperatingSystemProfile = new AzureNative.HDInsight.Inputs.LinuxOperatingSystemProfileArgs
///                             {
///                                 Password = "**********",
///                                 Username = "sshuser",
///                             },
///                         },
///                         TargetInstanceCount = 3,
///                     },
///                 },
///             },
///             OsType = AzureNative.HDInsight.OSType.Linux,
///             StorageProfile = new AzureNative.HDInsight.Inputs.StorageProfileArgs
///             {
///                 Storageaccounts = new[]
///                 {
///                     new AzureNative.HDInsight.Inputs.StorageAccountArgs
///                     {
///                         Container = "containername",
///                         EnableSecureChannel = true,
///                         IsDefault = true,
///                         Key = "storagekey",
///                         Name = "mystorage.blob.core.windows.net",
///                     },
///                 },
///             },
///             Tier = AzureNative.HDInsight.Tier.Standard,
///         },
///         ResourceGroupName = "rg1",
///         Tags =
///         {
///             { "key1", "val1" },
///         },
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	hdinsight "github.com/pulumi/pulumi-azure-native-sdk/hdinsight/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hdinsight.NewCluster(ctx, "cluster", &hdinsight.ClusterArgs{
/// 			ClusterName: pulumi.String("cluster1"),
/// 			Properties: &hdinsight.ClusterCreatePropertiesArgs{
/// 				ClusterDefinition: &hdinsight.ClusterDefinitionArgs{
/// 					Configurations: pulumi.Any(map[string]interface{}{
/// 						"gateway": map[string]interface{}{
/// 							"restAuthCredential.isEnabled": "true",
/// 							"restAuthCredential.password":  "**********",
/// 							"restAuthCredential.username":  "admin",
/// 						},
/// 					}),
/// 					Kind: pulumi.String("Hadoop"),
/// 				},
/// 				ClusterVersion: pulumi.String("3.5"),
/// 				ComputeProfile: &hdinsight.ComputeProfileArgs{
/// 					Roles: hdinsight.RoleArray{
/// 						&hdinsight.RoleArgs{
/// 							HardwareProfile: &hdinsight.HardwareProfileArgs{
/// 								VmSize: pulumi.String("Standard_D3_V2"),
/// 							},
/// 							MinInstanceCount: pulumi.Int(1),
/// 							Name:             pulumi.String("headnode"),
/// 							OsProfile: &hdinsight.OsProfileArgs{
/// 								LinuxOperatingSystemProfile: &hdinsight.LinuxOperatingSystemProfileArgs{
/// 									Password: pulumi.String("**********"),
/// 									Username: pulumi.String("sshuser"),
/// 								},
/// 							},
/// 							TargetInstanceCount: pulumi.Int(2),
/// 						},
/// 						&hdinsight.RoleArgs{
/// 							HardwareProfile: &hdinsight.HardwareProfileArgs{
/// 								VmSize: pulumi.String("Standard_D3_V2"),
/// 							},
/// 							MinInstanceCount: pulumi.Int(1),
/// 							Name:             pulumi.String("workernode"),
/// 							OsProfile: &hdinsight.OsProfileArgs{
/// 								LinuxOperatingSystemProfile: &hdinsight.LinuxOperatingSystemProfileArgs{
/// 									Password: pulumi.String("**********"),
/// 									Username: pulumi.String("sshuser"),
/// 								},
/// 							},
/// 							TargetInstanceCount: pulumi.Int(4),
/// 						},
/// 						&hdinsight.RoleArgs{
/// 							HardwareProfile: &hdinsight.HardwareProfileArgs{
/// 								VmSize: pulumi.String("Small"),
/// 							},
/// 							MinInstanceCount: pulumi.Int(1),
/// 							Name:             pulumi.String("zookeepernode"),
/// 							OsProfile: &hdinsight.OsProfileArgs{
/// 								LinuxOperatingSystemProfile: &hdinsight.LinuxOperatingSystemProfileArgs{
/// 									Password: pulumi.String("**********"),
/// 									Username: pulumi.String("sshuser"),
/// 								},
/// 							},
/// 							TargetInstanceCount: pulumi.Int(3),
/// 						},
/// 					},
/// 				},
/// 				OsType: pulumi.String(hdinsight.OSTypeLinux),
/// 				StorageProfile: &hdinsight.StorageProfileArgs{
/// 					Storageaccounts: hdinsight.StorageAccountArray{
/// 						&hdinsight.StorageAccountArgs{
/// 							Container:           pulumi.String("containername"),
/// 							EnableSecureChannel: pulumi.Bool(true),
/// 							IsDefault:           pulumi.Bool(true),
/// 							Key:                 pulumi.String("storagekey"),
/// 							Name:                pulumi.String("mystorage.blob.core.windows.net"),
/// 						},
/// 					},
/// 				},
/// 				Tier: pulumi.String(hdinsight.TierStandard),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			Tags: pulumi.StringMap{
/// 				"key1": pulumi.String("val1"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.hdinsight.Cluster;
/// import com.pulumi.azurenative.hdinsight.ClusterArgs;
/// import com.pulumi.azurenative.hdinsight.inputs.ClusterCreatePropertiesArgs;
/// import com.pulumi.azurenative.hdinsight.inputs.ClusterDefinitionArgs;
/// import com.pulumi.azurenative.hdinsight.inputs.ComputeProfileArgs;
/// import com.pulumi.azurenative.hdinsight.inputs.StorageProfileArgs;
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
///         var cluster = new Cluster("cluster", ClusterArgs.builder()
///             .clusterName("cluster1")
///             .properties(ClusterCreatePropertiesArgs.builder()
///                 .clusterDefinition(ClusterDefinitionArgs.builder()
///                     .configurations(Map.of("gateway", Map.ofEntries(
///                         Map.entry("restAuthCredential.isEnabled", "true"),
///                         Map.entry("restAuthCredential.password", "**********"),
///                         Map.entry("restAuthCredential.username", "admin")
///                     )))
///                     .kind("Hadoop")
///                     .build())
///                 .clusterVersion("3.5")
///                 .computeProfile(ComputeProfileArgs.builder()
///                     .roles(
///                         RoleArgs.builder()
///                             .hardwareProfile(HardwareProfileArgs.builder()
///                                 .vmSize("Standard_D3_V2")
///                                 .build())
///                             .minInstanceCount(1)
///                             .name("headnode")
///                             .osProfile(OsProfileArgs.builder()
///                                 .linuxOperatingSystemProfile(LinuxOperatingSystemProfileArgs.builder()
///                                     .password("**********")
///                                     .username("sshuser")
///                                     .build())
///                                 .build())
///                             .targetInstanceCount(2)
///                             .build(),
///                         RoleArgs.builder()
///                             .hardwareProfile(HardwareProfileArgs.builder()
///                                 .vmSize("Standard_D3_V2")
///                                 .build())
///                             .minInstanceCount(1)
///                             .name("workernode")
///                             .osProfile(OsProfileArgs.builder()
///                                 .linuxOperatingSystemProfile(LinuxOperatingSystemProfileArgs.builder()
///                                     .password("**********")
///                                     .username("sshuser")
///                                     .build())
///                                 .build())
///                             .targetInstanceCount(4)
///                             .build(),
///                         RoleArgs.builder()
///                             .hardwareProfile(HardwareProfileArgs.builder()
///                                 .vmSize("Small")
///                                 .build())
///                             .minInstanceCount(1)
///                             .name("zookeepernode")
///                             .osProfile(OsProfileArgs.builder()
///                                 .linuxOperatingSystemProfile(LinuxOperatingSystemProfileArgs.builder()
///                                     .password("**********")
///                                     .username("sshuser")
///                                     .build())
///                                 .build())
///                             .targetInstanceCount(3)
///                             .build())
///                     .build())
///                 .osType("Linux")
///                 .storageProfile(StorageProfileArgs.builder()
///                     .storageaccounts(StorageAccountArgs.builder()
///                         .container("containername")
///                         .enableSecureChannel(true)
///                         .isDefault(true)
///                         .key("storagekey")
///                         .name("mystorage.blob.core.windows.net")
///                         .build())
///                     .build())
///                 .tier("Standard")
///                 .build())
///             .resourceGroupName("rg1")
///             .tags(Map.of("key1", "val1"))
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const cluster = new azure_native.hdinsight.Cluster("cluster", {
///     clusterName: "cluster1",
///     properties: {
///         clusterDefinition: {
///             configurations: {
///                 gateway: {
///                     "restAuthCredential.isEnabled": "true",
///                     "restAuthCredential.password": "**********",
///                     "restAuthCredential.username": "admin",
///                 },
///             },
///             kind: "Hadoop",
///         },
///         clusterVersion: "3.5",
///         computeProfile: {
///             roles: [
///                 {
///                     hardwareProfile: {
///                         vmSize: "Standard_D3_V2",
///                     },
///                     minInstanceCount: 1,
///                     name: "headnode",
///                     osProfile: {
///                         linuxOperatingSystemProfile: {
///                             password: "**********",
///                             username: "sshuser",
///                         },
///                     },
///                     targetInstanceCount: 2,
///                 },
///                 {
///                     hardwareProfile: {
///                         vmSize: "Standard_D3_V2",
///                     },
///                     minInstanceCount: 1,
///                     name: "workernode",
///                     osProfile: {
///                         linuxOperatingSystemProfile: {
///                             password: "**********",
///                             username: "sshuser",
///                         },
///                     },
///                     targetInstanceCount: 4,
///                 },
///                 {
///                     hardwareProfile: {
///                         vmSize: "Small",
///                     },
///                     minInstanceCount: 1,
///                     name: "zookeepernode",
///                     osProfile: {
///                         linuxOperatingSystemProfile: {
///                             password: "**********",
///                             username: "sshuser",
///                         },
///                     },
///                     targetInstanceCount: 3,
///                 },
///             ],
///         },
///         osType: azure_native.hdinsight.OSType.Linux,
///         storageProfile: {
///             storageaccounts: [{
///                 container: "containername",
///                 enableSecureChannel: true,
///                 isDefault: true,
///                 key: "storagekey",
///                 name: "mystorage.blob.core.windows.net",
///             }],
///         },
///         tier: azure_native.hdinsight.Tier.Standard,
///     },
///     resourceGroupName: "rg1",
///     tags: {
///         key1: "val1",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// cluster = azure_native.hdinsight.Cluster("cluster",
///     cluster_name="cluster1",
///     properties={
///         "cluster_definition": {
///             "configurations": {
///                 "gateway": {
///                     "restAuthCredential.isEnabled": "true",
///                     "restAuthCredential.password": "**********",
///                     "restAuthCredential.username": "admin",
///                 },
///             },
///             "kind": "Hadoop",
///         },
///         "cluster_version": "3.5",
///         "compute_profile": {
///             "roles": [
///                 {
///                     "hardware_profile": {
///                         "vm_size": "Standard_D3_V2",
///                     },
///                     "min_instance_count": 1,
///                     "name": "headnode",
///                     "os_profile": {
///                         "linux_operating_system_profile": {
///                             "password": "**********",
///                             "username": "sshuser",
///                         },
///                     },
///                     "target_instance_count": 2,
///                 },
///                 {
///                     "hardware_profile": {
///                         "vm_size": "Standard_D3_V2",
///                     },
///                     "min_instance_count": 1,
///                     "name": "workernode",
///                     "os_profile": {
///                         "linux_operating_system_profile": {
///                             "password": "**********",
///                             "username": "sshuser",
///                         },
///                     },
///                     "target_instance_count": 4,
///                 },
///                 {
///                     "hardware_profile": {
///                         "vm_size": "Small",
///                     },
///                     "min_instance_count": 1,
///                     "name": "zookeepernode",
///                     "os_profile": {
///                         "linux_operating_system_profile": {
///                             "password": "**********",
///                             "username": "sshuser",
///                         },
///                     },
///                     "target_instance_count": 3,
///                 },
///             ],
///         },
///         "os_type": azure_native.hdinsight.OSType.LINUX,
///         "storage_profile": {
///             "storageaccounts": [{
///                 "container": "containername",
///                 "enable_secure_channel": True,
///                 "is_default": True,
///                 "key": "storagekey",
///                 "name": "mystorage.blob.core.windows.net",
///             }],
///         },
///         "tier": azure_native.hdinsight.Tier.STANDARD,
///     },
///     resource_group_name="rg1",
///     tags={
///         "key1": "val1",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   cluster:
///     type: azure-native:hdinsight:Cluster
///     properties:
///       clusterName: cluster1
///       properties:
///         clusterDefinition:
///           configurations:
///             gateway:
///               restAuthCredential.isEnabled: 'true'
///               restAuthCredential.password: '**********'
///               restAuthCredential.username: admin
///           kind: Hadoop
///         clusterVersion: '3.5'
///         computeProfile:
///           roles:
///             - hardwareProfile:
///                 vmSize: Standard_D3_V2
///               minInstanceCount: 1
///               name: headnode
///               osProfile:
///                 linuxOperatingSystemProfile:
///                   password: '**********'
///                   username: sshuser
///               targetInstanceCount: 2
///             - hardwareProfile:
///                 vmSize: Standard_D3_V2
///               minInstanceCount: 1
///               name: workernode
///               osProfile:
///                 linuxOperatingSystemProfile:
///                   password: '**********'
///                   username: sshuser
///               targetInstanceCount: 4
///             - hardwareProfile:
///                 vmSize: Small
///               minInstanceCount: 1
///               name: zookeepernode
///               osProfile:
///                 linuxOperatingSystemProfile:
///                   password: '**********'
///                   username: sshuser
///               targetInstanceCount: 3
///         osType: Linux
///         storageProfile:
///           storageaccounts:
///             - container: containername
///               enableSecureChannel: true
///               isDefault: true
///               key: storagekey
///               name: mystorage.blob.core.windows.net
///         tier: Standard
///       resourceGroupName: rg1
///       tags:
///         key1: val1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create Hadoop on Linux cluster with SSH public key
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var cluster = new AzureNative.HDInsight.Cluster("cluster", new()
///     {
///         ClusterName = "cluster1",
///         Properties = new AzureNative.HDInsight.Inputs.ClusterCreatePropertiesArgs
///         {
///             ClusterDefinition = new AzureNative.HDInsight.Inputs.ClusterDefinitionArgs
///             {
///                 Configurations = new Dictionary<string, object?>
///                 {
///                     ["gateway"] = new Dictionary<string, object?>
///                     {
///                         ["restAuthCredential.isEnabled"] = true,
///                         ["restAuthCredential.password"] = "**********",
///                         ["restAuthCredential.username"] = "admin",
///                     },
///                 },
///                 Kind = "Hadoop",
///             },
///             ClusterVersion = "3.5",
///             ComputeProfile = new AzureNative.HDInsight.Inputs.ComputeProfileArgs
///             {
///                 Roles = new[]
///                 {
///                     new AzureNative.HDInsight.Inputs.RoleArgs
///                     {
///                         HardwareProfile = new AzureNative.HDInsight.Inputs.HardwareProfileArgs
///                         {
///                             VmSize = "Standard_D3_V2",
///                         },
///                         MinInstanceCount = 1,
///                         Name = "headnode",
///                         OsProfile = new AzureNative.HDInsight.Inputs.OsProfileArgs
///                         {
///                             LinuxOperatingSystemProfile = new AzureNative.HDInsight.Inputs.LinuxOperatingSystemProfileArgs
///                             {
///                                 SshProfile = new AzureNative.HDInsight.Inputs.SshProfileArgs
///                                 {
///                                     PublicKeys = new[]
///                                     {
///                                         new AzureNative.HDInsight.Inputs.SshPublicKeyArgs
///                                         {
///                                             CertificateData = "**********",
///                                         },
///                                     },
///                                 },
///                                 Username = "sshuser",
///                             },
///                         },
///                         TargetInstanceCount = 2,
///                     },
///                     new AzureNative.HDInsight.Inputs.RoleArgs
///                     {
///                         HardwareProfile = new AzureNative.HDInsight.Inputs.HardwareProfileArgs
///                         {
///                             VmSize = "Standard_D3_V2",
///                         },
///                         MinInstanceCount = 1,
///                         Name = "workernode",
///                         OsProfile = new AzureNative.HDInsight.Inputs.OsProfileArgs
///                         {
///                             LinuxOperatingSystemProfile = new AzureNative.HDInsight.Inputs.LinuxOperatingSystemProfileArgs
///                             {
///                                 Password = "**********",
///                                 Username = "sshuser",
///                             },
///                         },
///                         TargetInstanceCount = 4,
///                     },
///                     new AzureNative.HDInsight.Inputs.RoleArgs
///                     {
///                         HardwareProfile = new AzureNative.HDInsight.Inputs.HardwareProfileArgs
///                         {
///                             VmSize = "Small",
///                         },
///                         MinInstanceCount = 1,
///                         Name = "zookeepernode",
///                         OsProfile = new AzureNative.HDInsight.Inputs.OsProfileArgs
///                         {
///                             LinuxOperatingSystemProfile = new AzureNative.HDInsight.Inputs.LinuxOperatingSystemProfileArgs
///                             {
///                                 Password = "**********",
///                                 Username = "sshuser",
///                             },
///                         },
///                         TargetInstanceCount = 3,
///                     },
///                 },
///             },
///             OsType = AzureNative.HDInsight.OSType.Linux,
///             StorageProfile = new AzureNative.HDInsight.Inputs.StorageProfileArgs
///             {
///                 Storageaccounts = new[]
///                 {
///                     new AzureNative.HDInsight.Inputs.StorageAccountArgs
///                     {
///                         Container = "containername",
///                         EnableSecureChannel = true,
///                         IsDefault = true,
///                         Key = "storagekey",
///                         Name = "mystorage.blob.core.windows.net",
///                     },
///                 },
///             },
///             Tier = AzureNative.HDInsight.Tier.Standard,
///         },
///         ResourceGroupName = "rg1",
///         Tags =
///         {
///             { "key1", "val1" },
///         },
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	hdinsight "github.com/pulumi/pulumi-azure-native-sdk/hdinsight/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hdinsight.NewCluster(ctx, "cluster", &hdinsight.ClusterArgs{
/// 			ClusterName: pulumi.String("cluster1"),
/// 			Properties: &hdinsight.ClusterCreatePropertiesArgs{
/// 				ClusterDefinition: &hdinsight.ClusterDefinitionArgs{
/// 					Configurations: pulumi.Any(map[string]interface{}{
/// 						"gateway": map[string]interface{}{
/// 							"restAuthCredential.isEnabled": true,
/// 							"restAuthCredential.password":  "**********",
/// 							"restAuthCredential.username":  "admin",
/// 						},
/// 					}),
/// 					Kind: pulumi.String("Hadoop"),
/// 				},
/// 				ClusterVersion: pulumi.String("3.5"),
/// 				ComputeProfile: &hdinsight.ComputeProfileArgs{
/// 					Roles: hdinsight.RoleArray{
/// 						&hdinsight.RoleArgs{
/// 							HardwareProfile: &hdinsight.HardwareProfileArgs{
/// 								VmSize: pulumi.String("Standard_D3_V2"),
/// 							},
/// 							MinInstanceCount: pulumi.Int(1),
/// 							Name:             pulumi.String("headnode"),
/// 							OsProfile: &hdinsight.OsProfileArgs{
/// 								LinuxOperatingSystemProfile: &hdinsight.LinuxOperatingSystemProfileArgs{
/// 									SshProfile: &hdinsight.SshProfileArgs{
/// 										PublicKeys: hdinsight.SshPublicKeyArray{
/// 											&hdinsight.SshPublicKeyArgs{
/// 												CertificateData: pulumi.String("**********"),
/// 											},
/// 										},
/// 									},
/// 									Username: pulumi.String("sshuser"),
/// 								},
/// 							},
/// 							TargetInstanceCount: pulumi.Int(2),
/// 						},
/// 						&hdinsight.RoleArgs{
/// 							HardwareProfile: &hdinsight.HardwareProfileArgs{
/// 								VmSize: pulumi.String("Standard_D3_V2"),
/// 							},
/// 							MinInstanceCount: pulumi.Int(1),
/// 							Name:             pulumi.String("workernode"),
/// 							OsProfile: &hdinsight.OsProfileArgs{
/// 								LinuxOperatingSystemProfile: &hdinsight.LinuxOperatingSystemProfileArgs{
/// 									Password: pulumi.String("**********"),
/// 									Username: pulumi.String("sshuser"),
/// 								},
/// 							},
/// 							TargetInstanceCount: pulumi.Int(4),
/// 						},
/// 						&hdinsight.RoleArgs{
/// 							HardwareProfile: &hdinsight.HardwareProfileArgs{
/// 								VmSize: pulumi.String("Small"),
/// 							},
/// 							MinInstanceCount: pulumi.Int(1),
/// 							Name:             pulumi.String("zookeepernode"),
/// 							OsProfile: &hdinsight.OsProfileArgs{
/// 								LinuxOperatingSystemProfile: &hdinsight.LinuxOperatingSystemProfileArgs{
/// 									Password: pulumi.String("**********"),
/// 									Username: pulumi.String("sshuser"),
/// 								},
/// 							},
/// 							TargetInstanceCount: pulumi.Int(3),
/// 						},
/// 					},
/// 				},
/// 				OsType: pulumi.String(hdinsight.OSTypeLinux),
/// 				StorageProfile: &hdinsight.StorageProfileArgs{
/// 					Storageaccounts: hdinsight.StorageAccountArray{
/// 						&hdinsight.StorageAccountArgs{
/// 							Container:           pulumi.String("containername"),
/// 							EnableSecureChannel: pulumi.Bool(true),
/// 							IsDefault:           pulumi.Bool(true),
/// 							Key:                 pulumi.String("storagekey"),
/// 							Name:                pulumi.String("mystorage.blob.core.windows.net"),
/// 						},
/// 					},
/// 				},
/// 				Tier: pulumi.String(hdinsight.TierStandard),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			Tags: pulumi.StringMap{
/// 				"key1": pulumi.String("val1"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.hdinsight.Cluster;
/// import com.pulumi.azurenative.hdinsight.ClusterArgs;
/// import com.pulumi.azurenative.hdinsight.inputs.ClusterCreatePropertiesArgs;
/// import com.pulumi.azurenative.hdinsight.inputs.ClusterDefinitionArgs;
/// import com.pulumi.azurenative.hdinsight.inputs.ComputeProfileArgs;
/// import com.pulumi.azurenative.hdinsight.inputs.StorageProfileArgs;
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
///         var cluster = new Cluster("cluster", ClusterArgs.builder()
///             .clusterName("cluster1")
///             .properties(ClusterCreatePropertiesArgs.builder()
///                 .clusterDefinition(ClusterDefinitionArgs.builder()
///                     .configurations(Map.of("gateway", Map.ofEntries(
///                         Map.entry("restAuthCredential.isEnabled", true),
///                         Map.entry("restAuthCredential.password", "**********"),
///                         Map.entry("restAuthCredential.username", "admin")
///                     )))
///                     .kind("Hadoop")
///                     .build())
///                 .clusterVersion("3.5")
///                 .computeProfile(ComputeProfileArgs.builder()
///                     .roles(
///                         RoleArgs.builder()
///                             .hardwareProfile(HardwareProfileArgs.builder()
///                                 .vmSize("Standard_D3_V2")
///                                 .build())
///                             .minInstanceCount(1)
///                             .name("headnode")
///                             .osProfile(OsProfileArgs.builder()
///                                 .linuxOperatingSystemProfile(LinuxOperatingSystemProfileArgs.builder()
///                                     .sshProfile(SshProfileArgs.builder()
///                                         .publicKeys(SshPublicKeyArgs.builder()
///                                             .certificateData("**********")
///                                             .build())
///                                         .build())
///                                     .username("sshuser")
///                                     .build())
///                                 .build())
///                             .targetInstanceCount(2)
///                             .build(),
///                         RoleArgs.builder()
///                             .hardwareProfile(HardwareProfileArgs.builder()
///                                 .vmSize("Standard_D3_V2")
///                                 .build())
///                             .minInstanceCount(1)
///                             .name("workernode")
///                             .osProfile(OsProfileArgs.builder()
///                                 .linuxOperatingSystemProfile(LinuxOperatingSystemProfileArgs.builder()
///                                     .password("**********")
///                                     .username("sshuser")
///                                     .build())
///                                 .build())
///                             .targetInstanceCount(4)
///                             .build(),
///                         RoleArgs.builder()
///                             .hardwareProfile(HardwareProfileArgs.builder()
///                                 .vmSize("Small")
///                                 .build())
///                             .minInstanceCount(1)
///                             .name("zookeepernode")
///                             .osProfile(OsProfileArgs.builder()
///                                 .linuxOperatingSystemProfile(LinuxOperatingSystemProfileArgs.builder()
///                                     .password("**********")
///                                     .username("sshuser")
///                                     .build())
///                                 .build())
///                             .targetInstanceCount(3)
///                             .build())
///                     .build())
///                 .osType("Linux")
///                 .storageProfile(StorageProfileArgs.builder()
///                     .storageaccounts(StorageAccountArgs.builder()
///                         .container("containername")
///                         .enableSecureChannel(true)
///                         .isDefault(true)
///                         .key("storagekey")
///                         .name("mystorage.blob.core.windows.net")
///                         .build())
///                     .build())
///                 .tier("Standard")
///                 .build())
///             .resourceGroupName("rg1")
///             .tags(Map.of("key1", "val1"))
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const cluster = new azure_native.hdinsight.Cluster("cluster", {
///     clusterName: "cluster1",
///     properties: {
///         clusterDefinition: {
///             configurations: {
///                 gateway: {
///                     "restAuthCredential.isEnabled": true,
///                     "restAuthCredential.password": "**********",
///                     "restAuthCredential.username": "admin",
///                 },
///             },
///             kind: "Hadoop",
///         },
///         clusterVersion: "3.5",
///         computeProfile: {
///             roles: [
///                 {
///                     hardwareProfile: {
///                         vmSize: "Standard_D3_V2",
///                     },
///                     minInstanceCount: 1,
///                     name: "headnode",
///                     osProfile: {
///                         linuxOperatingSystemProfile: {
///                             sshProfile: {
///                                 publicKeys: [{
///                                     certificateData: "**********",
///                                 }],
///                             },
///                             username: "sshuser",
///                         },
///                     },
///                     targetInstanceCount: 2,
///                 },
///                 {
///                     hardwareProfile: {
///                         vmSize: "Standard_D3_V2",
///                     },
///                     minInstanceCount: 1,
///                     name: "workernode",
///                     osProfile: {
///                         linuxOperatingSystemProfile: {
///                             password: "**********",
///                             username: "sshuser",
///                         },
///                     },
///                     targetInstanceCount: 4,
///                 },
///                 {
///                     hardwareProfile: {
///                         vmSize: "Small",
///                     },
///                     minInstanceCount: 1,
///                     name: "zookeepernode",
///                     osProfile: {
///                         linuxOperatingSystemProfile: {
///                             password: "**********",
///                             username: "sshuser",
///                         },
///                     },
///                     targetInstanceCount: 3,
///                 },
///             ],
///         },
///         osType: azure_native.hdinsight.OSType.Linux,
///         storageProfile: {
///             storageaccounts: [{
///                 container: "containername",
///                 enableSecureChannel: true,
///                 isDefault: true,
///                 key: "storagekey",
///                 name: "mystorage.blob.core.windows.net",
///             }],
///         },
///         tier: azure_native.hdinsight.Tier.Standard,
///     },
///     resourceGroupName: "rg1",
///     tags: {
///         key1: "val1",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// cluster = azure_native.hdinsight.Cluster("cluster",
///     cluster_name="cluster1",
///     properties={
///         "cluster_definition": {
///             "configurations": {
///                 "gateway": {
///                     "restAuthCredential.isEnabled": True,
///                     "restAuthCredential.password": "**********",
///                     "restAuthCredential.username": "admin",
///                 },
///             },
///             "kind": "Hadoop",
///         },
///         "cluster_version": "3.5",
///         "compute_profile": {
///             "roles": [
///                 {
///                     "hardware_profile": {
///                         "vm_size": "Standard_D3_V2",
///                     },
///                     "min_instance_count": 1,
///                     "name": "headnode",
///                     "os_profile": {
///                         "linux_operating_system_profile": {
///                             "ssh_profile": {
///                                 "public_keys": [{
///                                     "certificate_data": "**********",
///                                 }],
///                             },
///                             "username": "sshuser",
///                         },
///                     },
///                     "target_instance_count": 2,
///                 },
///                 {
///                     "hardware_profile": {
///                         "vm_size": "Standard_D3_V2",
///                     },
///                     "min_instance_count": 1,
///                     "name": "workernode",
///                     "os_profile": {
///                         "linux_operating_system_profile": {
///                             "password": "**********",
///                             "username": "sshuser",
///                         },
///                     },
///                     "target_instance_count": 4,
///                 },
///                 {
///                     "hardware_profile": {
///                         "vm_size": "Small",
///                     },
///                     "min_instance_count": 1,
///                     "name": "zookeepernode",
///                     "os_profile": {
///                         "linux_operating_system_profile": {
///                             "password": "**********",
///                             "username": "sshuser",
///                         },
///                     },
///                     "target_instance_count": 3,
///                 },
///             ],
///         },
///         "os_type": azure_native.hdinsight.OSType.LINUX,
///         "storage_profile": {
///             "storageaccounts": [{
///                 "container": "containername",
///                 "enable_secure_channel": True,
///                 "is_default": True,
///                 "key": "storagekey",
///                 "name": "mystorage.blob.core.windows.net",
///             }],
///         },
///         "tier": azure_native.hdinsight.Tier.STANDARD,
///     },
///     resource_group_name="rg1",
///     tags={
///         "key1": "val1",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   cluster:
///     type: azure-native:hdinsight:Cluster
///     properties:
///       clusterName: cluster1
///       properties:
///         clusterDefinition:
///           configurations:
///             gateway:
///               restAuthCredential.isEnabled: true
///               restAuthCredential.password: '**********'
///               restAuthCredential.username: admin
///           kind: Hadoop
///         clusterVersion: '3.5'
///         computeProfile:
///           roles:
///             - hardwareProfile:
///                 vmSize: Standard_D3_V2
///               minInstanceCount: 1
///               name: headnode
///               osProfile:
///                 linuxOperatingSystemProfile:
///                   sshProfile:
///                     publicKeys:
///                       - certificateData: '**********'
///                   username: sshuser
///               targetInstanceCount: 2
///             - hardwareProfile:
///                 vmSize: Standard_D3_V2
///               minInstanceCount: 1
///               name: workernode
///               osProfile:
///                 linuxOperatingSystemProfile:
///                   password: '**********'
///                   username: sshuser
///               targetInstanceCount: 4
///             - hardwareProfile:
///                 vmSize: Small
///               minInstanceCount: 1
///               name: zookeepernode
///               osProfile:
///                 linuxOperatingSystemProfile:
///                   password: '**********'
///                   username: sshuser
///               targetInstanceCount: 3
///         osType: Linux
///         storageProfile:
///           storageaccounts:
///             - container: containername
///               enableSecureChannel: true
///               isDefault: true
///               key: storagekey
///               name: mystorage.blob.core.windows.net
///         tier: Standard
///       resourceGroupName: rg1
///       tags:
///         key1: val1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create Kafka cluster with Kafka Rest Proxy
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var cluster = new AzureNative.HDInsight.Cluster("cluster", new()
///     {
///         ClusterName = "cluster1",
///         Properties = new AzureNative.HDInsight.Inputs.ClusterCreatePropertiesArgs
///         {
///             ClusterDefinition = new AzureNative.HDInsight.Inputs.ClusterDefinitionArgs
///             {
///                 ComponentVersion =
///                 {
///                     { "Kafka", "2.1" },
///                 },
///                 Configurations = new Dictionary<string, object?>
///                 {
///                     ["gateway"] = new Dictionary<string, object?>
///                     {
///                         ["restAuthCredential.isEnabled"] = true,
///                         ["restAuthCredential.password"] = "**********",
///                         ["restAuthCredential.username"] = "admin",
///                     },
///                 },
///                 Kind = "kafka",
///             },
///             ClusterVersion = "4.0",
///             ComputeProfile = new AzureNative.HDInsight.Inputs.ComputeProfileArgs
///             {
///                 Roles = new[]
///                 {
///                     new AzureNative.HDInsight.Inputs.RoleArgs
///                     {
///                         HardwareProfile = new AzureNative.HDInsight.Inputs.HardwareProfileArgs
///                         {
///                             VmSize = "Large",
///                         },
///                         Name = "headnode",
///                         OsProfile = new AzureNative.HDInsight.Inputs.OsProfileArgs
///                         {
///                             LinuxOperatingSystemProfile = new AzureNative.HDInsight.Inputs.LinuxOperatingSystemProfileArgs
///                             {
///                                 Password = "**********",
///                                 Username = "sshuser",
///                             },
///                         },
///                         TargetInstanceCount = 2,
///                     },
///                     new AzureNative.HDInsight.Inputs.RoleArgs
///                     {
///                         DataDisksGroups = new[]
///                         {
///                             new AzureNative.HDInsight.Inputs.DataDisksGroupsArgs
///                             {
///                                 DisksPerNode = 8,
///                             },
///                         },
///                         HardwareProfile = new AzureNative.HDInsight.Inputs.HardwareProfileArgs
///                         {
///                             VmSize = "Large",
///                         },
///                         Name = "workernode",
///                         OsProfile = new AzureNative.HDInsight.Inputs.OsProfileArgs
///                         {
///                             LinuxOperatingSystemProfile = new AzureNative.HDInsight.Inputs.LinuxOperatingSystemProfileArgs
///                             {
///                                 Password = "**********",
///                                 Username = "sshuser",
///                             },
///                         },
///                         TargetInstanceCount = 3,
///                     },
///                     new AzureNative.HDInsight.Inputs.RoleArgs
///                     {
///                         HardwareProfile = new AzureNative.HDInsight.Inputs.HardwareProfileArgs
///                         {
///                             VmSize = "Small",
///                         },
///                         Name = "zookeepernode",
///                         OsProfile = new AzureNative.HDInsight.Inputs.OsProfileArgs
///                         {
///                             LinuxOperatingSystemProfile = new AzureNative.HDInsight.Inputs.LinuxOperatingSystemProfileArgs
///                             {
///                                 Password = "**********",
///                                 Username = "sshuser",
///                             },
///                         },
///                         TargetInstanceCount = 3,
///                     },
///                     new AzureNative.HDInsight.Inputs.RoleArgs
///                     {
///                         HardwareProfile = new AzureNative.HDInsight.Inputs.HardwareProfileArgs
///                         {
///                             VmSize = "Standard_D4_v2",
///                         },
///                         Name = "kafkamanagementnode",
///                         OsProfile = new AzureNative.HDInsight.Inputs.OsProfileArgs
///                         {
///                             LinuxOperatingSystemProfile = new AzureNative.HDInsight.Inputs.LinuxOperatingSystemProfileArgs
///                             {
///                                 Password = "**********",
///                                 Username = "kafkauser",
///                             },
///                         },
///                         TargetInstanceCount = 2,
///                     },
///                 },
///             },
///             KafkaRestProperties = new AzureNative.HDInsight.Inputs.KafkaRestPropertiesArgs
///             {
///                 ClientGroupInfo = new AzureNative.HDInsight.Inputs.ClientGroupInfoArgs
///                 {
///                     GroupId = "00000000-0000-0000-0000-111111111111",
///                     GroupName = "Kafka security group name",
///                 },
///             },
///             OsType = AzureNative.HDInsight.OSType.Linux,
///             StorageProfile = new AzureNative.HDInsight.Inputs.StorageProfileArgs
///             {
///                 Storageaccounts = new[]
///                 {
///                     new AzureNative.HDInsight.Inputs.StorageAccountArgs
///                     {
///                         Container = "containername",
///                         EnableSecureChannel = true,
///                         IsDefault = true,
///                         Key = "storagekey",
///                         Name = "mystorage.blob.core.windows.net",
///                     },
///                 },
///             },
///             Tier = AzureNative.HDInsight.Tier.Standard,
///         },
///         ResourceGroupName = "rg1",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	hdinsight "github.com/pulumi/pulumi-azure-native-sdk/hdinsight/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hdinsight.NewCluster(ctx, "cluster", &hdinsight.ClusterArgs{
/// 			ClusterName: pulumi.String("cluster1"),
/// 			Properties: &hdinsight.ClusterCreatePropertiesArgs{
/// 				ClusterDefinition: &hdinsight.ClusterDefinitionArgs{
/// 					ComponentVersion: pulumi.StringMap{
/// 						"Kafka": pulumi.String("2.1"),
/// 					},
/// 					Configurations: pulumi.Any(map[string]interface{}{
/// 						"gateway": map[string]interface{}{
/// 							"restAuthCredential.isEnabled": true,
/// 							"restAuthCredential.password":  "**********",
/// 							"restAuthCredential.username":  "admin",
/// 						},
/// 					}),
/// 					Kind: pulumi.String("kafka"),
/// 				},
/// 				ClusterVersion: pulumi.String("4.0"),
/// 				ComputeProfile: &hdinsight.ComputeProfileArgs{
/// 					Roles: hdinsight.RoleArray{
/// 						&hdinsight.RoleArgs{
/// 							HardwareProfile: &hdinsight.HardwareProfileArgs{
/// 								VmSize: pulumi.String("Large"),
/// 							},
/// 							Name: pulumi.String("headnode"),
/// 							OsProfile: &hdinsight.OsProfileArgs{
/// 								LinuxOperatingSystemProfile: &hdinsight.LinuxOperatingSystemProfileArgs{
/// 									Password: pulumi.String("**********"),
/// 									Username: pulumi.String("sshuser"),
/// 								},
/// 							},
/// 							TargetInstanceCount: pulumi.Int(2),
/// 						},
/// 						&hdinsight.RoleArgs{
/// 							DataDisksGroups: hdinsight.DataDisksGroupsArray{
/// 								&hdinsight.DataDisksGroupsArgs{
/// 									DisksPerNode: pulumi.Int(8),
/// 								},
/// 							},
/// 							HardwareProfile: &hdinsight.HardwareProfileArgs{
/// 								VmSize: pulumi.String("Large"),
/// 							},
/// 							Name: pulumi.String("workernode"),
/// 							OsProfile: &hdinsight.OsProfileArgs{
/// 								LinuxOperatingSystemProfile: &hdinsight.LinuxOperatingSystemProfileArgs{
/// 									Password: pulumi.String("**********"),
/// 									Username: pulumi.String("sshuser"),
/// 								},
/// 							},
/// 							TargetInstanceCount: pulumi.Int(3),
/// 						},
/// 						&hdinsight.RoleArgs{
/// 							HardwareProfile: &hdinsight.HardwareProfileArgs{
/// 								VmSize: pulumi.String("Small"),
/// 							},
/// 							Name: pulumi.String("zookeepernode"),
/// 							OsProfile: &hdinsight.OsProfileArgs{
/// 								LinuxOperatingSystemProfile: &hdinsight.LinuxOperatingSystemProfileArgs{
/// 									Password: pulumi.String("**********"),
/// 									Username: pulumi.String("sshuser"),
/// 								},
/// 							},
/// 							TargetInstanceCount: pulumi.Int(3),
/// 						},
/// 						&hdinsight.RoleArgs{
/// 							HardwareProfile: &hdinsight.HardwareProfileArgs{
/// 								VmSize: pulumi.String("Standard_D4_v2"),
/// 							},
/// 							Name: pulumi.String("kafkamanagementnode"),
/// 							OsProfile: &hdinsight.OsProfileArgs{
/// 								LinuxOperatingSystemProfile: &hdinsight.LinuxOperatingSystemProfileArgs{
/// 									Password: pulumi.String("**********"),
/// 									Username: pulumi.String("kafkauser"),
/// 								},
/// 							},
/// 							TargetInstanceCount: pulumi.Int(2),
/// 						},
/// 					},
/// 				},
/// 				KafkaRestProperties: &hdinsight.KafkaRestPropertiesArgs{
/// 					ClientGroupInfo: &hdinsight.ClientGroupInfoArgs{
/// 						GroupId:   pulumi.String("00000000-0000-0000-0000-111111111111"),
/// 						GroupName: pulumi.String("Kafka security group name"),
/// 					},
/// 				},
/// 				OsType: pulumi.String(hdinsight.OSTypeLinux),
/// 				StorageProfile: &hdinsight.StorageProfileArgs{
/// 					Storageaccounts: hdinsight.StorageAccountArray{
/// 						&hdinsight.StorageAccountArgs{
/// 							Container:           pulumi.String("containername"),
/// 							EnableSecureChannel: pulumi.Bool(true),
/// 							IsDefault:           pulumi.Bool(true),
/// 							Key:                 pulumi.String("storagekey"),
/// 							Name:                pulumi.String("mystorage.blob.core.windows.net"),
/// 						},
/// 					},
/// 				},
/// 				Tier: pulumi.String(hdinsight.TierStandard),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.hdinsight.Cluster;
/// import com.pulumi.azurenative.hdinsight.ClusterArgs;
/// import com.pulumi.azurenative.hdinsight.inputs.ClusterCreatePropertiesArgs;
/// import com.pulumi.azurenative.hdinsight.inputs.ClusterDefinitionArgs;
/// import com.pulumi.azurenative.hdinsight.inputs.ComputeProfileArgs;
/// import com.pulumi.azurenative.hdinsight.inputs.KafkaRestPropertiesArgs;
/// import com.pulumi.azurenative.hdinsight.inputs.ClientGroupInfoArgs;
/// import com.pulumi.azurenative.hdinsight.inputs.StorageProfileArgs;
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
///         var cluster = new Cluster("cluster", ClusterArgs.builder()
///             .clusterName("cluster1")
///             .properties(ClusterCreatePropertiesArgs.builder()
///                 .clusterDefinition(ClusterDefinitionArgs.builder()
///                     .componentVersion(Map.of("Kafka", "2.1"))
///                     .configurations(Map.of("gateway", Map.ofEntries(
///                         Map.entry("restAuthCredential.isEnabled", true),
///                         Map.entry("restAuthCredential.password", "**********"),
///                         Map.entry("restAuthCredential.username", "admin")
///                     )))
///                     .kind("kafka")
///                     .build())
///                 .clusterVersion("4.0")
///                 .computeProfile(ComputeProfileArgs.builder()
///                     .roles(
///                         RoleArgs.builder()
///                             .hardwareProfile(HardwareProfileArgs.builder()
///                                 .vmSize("Large")
///                                 .build())
///                             .name("headnode")
///                             .osProfile(OsProfileArgs.builder()
///                                 .linuxOperatingSystemProfile(LinuxOperatingSystemProfileArgs.builder()
///                                     .password("**********")
///                                     .username("sshuser")
///                                     .build())
///                                 .build())
///                             .targetInstanceCount(2)
///                             .build(),
///                         RoleArgs.builder()
///                             .dataDisksGroups(DataDisksGroupsArgs.builder()
///                                 .disksPerNode(8)
///                                 .build())
///                             .hardwareProfile(HardwareProfileArgs.builder()
///                                 .vmSize("Large")
///                                 .build())
///                             .name("workernode")
///                             .osProfile(OsProfileArgs.builder()
///                                 .linuxOperatingSystemProfile(LinuxOperatingSystemProfileArgs.builder()
///                                     .password("**********")
///                                     .username("sshuser")
///                                     .build())
///                                 .build())
///                             .targetInstanceCount(3)
///                             .build(),
///                         RoleArgs.builder()
///                             .hardwareProfile(HardwareProfileArgs.builder()
///                                 .vmSize("Small")
///                                 .build())
///                             .name("zookeepernode")
///                             .osProfile(OsProfileArgs.builder()
///                                 .linuxOperatingSystemProfile(LinuxOperatingSystemProfileArgs.builder()
///                                     .password("**********")
///                                     .username("sshuser")
///                                     .build())
///                                 .build())
///                             .targetInstanceCount(3)
///                             .build(),
///                         RoleArgs.builder()
///                             .hardwareProfile(HardwareProfileArgs.builder()
///                                 .vmSize("Standard_D4_v2")
///                                 .build())
///                             .name("kafkamanagementnode")
///                             .osProfile(OsProfileArgs.builder()
///                                 .linuxOperatingSystemProfile(LinuxOperatingSystemProfileArgs.builder()
///                                     .password("**********")
///                                     .username("kafkauser")
///                                     .build())
///                                 .build())
///                             .targetInstanceCount(2)
///                             .build())
///                     .build())
///                 .kafkaRestProperties(KafkaRestPropertiesArgs.builder()
///                     .clientGroupInfo(ClientGroupInfoArgs.builder()
///                         .groupId("00000000-0000-0000-0000-111111111111")
///                         .groupName("Kafka security group name")
///                         .build())
///                     .build())
///                 .osType("Linux")
///                 .storageProfile(StorageProfileArgs.builder()
///                     .storageaccounts(StorageAccountArgs.builder()
///                         .container("containername")
///                         .enableSecureChannel(true)
///                         .isDefault(true)
///                         .key("storagekey")
///                         .name("mystorage.blob.core.windows.net")
///                         .build())
///                     .build())
///                 .tier("Standard")
///                 .build())
///             .resourceGroupName("rg1")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const cluster = new azure_native.hdinsight.Cluster("cluster", {
///     clusterName: "cluster1",
///     properties: {
///         clusterDefinition: {
///             componentVersion: {
///                 Kafka: "2.1",
///             },
///             configurations: {
///                 gateway: {
///                     "restAuthCredential.isEnabled": true,
///                     "restAuthCredential.password": "**********",
///                     "restAuthCredential.username": "admin",
///                 },
///             },
///             kind: "kafka",
///         },
///         clusterVersion: "4.0",
///         computeProfile: {
///             roles: [
///                 {
///                     hardwareProfile: {
///                         vmSize: "Large",
///                     },
///                     name: "headnode",
///                     osProfile: {
///                         linuxOperatingSystemProfile: {
///                             password: "**********",
///                             username: "sshuser",
///                         },
///                     },
///                     targetInstanceCount: 2,
///                 },
///                 {
///                     dataDisksGroups: [{
///                         disksPerNode: 8,
///                     }],
///                     hardwareProfile: {
///                         vmSize: "Large",
///                     },
///                     name: "workernode",
///                     osProfile: {
///                         linuxOperatingSystemProfile: {
///                             password: "**********",
///                             username: "sshuser",
///                         },
///                     },
///                     targetInstanceCount: 3,
///                 },
///                 {
///                     hardwareProfile: {
///                         vmSize: "Small",
///                     },
///                     name: "zookeepernode",
///                     osProfile: {
///                         linuxOperatingSystemProfile: {
///                             password: "**********",
///                             username: "sshuser",
///                         },
///                     },
///                     targetInstanceCount: 3,
///                 },
///                 {
///                     hardwareProfile: {
///                         vmSize: "Standard_D4_v2",
///                     },
///                     name: "kafkamanagementnode",
///                     osProfile: {
///                         linuxOperatingSystemProfile: {
///                             password: "**********",
///                             username: "kafkauser",
///                         },
///                     },
///                     targetInstanceCount: 2,
///                 },
///             ],
///         },
///         kafkaRestProperties: {
///             clientGroupInfo: {
///                 groupId: "00000000-0000-0000-0000-111111111111",
///                 groupName: "Kafka security group name",
///             },
///         },
///         osType: azure_native.hdinsight.OSType.Linux,
///         storageProfile: {
///             storageaccounts: [{
///                 container: "containername",
///                 enableSecureChannel: true,
///                 isDefault: true,
///                 key: "storagekey",
///                 name: "mystorage.blob.core.windows.net",
///             }],
///         },
///         tier: azure_native.hdinsight.Tier.Standard,
///     },
///     resourceGroupName: "rg1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// cluster = azure_native.hdinsight.Cluster("cluster",
///     cluster_name="cluster1",
///     properties={
///         "cluster_definition": {
///             "component_version": {
///                 "Kafka": "2.1",
///             },
///             "configurations": {
///                 "gateway": {
///                     "restAuthCredential.isEnabled": True,
///                     "restAuthCredential.password": "**********",
///                     "restAuthCredential.username": "admin",
///                 },
///             },
///             "kind": "kafka",
///         },
///         "cluster_version": "4.0",
///         "compute_profile": {
///             "roles": [
///                 {
///                     "hardware_profile": {
///                         "vm_size": "Large",
///                     },
///                     "name": "headnode",
///                     "os_profile": {
///                         "linux_operating_system_profile": {
///                             "password": "**********",
///                             "username": "sshuser",
///                         },
///                     },
///                     "target_instance_count": 2,
///                 },
///                 {
///                     "data_disks_groups": [{
///                         "disks_per_node": 8,
///                     }],
///                     "hardware_profile": {
///                         "vm_size": "Large",
///                     },
///                     "name": "workernode",
///                     "os_profile": {
///                         "linux_operating_system_profile": {
///                             "password": "**********",
///                             "username": "sshuser",
///                         },
///                     },
///                     "target_instance_count": 3,
///                 },
///                 {
///                     "hardware_profile": {
///                         "vm_size": "Small",
///                     },
///                     "name": "zookeepernode",
///                     "os_profile": {
///                         "linux_operating_system_profile": {
///                             "password": "**********",
///                             "username": "sshuser",
///                         },
///                     },
///                     "target_instance_count": 3,
///                 },
///                 {
///                     "hardware_profile": {
///                         "vm_size": "Standard_D4_v2",
///                     },
///                     "name": "kafkamanagementnode",
///                     "os_profile": {
///                         "linux_operating_system_profile": {
///                             "password": "**********",
///                             "username": "kafkauser",
///                         },
///                     },
///                     "target_instance_count": 2,
///                 },
///             ],
///         },
///         "kafka_rest_properties": {
///             "client_group_info": {
///                 "group_id": "00000000-0000-0000-0000-111111111111",
///                 "group_name": "Kafka security group name",
///             },
///         },
///         "os_type": azure_native.hdinsight.OSType.LINUX,
///         "storage_profile": {
///             "storageaccounts": [{
///                 "container": "containername",
///                 "enable_secure_channel": True,
///                 "is_default": True,
///                 "key": "storagekey",
///                 "name": "mystorage.blob.core.windows.net",
///             }],
///         },
///         "tier": azure_native.hdinsight.Tier.STANDARD,
///     },
///     resource_group_name="rg1")
///
/// ```
///
/// ```yaml
/// resources:
///   cluster:
///     type: azure-native:hdinsight:Cluster
///     properties:
///       clusterName: cluster1
///       properties:
///         clusterDefinition:
///           componentVersion:
///             Kafka: '2.1'
///           configurations:
///             gateway:
///               restAuthCredential.isEnabled: true
///               restAuthCredential.password: '**********'
///               restAuthCredential.username: admin
///           kind: kafka
///         clusterVersion: '4.0'
///         computeProfile:
///           roles:
///             - hardwareProfile:
///                 vmSize: Large
///               name: headnode
///               osProfile:
///                 linuxOperatingSystemProfile:
///                   password: '**********'
///                   username: sshuser
///               targetInstanceCount: 2
///             - dataDisksGroups:
///                 - disksPerNode: 8
///               hardwareProfile:
///                 vmSize: Large
///               name: workernode
///               osProfile:
///                 linuxOperatingSystemProfile:
///                   password: '**********'
///                   username: sshuser
///               targetInstanceCount: 3
///             - hardwareProfile:
///                 vmSize: Small
///               name: zookeepernode
///               osProfile:
///                 linuxOperatingSystemProfile:
///                   password: '**********'
///                   username: sshuser
///               targetInstanceCount: 3
///             - hardwareProfile:
///                 vmSize: Standard_D4_v2
///               name: kafkamanagementnode
///               osProfile:
///                 linuxOperatingSystemProfile:
///                   password: '**********'
///                   username: kafkauser
///               targetInstanceCount: 2
///         kafkaRestProperties:
///           clientGroupInfo:
///             groupId: 00000000-0000-0000-0000-111111111111
///             groupName: Kafka security group name
///         osType: Linux
///         storageProfile:
///           storageaccounts:
///             - container: containername
///               enableSecureChannel: true
///               isDefault: true
///               key: storagekey
///               name: mystorage.blob.core.windows.net
///         tier: Standard
///       resourceGroupName: rg1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create Secure Hadoop cluster
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var cluster = new AzureNative.HDInsight.Cluster("cluster", new()
///     {
///         ClusterName = "cluster1",
///         Properties = new AzureNative.HDInsight.Inputs.ClusterCreatePropertiesArgs
///         {
///             ClusterDefinition = new AzureNative.HDInsight.Inputs.ClusterDefinitionArgs
///             {
///                 Configurations = new Dictionary<string, object?>
///                 {
///                     ["gateway"] = new Dictionary<string, object?>
///                     {
///                         ["restAuthCredential.isEnabled"] = true,
///                         ["restAuthCredential.password"] = "**********",
///                         ["restAuthCredential.username"] = "admin",
///                     },
///                 },
///                 Kind = "Hadoop",
///             },
///             ClusterVersion = "3.5",
///             ComputeProfile = new AzureNative.HDInsight.Inputs.ComputeProfileArgs
///             {
///                 Roles = new[]
///                 {
///                     new AzureNative.HDInsight.Inputs.RoleArgs
///                     {
///                         HardwareProfile = new AzureNative.HDInsight.Inputs.HardwareProfileArgs
///                         {
///                             VmSize = "Standard_D3_V2",
///                         },
///                         MinInstanceCount = 1,
///                         Name = "headnode",
///                         OsProfile = new AzureNative.HDInsight.Inputs.OsProfileArgs
///                         {
///                             LinuxOperatingSystemProfile = new AzureNative.HDInsight.Inputs.LinuxOperatingSystemProfileArgs
///                             {
///                                 Password = "**********",
///                                 SshProfile = new AzureNative.HDInsight.Inputs.SshProfileArgs
///                                 {
///                                     PublicKeys = new[]
///                                     {
///                                         new AzureNative.HDInsight.Inputs.SshPublicKeyArgs
///                                         {
///                                             CertificateData = "**********",
///                                         },
///                                     },
///                                 },
///                                 Username = "sshuser",
///                             },
///                         },
///                         ScriptActions = new() { },
///                         TargetInstanceCount = 2,
///                         VirtualNetworkProfile = new AzureNative.HDInsight.Inputs.VirtualNetworkProfileArgs
///                         {
///                             Id = "/subscriptions/subId/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/vnetname",
///                             Subnet = "/subscriptions/subId/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/vnetname/subnets/vnetsubnet",
///                         },
///                     },
///                     new AzureNative.HDInsight.Inputs.RoleArgs
///                     {
///                         HardwareProfile = new AzureNative.HDInsight.Inputs.HardwareProfileArgs
///                         {
///                             VmSize = "Standard_D3_V2",
///                         },
///                         MinInstanceCount = 1,
///                         Name = "workernode",
///                         OsProfile = new AzureNative.HDInsight.Inputs.OsProfileArgs
///                         {
///                             LinuxOperatingSystemProfile = new AzureNative.HDInsight.Inputs.LinuxOperatingSystemProfileArgs
///                             {
///                                 Password = "**********",
///                                 SshProfile = new AzureNative.HDInsight.Inputs.SshProfileArgs
///                                 {
///                                     PublicKeys = new[]
///                                     {
///                                         new AzureNative.HDInsight.Inputs.SshPublicKeyArgs
///                                         {
///                                             CertificateData = "**********",
///                                         },
///                                     },
///                                 },
///                                 Username = "sshuser",
///                             },
///                         },
///                         ScriptActions = new() { },
///                         TargetInstanceCount = 4,
///                         VirtualNetworkProfile = new AzureNative.HDInsight.Inputs.VirtualNetworkProfileArgs
///                         {
///                             Id = "/subscriptions/subId/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/vnetname",
///                             Subnet = "/subscriptions/subId/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/vnetname/subnets/vnetsubnet",
///                         },
///                     },
///                     new AzureNative.HDInsight.Inputs.RoleArgs
///                     {
///                         HardwareProfile = new AzureNative.HDInsight.Inputs.HardwareProfileArgs
///                         {
///                             VmSize = "Small",
///                         },
///                         MinInstanceCount = 1,
///                         Name = "zookeepernode",
///                         OsProfile = new AzureNative.HDInsight.Inputs.OsProfileArgs
///                         {
///                             LinuxOperatingSystemProfile = new AzureNative.HDInsight.Inputs.LinuxOperatingSystemProfileArgs
///                             {
///                                 Password = "**********",
///                                 SshProfile = new AzureNative.HDInsight.Inputs.SshProfileArgs
///                                 {
///                                     PublicKeys = new[]
///                                     {
///                                         new AzureNative.HDInsight.Inputs.SshPublicKeyArgs
///                                         {
///                                             CertificateData = "**********",
///                                         },
///                                     },
///                                 },
///                                 Username = "sshuser",
///                             },
///                         },
///                         ScriptActions = new() { },
///                         TargetInstanceCount = 3,
///                         VirtualNetworkProfile = new AzureNative.HDInsight.Inputs.VirtualNetworkProfileArgs
///                         {
///                             Id = "/subscriptions/subId/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/vnetname",
///                             Subnet = "/subscriptions/subId/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/vnetname/subnets/vnetsubnet",
///                         },
///                     },
///                 },
///             },
///             OsType = AzureNative.HDInsight.OSType.Linux,
///             SecurityProfile = new AzureNative.HDInsight.Inputs.SecurityProfileArgs
///             {
///                 ClusterUsersGroupDNs = new[]
///                 {
///                     "hdiusers",
///                 },
///                 DirectoryType = AzureNative.HDInsight.DirectoryType.ActiveDirectory,
///                 Domain = "DomainName",
///                 DomainUserPassword = "**********",
///                 DomainUsername = "DomainUsername",
///                 LdapsUrls = new[]
///                 {
///                     "ldaps://10.10.0.4:636",
///                 },
///                 OrganizationalUnitDN = "OU=Hadoop,DC=hdinsight,DC=test",
///             },
///             StorageProfile = new AzureNative.HDInsight.Inputs.StorageProfileArgs
///             {
///                 Storageaccounts = new[]
///                 {
///                     new AzureNative.HDInsight.Inputs.StorageAccountArgs
///                     {
///                         Container = "containername",
///                         EnableSecureChannel = true,
///                         IsDefault = true,
///                         Key = "storage account key",
///                         Name = "mystorage.blob.core.windows.net",
///                     },
///                 },
///             },
///             Tier = AzureNative.HDInsight.Tier.Premium,
///         },
///         ResourceGroupName = "rg1",
///         Tags =
///         {
///             { "key1", "val1" },
///         },
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	hdinsight "github.com/pulumi/pulumi-azure-native-sdk/hdinsight/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hdinsight.NewCluster(ctx, "cluster", &hdinsight.ClusterArgs{
/// 			ClusterName: pulumi.String("cluster1"),
/// 			Properties: &hdinsight.ClusterCreatePropertiesArgs{
/// 				ClusterDefinition: &hdinsight.ClusterDefinitionArgs{
/// 					Configurations: pulumi.Any(map[string]interface{}{
/// 						"gateway": map[string]interface{}{
/// 							"restAuthCredential.isEnabled": true,
/// 							"restAuthCredential.password":  "**********",
/// 							"restAuthCredential.username":  "admin",
/// 						},
/// 					}),
/// 					Kind: pulumi.String("Hadoop"),
/// 				},
/// 				ClusterVersion: pulumi.String("3.5"),
/// 				ComputeProfile: &hdinsight.ComputeProfileArgs{
/// 					Roles: hdinsight.RoleArray{
/// 						&hdinsight.RoleArgs{
/// 							HardwareProfile: &hdinsight.HardwareProfileArgs{
/// 								VmSize: pulumi.String("Standard_D3_V2"),
/// 							},
/// 							MinInstanceCount: pulumi.Int(1),
/// 							Name:             pulumi.String("headnode"),
/// 							OsProfile: &hdinsight.OsProfileArgs{
/// 								LinuxOperatingSystemProfile: &hdinsight.LinuxOperatingSystemProfileArgs{
/// 									Password: pulumi.String("**********"),
/// 									SshProfile: &hdinsight.SshProfileArgs{
/// 										PublicKeys: hdinsight.SshPublicKeyArray{
/// 											&hdinsight.SshPublicKeyArgs{
/// 												CertificateData: pulumi.String("**********"),
/// 											},
/// 										},
/// 									},
/// 									Username: pulumi.String("sshuser"),
/// 								},
/// 							},
/// 							ScriptActions:       hdinsight.ScriptActionArray{},
/// 							TargetInstanceCount: pulumi.Int(2),
/// 							VirtualNetworkProfile: &hdinsight.VirtualNetworkProfileArgs{
/// 								Id:     pulumi.String("/subscriptions/subId/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/vnetname"),
/// 								Subnet: pulumi.String("/subscriptions/subId/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/vnetname/subnets/vnetsubnet"),
/// 							},
/// 						},
/// 						&hdinsight.RoleArgs{
/// 							HardwareProfile: &hdinsight.HardwareProfileArgs{
/// 								VmSize: pulumi.String("Standard_D3_V2"),
/// 							},
/// 							MinInstanceCount: pulumi.Int(1),
/// 							Name:             pulumi.String("workernode"),
/// 							OsProfile: &hdinsight.OsProfileArgs{
/// 								LinuxOperatingSystemProfile: &hdinsight.LinuxOperatingSystemProfileArgs{
/// 									Password: pulumi.String("**********"),
/// 									SshProfile: &hdinsight.SshProfileArgs{
/// 										PublicKeys: hdinsight.SshPublicKeyArray{
/// 											&hdinsight.SshPublicKeyArgs{
/// 												CertificateData: pulumi.String("**********"),
/// 											},
/// 										},
/// 									},
/// 									Username: pulumi.String("sshuser"),
/// 								},
/// 							},
/// 							ScriptActions:       hdinsight.ScriptActionArray{},
/// 							TargetInstanceCount: pulumi.Int(4),
/// 							VirtualNetworkProfile: &hdinsight.VirtualNetworkProfileArgs{
/// 								Id:     pulumi.String("/subscriptions/subId/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/vnetname"),
/// 								Subnet: pulumi.String("/subscriptions/subId/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/vnetname/subnets/vnetsubnet"),
/// 							},
/// 						},
/// 						&hdinsight.RoleArgs{
/// 							HardwareProfile: &hdinsight.HardwareProfileArgs{
/// 								VmSize: pulumi.String("Small"),
/// 							},
/// 							MinInstanceCount: pulumi.Int(1),
/// 							Name:             pulumi.String("zookeepernode"),
/// 							OsProfile: &hdinsight.OsProfileArgs{
/// 								LinuxOperatingSystemProfile: &hdinsight.LinuxOperatingSystemProfileArgs{
/// 									Password: pulumi.String("**********"),
/// 									SshProfile: &hdinsight.SshProfileArgs{
/// 										PublicKeys: hdinsight.SshPublicKeyArray{
/// 											&hdinsight.SshPublicKeyArgs{
/// 												CertificateData: pulumi.String("**********"),
/// 											},
/// 										},
/// 									},
/// 									Username: pulumi.String("sshuser"),
/// 								},
/// 							},
/// 							ScriptActions:       hdinsight.ScriptActionArray{},
/// 							TargetInstanceCount: pulumi.Int(3),
/// 							VirtualNetworkProfile: &hdinsight.VirtualNetworkProfileArgs{
/// 								Id:     pulumi.String("/subscriptions/subId/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/vnetname"),
/// 								Subnet: pulumi.String("/subscriptions/subId/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/vnetname/subnets/vnetsubnet"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 				OsType: pulumi.String(hdinsight.OSTypeLinux),
/// 				SecurityProfile: &hdinsight.SecurityProfileArgs{
/// 					ClusterUsersGroupDNs: pulumi.StringArray{
/// 						pulumi.String("hdiusers"),
/// 					},
/// 					DirectoryType:      pulumi.String(hdinsight.DirectoryTypeActiveDirectory),
/// 					Domain:             pulumi.String("DomainName"),
/// 					DomainUserPassword: pulumi.String("**********"),
/// 					DomainUsername:     pulumi.String("DomainUsername"),
/// 					LdapsUrls: pulumi.StringArray{
/// 						pulumi.String("ldaps://10.10.0.4:636"),
/// 					},
/// 					OrganizationalUnitDN: pulumi.String("OU=Hadoop,DC=hdinsight,DC=test"),
/// 				},
/// 				StorageProfile: &hdinsight.StorageProfileArgs{
/// 					Storageaccounts: hdinsight.StorageAccountArray{
/// 						&hdinsight.StorageAccountArgs{
/// 							Container:           pulumi.String("containername"),
/// 							EnableSecureChannel: pulumi.Bool(true),
/// 							IsDefault:           pulumi.Bool(true),
/// 							Key:                 pulumi.String("storage account key"),
/// 							Name:                pulumi.String("mystorage.blob.core.windows.net"),
/// 						},
/// 					},
/// 				},
/// 				Tier: pulumi.String(hdinsight.TierPremium),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			Tags: pulumi.StringMap{
/// 				"key1": pulumi.String("val1"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.hdinsight.Cluster;
/// import com.pulumi.azurenative.hdinsight.ClusterArgs;
/// import com.pulumi.azurenative.hdinsight.inputs.ClusterCreatePropertiesArgs;
/// import com.pulumi.azurenative.hdinsight.inputs.ClusterDefinitionArgs;
/// import com.pulumi.azurenative.hdinsight.inputs.ComputeProfileArgs;
/// import com.pulumi.azurenative.hdinsight.inputs.SecurityProfileArgs;
/// import com.pulumi.azurenative.hdinsight.inputs.StorageProfileArgs;
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
///         var cluster = new Cluster("cluster", ClusterArgs.builder()
///             .clusterName("cluster1")
///             .properties(ClusterCreatePropertiesArgs.builder()
///                 .clusterDefinition(ClusterDefinitionArgs.builder()
///                     .configurations(Map.of("gateway", Map.ofEntries(
///                         Map.entry("restAuthCredential.isEnabled", true),
///                         Map.entry("restAuthCredential.password", "**********"),
///                         Map.entry("restAuthCredential.username", "admin")
///                     )))
///                     .kind("Hadoop")
///                     .build())
///                 .clusterVersion("3.5")
///                 .computeProfile(ComputeProfileArgs.builder()
///                     .roles(
///                         RoleArgs.builder()
///                             .hardwareProfile(HardwareProfileArgs.builder()
///                                 .vmSize("Standard_D3_V2")
///                                 .build())
///                             .minInstanceCount(1)
///                             .name("headnode")
///                             .osProfile(OsProfileArgs.builder()
///                                 .linuxOperatingSystemProfile(LinuxOperatingSystemProfileArgs.builder()
///                                     .password("**********")
///                                     .sshProfile(SshProfileArgs.builder()
///                                         .publicKeys(SshPublicKeyArgs.builder()
///                                             .certificateData("**********")
///                                             .build())
///                                         .build())
///                                     .username("sshuser")
///                                     .build())
///                                 .build())
///                             .scriptActions()
///                             .targetInstanceCount(2)
///                             .virtualNetworkProfile(VirtualNetworkProfileArgs.builder()
///                                 .id("/subscriptions/subId/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/vnetname")
///                                 .subnet("/subscriptions/subId/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/vnetname/subnets/vnetsubnet")
///                                 .build())
///                             .build(),
///                         RoleArgs.builder()
///                             .hardwareProfile(HardwareProfileArgs.builder()
///                                 .vmSize("Standard_D3_V2")
///                                 .build())
///                             .minInstanceCount(1)
///                             .name("workernode")
///                             .osProfile(OsProfileArgs.builder()
///                                 .linuxOperatingSystemProfile(LinuxOperatingSystemProfileArgs.builder()
///                                     .password("**********")
///                                     .sshProfile(SshProfileArgs.builder()
///                                         .publicKeys(SshPublicKeyArgs.builder()
///                                             .certificateData("**********")
///                                             .build())
///                                         .build())
///                                     .username("sshuser")
///                                     .build())
///                                 .build())
///                             .scriptActions()
///                             .targetInstanceCount(4)
///                             .virtualNetworkProfile(VirtualNetworkProfileArgs.builder()
///                                 .id("/subscriptions/subId/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/vnetname")
///                                 .subnet("/subscriptions/subId/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/vnetname/subnets/vnetsubnet")
///                                 .build())
///                             .build(),
///                         RoleArgs.builder()
///                             .hardwareProfile(HardwareProfileArgs.builder()
///                                 .vmSize("Small")
///                                 .build())
///                             .minInstanceCount(1)
///                             .name("zookeepernode")
///                             .osProfile(OsProfileArgs.builder()
///                                 .linuxOperatingSystemProfile(LinuxOperatingSystemProfileArgs.builder()
///                                     .password("**********")
///                                     .sshProfile(SshProfileArgs.builder()
///                                         .publicKeys(SshPublicKeyArgs.builder()
///                                             .certificateData("**********")
///                                             .build())
///                                         .build())
///                                     .username("sshuser")
///                                     .build())
///                                 .build())
///                             .scriptActions()
///                             .targetInstanceCount(3)
///                             .virtualNetworkProfile(VirtualNetworkProfileArgs.builder()
///                                 .id("/subscriptions/subId/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/vnetname")
///                                 .subnet("/subscriptions/subId/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/vnetname/subnets/vnetsubnet")
///                                 .build())
///                             .build())
///                     .build())
///                 .osType("Linux")
///                 .securityProfile(SecurityProfileArgs.builder()
///                     .clusterUsersGroupDNs("hdiusers")
///                     .directoryType("ActiveDirectory")
///                     .domain("DomainName")
///                     .domainUserPassword("**********")
///                     .domainUsername("DomainUsername")
///                     .ldapsUrls("ldaps://10.10.0.4:636")
///                     .organizationalUnitDN("OU=Hadoop,DC=hdinsight,DC=test")
///                     .build())
///                 .storageProfile(StorageProfileArgs.builder()
///                     .storageaccounts(StorageAccountArgs.builder()
///                         .container("containername")
///                         .enableSecureChannel(true)
///                         .isDefault(true)
///                         .key("storage account key")
///                         .name("mystorage.blob.core.windows.net")
///                         .build())
///                     .build())
///                 .tier("Premium")
///                 .build())
///             .resourceGroupName("rg1")
///             .tags(Map.of("key1", "val1"))
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const cluster = new azure_native.hdinsight.Cluster("cluster", {
///     clusterName: "cluster1",
///     properties: {
///         clusterDefinition: {
///             configurations: {
///                 gateway: {
///                     "restAuthCredential.isEnabled": true,
///                     "restAuthCredential.password": "**********",
///                     "restAuthCredential.username": "admin",
///                 },
///             },
///             kind: "Hadoop",
///         },
///         clusterVersion: "3.5",
///         computeProfile: {
///             roles: [
///                 {
///                     hardwareProfile: {
///                         vmSize: "Standard_D3_V2",
///                     },
///                     minInstanceCount: 1,
///                     name: "headnode",
///                     osProfile: {
///                         linuxOperatingSystemProfile: {
///                             password: "**********",
///                             sshProfile: {
///                                 publicKeys: [{
///                                     certificateData: "**********",
///                                 }],
///                             },
///                             username: "sshuser",
///                         },
///                     },
///                     scriptActions: [],
///                     targetInstanceCount: 2,
///                     virtualNetworkProfile: {
///                         id: "/subscriptions/subId/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/vnetname",
///                         subnet: "/subscriptions/subId/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/vnetname/subnets/vnetsubnet",
///                     },
///                 },
///                 {
///                     hardwareProfile: {
///                         vmSize: "Standard_D3_V2",
///                     },
///                     minInstanceCount: 1,
///                     name: "workernode",
///                     osProfile: {
///                         linuxOperatingSystemProfile: {
///                             password: "**********",
///                             sshProfile: {
///                                 publicKeys: [{
///                                     certificateData: "**********",
///                                 }],
///                             },
///                             username: "sshuser",
///                         },
///                     },
///                     scriptActions: [],
///                     targetInstanceCount: 4,
///                     virtualNetworkProfile: {
///                         id: "/subscriptions/subId/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/vnetname",
///                         subnet: "/subscriptions/subId/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/vnetname/subnets/vnetsubnet",
///                     },
///                 },
///                 {
///                     hardwareProfile: {
///                         vmSize: "Small",
///                     },
///                     minInstanceCount: 1,
///                     name: "zookeepernode",
///                     osProfile: {
///                         linuxOperatingSystemProfile: {
///                             password: "**********",
///                             sshProfile: {
///                                 publicKeys: [{
///                                     certificateData: "**********",
///                                 }],
///                             },
///                             username: "sshuser",
///                         },
///                     },
///                     scriptActions: [],
///                     targetInstanceCount: 3,
///                     virtualNetworkProfile: {
///                         id: "/subscriptions/subId/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/vnetname",
///                         subnet: "/subscriptions/subId/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/vnetname/subnets/vnetsubnet",
///                     },
///                 },
///             ],
///         },
///         osType: azure_native.hdinsight.OSType.Linux,
///         securityProfile: {
///             clusterUsersGroupDNs: ["hdiusers"],
///             directoryType: azure_native.hdinsight.DirectoryType.ActiveDirectory,
///             domain: "DomainName",
///             domainUserPassword: "**********",
///             domainUsername: "DomainUsername",
///             ldapsUrls: ["ldaps://10.10.0.4:636"],
///             organizationalUnitDN: "OU=Hadoop,DC=hdinsight,DC=test",
///         },
///         storageProfile: {
///             storageaccounts: [{
///                 container: "containername",
///                 enableSecureChannel: true,
///                 isDefault: true,
///                 key: "storage account key",
///                 name: "mystorage.blob.core.windows.net",
///             }],
///         },
///         tier: azure_native.hdinsight.Tier.Premium,
///     },
///     resourceGroupName: "rg1",
///     tags: {
///         key1: "val1",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// cluster = azure_native.hdinsight.Cluster("cluster",
///     cluster_name="cluster1",
///     properties={
///         "cluster_definition": {
///             "configurations": {
///                 "gateway": {
///                     "restAuthCredential.isEnabled": True,
///                     "restAuthCredential.password": "**********",
///                     "restAuthCredential.username": "admin",
///                 },
///             },
///             "kind": "Hadoop",
///         },
///         "cluster_version": "3.5",
///         "compute_profile": {
///             "roles": [
///                 {
///                     "hardware_profile": {
///                         "vm_size": "Standard_D3_V2",
///                     },
///                     "min_instance_count": 1,
///                     "name": "headnode",
///                     "os_profile": {
///                         "linux_operating_system_profile": {
///                             "password": "**********",
///                             "ssh_profile": {
///                                 "public_keys": [{
///                                     "certificate_data": "**********",
///                                 }],
///                             },
///                             "username": "sshuser",
///                         },
///                     },
///                     "script_actions": [],
///                     "target_instance_count": 2,
///                     "virtual_network_profile": {
///                         "id": "/subscriptions/subId/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/vnetname",
///                         "subnet": "/subscriptions/subId/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/vnetname/subnets/vnetsubnet",
///                     },
///                 },
///                 {
///                     "hardware_profile": {
///                         "vm_size": "Standard_D3_V2",
///                     },
///                     "min_instance_count": 1,
///                     "name": "workernode",
///                     "os_profile": {
///                         "linux_operating_system_profile": {
///                             "password": "**********",
///                             "ssh_profile": {
///                                 "public_keys": [{
///                                     "certificate_data": "**********",
///                                 }],
///                             },
///                             "username": "sshuser",
///                         },
///                     },
///                     "script_actions": [],
///                     "target_instance_count": 4,
///                     "virtual_network_profile": {
///                         "id": "/subscriptions/subId/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/vnetname",
///                         "subnet": "/subscriptions/subId/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/vnetname/subnets/vnetsubnet",
///                     },
///                 },
///                 {
///                     "hardware_profile": {
///                         "vm_size": "Small",
///                     },
///                     "min_instance_count": 1,
///                     "name": "zookeepernode",
///                     "os_profile": {
///                         "linux_operating_system_profile": {
///                             "password": "**********",
///                             "ssh_profile": {
///                                 "public_keys": [{
///                                     "certificate_data": "**********",
///                                 }],
///                             },
///                             "username": "sshuser",
///                         },
///                     },
///                     "script_actions": [],
///                     "target_instance_count": 3,
///                     "virtual_network_profile": {
///                         "id": "/subscriptions/subId/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/vnetname",
///                         "subnet": "/subscriptions/subId/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/vnetname/subnets/vnetsubnet",
///                     },
///                 },
///             ],
///         },
///         "os_type": azure_native.hdinsight.OSType.LINUX,
///         "security_profile": {
///             "cluster_users_group_dns": ["hdiusers"],
///             "directory_type": azure_native.hdinsight.DirectoryType.ACTIVE_DIRECTORY,
///             "domain": "DomainName",
///             "domain_user_password": "**********",
///             "domain_username": "DomainUsername",
///             "ldaps_urls": ["ldaps://10.10.0.4:636"],
///             "organizational_unit_dn": "OU=Hadoop,DC=hdinsight,DC=test",
///         },
///         "storage_profile": {
///             "storageaccounts": [{
///                 "container": "containername",
///                 "enable_secure_channel": True,
///                 "is_default": True,
///                 "key": "storage account key",
///                 "name": "mystorage.blob.core.windows.net",
///             }],
///         },
///         "tier": azure_native.hdinsight.Tier.PREMIUM,
///     },
///     resource_group_name="rg1",
///     tags={
///         "key1": "val1",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   cluster:
///     type: azure-native:hdinsight:Cluster
///     properties:
///       clusterName: cluster1
///       properties:
///         clusterDefinition:
///           configurations:
///             gateway:
///               restAuthCredential.isEnabled: true
///               restAuthCredential.password: '**********'
///               restAuthCredential.username: admin
///           kind: Hadoop
///         clusterVersion: '3.5'
///         computeProfile:
///           roles:
///             - hardwareProfile:
///                 vmSize: Standard_D3_V2
///               minInstanceCount: 1
///               name: headnode
///               osProfile:
///                 linuxOperatingSystemProfile:
///                   password: '**********'
///                   sshProfile:
///                     publicKeys:
///                       - certificateData: '**********'
///                   username: sshuser
///               scriptActions: []
///               targetInstanceCount: 2
///               virtualNetworkProfile:
///                 id: /subscriptions/subId/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/vnetname
///                 subnet: /subscriptions/subId/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/vnetname/subnets/vnetsubnet
///             - hardwareProfile:
///                 vmSize: Standard_D3_V2
///               minInstanceCount: 1
///               name: workernode
///               osProfile:
///                 linuxOperatingSystemProfile:
///                   password: '**********'
///                   sshProfile:
///                     publicKeys:
///                       - certificateData: '**********'
///                   username: sshuser
///               scriptActions: []
///               targetInstanceCount: 4
///               virtualNetworkProfile:
///                 id: /subscriptions/subId/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/vnetname
///                 subnet: /subscriptions/subId/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/vnetname/subnets/vnetsubnet
///             - hardwareProfile:
///                 vmSize: Small
///               minInstanceCount: 1
///               name: zookeepernode
///               osProfile:
///                 linuxOperatingSystemProfile:
///                   password: '**********'
///                   sshProfile:
///                     publicKeys:
///                       - certificateData: '**********'
///                   username: sshuser
///               scriptActions: []
///               targetInstanceCount: 3
///               virtualNetworkProfile:
///                 id: /subscriptions/subId/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/vnetname
///                 subnet: /subscriptions/subId/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/vnetname/subnets/vnetsubnet
///         osType: Linux
///         securityProfile:
///           clusterUsersGroupDNs:
///             - hdiusers
///           directoryType: ActiveDirectory
///           domain: DomainName
///           domainUserPassword: '**********'
///           domainUsername: DomainUsername
///           ldapsUrls:
///             - ldaps://10.10.0.4:636
///           organizationalUnitDN: OU=Hadoop,DC=hdinsight,DC=test
///         storageProfile:
///           storageaccounts:
///             - container: containername
///               enableSecureChannel: true
///               isDefault: true
///               key: storage account key
///               name: mystorage.blob.core.windows.net
///         tier: Premium
///       resourceGroupName: rg1
///       tags:
///         key1: val1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create Spark on Linux Cluster with SSH password
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var cluster = new AzureNative.HDInsight.Cluster("cluster", new()
///     {
///         ClusterName = "cluster1",
///         Properties = new AzureNative.HDInsight.Inputs.ClusterCreatePropertiesArgs
///         {
///             ClusterDefinition = new AzureNative.HDInsight.Inputs.ClusterDefinitionArgs
///             {
///                 ComponentVersion =
///                 {
///                     { "Spark", "2.0" },
///                 },
///                 Configurations = new Dictionary<string, object?>
///                 {
///                     ["gateway"] = new Dictionary<string, object?>
///                     {
///                         ["restAuthCredential.isEnabled"] = true,
///                         ["restAuthCredential.password"] = "**********",
///                         ["restAuthCredential.username"] = "admin",
///                     },
///                 },
///                 Kind = "Spark",
///             },
///             ClusterVersion = "3.5",
///             ComputeProfile = new AzureNative.HDInsight.Inputs.ComputeProfileArgs
///             {
///                 Roles = new[]
///                 {
///                     new AzureNative.HDInsight.Inputs.RoleArgs
///                     {
///                         HardwareProfile = new AzureNative.HDInsight.Inputs.HardwareProfileArgs
///                         {
///                             VmSize = "Standard_D12_V2",
///                         },
///                         MinInstanceCount = 1,
///                         Name = "headnode",
///                         OsProfile = new AzureNative.HDInsight.Inputs.OsProfileArgs
///                         {
///                             LinuxOperatingSystemProfile = new AzureNative.HDInsight.Inputs.LinuxOperatingSystemProfileArgs
///                             {
///                                 Password = "**********",
///                                 Username = "sshuser",
///                             },
///                         },
///                         TargetInstanceCount = 2,
///                     },
///                     new AzureNative.HDInsight.Inputs.RoleArgs
///                     {
///                         HardwareProfile = new AzureNative.HDInsight.Inputs.HardwareProfileArgs
///                         {
///                             VmSize = "Standard_D4_V2",
///                         },
///                         MinInstanceCount = 1,
///                         Name = "workernode",
///                         OsProfile = new AzureNative.HDInsight.Inputs.OsProfileArgs
///                         {
///                             LinuxOperatingSystemProfile = new AzureNative.HDInsight.Inputs.LinuxOperatingSystemProfileArgs
///                             {
///                                 Password = "**********",
///                                 Username = "sshuser",
///                             },
///                         },
///                         TargetInstanceCount = 4,
///                     },
///                 },
///             },
///             OsType = AzureNative.HDInsight.OSType.Linux,
///             StorageProfile = new AzureNative.HDInsight.Inputs.StorageProfileArgs
///             {
///                 Storageaccounts = new[]
///                 {
///                     new AzureNative.HDInsight.Inputs.StorageAccountArgs
///                     {
///                         Container = "containername",
///                         EnableSecureChannel = true,
///                         IsDefault = true,
///                         Key = "storageapikey*",
///                         Name = "mystorage.blob.core.windows.net",
///                     },
///                 },
///             },
///             Tier = AzureNative.HDInsight.Tier.Standard,
///         },
///         ResourceGroupName = "rg1",
///         Tags =
///         {
///             { "key1", "val1" },
///         },
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	hdinsight "github.com/pulumi/pulumi-azure-native-sdk/hdinsight/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hdinsight.NewCluster(ctx, "cluster", &hdinsight.ClusterArgs{
/// 			ClusterName: pulumi.String("cluster1"),
/// 			Properties: &hdinsight.ClusterCreatePropertiesArgs{
/// 				ClusterDefinition: &hdinsight.ClusterDefinitionArgs{
/// 					ComponentVersion: pulumi.StringMap{
/// 						"Spark": pulumi.String("2.0"),
/// 					},
/// 					Configurations: pulumi.Any(map[string]interface{}{
/// 						"gateway": map[string]interface{}{
/// 							"restAuthCredential.isEnabled": true,
/// 							"restAuthCredential.password":  "**********",
/// 							"restAuthCredential.username":  "admin",
/// 						},
/// 					}),
/// 					Kind: pulumi.String("Spark"),
/// 				},
/// 				ClusterVersion: pulumi.String("3.5"),
/// 				ComputeProfile: &hdinsight.ComputeProfileArgs{
/// 					Roles: hdinsight.RoleArray{
/// 						&hdinsight.RoleArgs{
/// 							HardwareProfile: &hdinsight.HardwareProfileArgs{
/// 								VmSize: pulumi.String("Standard_D12_V2"),
/// 							},
/// 							MinInstanceCount: pulumi.Int(1),
/// 							Name:             pulumi.String("headnode"),
/// 							OsProfile: &hdinsight.OsProfileArgs{
/// 								LinuxOperatingSystemProfile: &hdinsight.LinuxOperatingSystemProfileArgs{
/// 									Password: pulumi.String("**********"),
/// 									Username: pulumi.String("sshuser"),
/// 								},
/// 							},
/// 							TargetInstanceCount: pulumi.Int(2),
/// 						},
/// 						&hdinsight.RoleArgs{
/// 							HardwareProfile: &hdinsight.HardwareProfileArgs{
/// 								VmSize: pulumi.String("Standard_D4_V2"),
/// 							},
/// 							MinInstanceCount: pulumi.Int(1),
/// 							Name:             pulumi.String("workernode"),
/// 							OsProfile: &hdinsight.OsProfileArgs{
/// 								LinuxOperatingSystemProfile: &hdinsight.LinuxOperatingSystemProfileArgs{
/// 									Password: pulumi.String("**********"),
/// 									Username: pulumi.String("sshuser"),
/// 								},
/// 							},
/// 							TargetInstanceCount: pulumi.Int(4),
/// 						},
/// 					},
/// 				},
/// 				OsType: pulumi.String(hdinsight.OSTypeLinux),
/// 				StorageProfile: &hdinsight.StorageProfileArgs{
/// 					Storageaccounts: hdinsight.StorageAccountArray{
/// 						&hdinsight.StorageAccountArgs{
/// 							Container:           pulumi.String("containername"),
/// 							EnableSecureChannel: pulumi.Bool(true),
/// 							IsDefault:           pulumi.Bool(true),
/// 							Key:                 pulumi.String("storageapikey*"),
/// 							Name:                pulumi.String("mystorage.blob.core.windows.net"),
/// 						},
/// 					},
/// 				},
/// 				Tier: pulumi.String(hdinsight.TierStandard),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			Tags: pulumi.StringMap{
/// 				"key1": pulumi.String("val1"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.hdinsight.Cluster;
/// import com.pulumi.azurenative.hdinsight.ClusterArgs;
/// import com.pulumi.azurenative.hdinsight.inputs.ClusterCreatePropertiesArgs;
/// import com.pulumi.azurenative.hdinsight.inputs.ClusterDefinitionArgs;
/// import com.pulumi.azurenative.hdinsight.inputs.ComputeProfileArgs;
/// import com.pulumi.azurenative.hdinsight.inputs.StorageProfileArgs;
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
///         var cluster = new Cluster("cluster", ClusterArgs.builder()
///             .clusterName("cluster1")
///             .properties(ClusterCreatePropertiesArgs.builder()
///                 .clusterDefinition(ClusterDefinitionArgs.builder()
///                     .componentVersion(Map.of("Spark", "2.0"))
///                     .configurations(Map.of("gateway", Map.ofEntries(
///                         Map.entry("restAuthCredential.isEnabled", true),
///                         Map.entry("restAuthCredential.password", "**********"),
///                         Map.entry("restAuthCredential.username", "admin")
///                     )))
///                     .kind("Spark")
///                     .build())
///                 .clusterVersion("3.5")
///                 .computeProfile(ComputeProfileArgs.builder()
///                     .roles(
///                         RoleArgs.builder()
///                             .hardwareProfile(HardwareProfileArgs.builder()
///                                 .vmSize("Standard_D12_V2")
///                                 .build())
///                             .minInstanceCount(1)
///                             .name("headnode")
///                             .osProfile(OsProfileArgs.builder()
///                                 .linuxOperatingSystemProfile(LinuxOperatingSystemProfileArgs.builder()
///                                     .password("**********")
///                                     .username("sshuser")
///                                     .build())
///                                 .build())
///                             .targetInstanceCount(2)
///                             .build(),
///                         RoleArgs.builder()
///                             .hardwareProfile(HardwareProfileArgs.builder()
///                                 .vmSize("Standard_D4_V2")
///                                 .build())
///                             .minInstanceCount(1)
///                             .name("workernode")
///                             .osProfile(OsProfileArgs.builder()
///                                 .linuxOperatingSystemProfile(LinuxOperatingSystemProfileArgs.builder()
///                                     .password("**********")
///                                     .username("sshuser")
///                                     .build())
///                                 .build())
///                             .targetInstanceCount(4)
///                             .build())
///                     .build())
///                 .osType("Linux")
///                 .storageProfile(StorageProfileArgs.builder()
///                     .storageaccounts(StorageAccountArgs.builder()
///                         .container("containername")
///                         .enableSecureChannel(true)
///                         .isDefault(true)
///                         .key("storageapikey*")
///                         .name("mystorage.blob.core.windows.net")
///                         .build())
///                     .build())
///                 .tier("Standard")
///                 .build())
///             .resourceGroupName("rg1")
///             .tags(Map.of("key1", "val1"))
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const cluster = new azure_native.hdinsight.Cluster("cluster", {
///     clusterName: "cluster1",
///     properties: {
///         clusterDefinition: {
///             componentVersion: {
///                 Spark: "2.0",
///             },
///             configurations: {
///                 gateway: {
///                     "restAuthCredential.isEnabled": true,
///                     "restAuthCredential.password": "**********",
///                     "restAuthCredential.username": "admin",
///                 },
///             },
///             kind: "Spark",
///         },
///         clusterVersion: "3.5",
///         computeProfile: {
///             roles: [
///                 {
///                     hardwareProfile: {
///                         vmSize: "Standard_D12_V2",
///                     },
///                     minInstanceCount: 1,
///                     name: "headnode",
///                     osProfile: {
///                         linuxOperatingSystemProfile: {
///                             password: "**********",
///                             username: "sshuser",
///                         },
///                     },
///                     targetInstanceCount: 2,
///                 },
///                 {
///                     hardwareProfile: {
///                         vmSize: "Standard_D4_V2",
///                     },
///                     minInstanceCount: 1,
///                     name: "workernode",
///                     osProfile: {
///                         linuxOperatingSystemProfile: {
///                             password: "**********",
///                             username: "sshuser",
///                         },
///                     },
///                     targetInstanceCount: 4,
///                 },
///             ],
///         },
///         osType: azure_native.hdinsight.OSType.Linux,
///         storageProfile: {
///             storageaccounts: [{
///                 container: "containername",
///                 enableSecureChannel: true,
///                 isDefault: true,
///                 key: "storageapikey*",
///                 name: "mystorage.blob.core.windows.net",
///             }],
///         },
///         tier: azure_native.hdinsight.Tier.Standard,
///     },
///     resourceGroupName: "rg1",
///     tags: {
///         key1: "val1",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// cluster = azure_native.hdinsight.Cluster("cluster",
///     cluster_name="cluster1",
///     properties={
///         "cluster_definition": {
///             "component_version": {
///                 "Spark": "2.0",
///             },
///             "configurations": {
///                 "gateway": {
///                     "restAuthCredential.isEnabled": True,
///                     "restAuthCredential.password": "**********",
///                     "restAuthCredential.username": "admin",
///                 },
///             },
///             "kind": "Spark",
///         },
///         "cluster_version": "3.5",
///         "compute_profile": {
///             "roles": [
///                 {
///                     "hardware_profile": {
///                         "vm_size": "Standard_D12_V2",
///                     },
///                     "min_instance_count": 1,
///                     "name": "headnode",
///                     "os_profile": {
///                         "linux_operating_system_profile": {
///                             "password": "**********",
///                             "username": "sshuser",
///                         },
///                     },
///                     "target_instance_count": 2,
///                 },
///                 {
///                     "hardware_profile": {
///                         "vm_size": "Standard_D4_V2",
///                     },
///                     "min_instance_count": 1,
///                     "name": "workernode",
///                     "os_profile": {
///                         "linux_operating_system_profile": {
///                             "password": "**********",
///                             "username": "sshuser",
///                         },
///                     },
///                     "target_instance_count": 4,
///                 },
///             ],
///         },
///         "os_type": azure_native.hdinsight.OSType.LINUX,
///         "storage_profile": {
///             "storageaccounts": [{
///                 "container": "containername",
///                 "enable_secure_channel": True,
///                 "is_default": True,
///                 "key": "storageapikey*",
///                 "name": "mystorage.blob.core.windows.net",
///             }],
///         },
///         "tier": azure_native.hdinsight.Tier.STANDARD,
///     },
///     resource_group_name="rg1",
///     tags={
///         "key1": "val1",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   cluster:
///     type: azure-native:hdinsight:Cluster
///     properties:
///       clusterName: cluster1
///       properties:
///         clusterDefinition:
///           componentVersion:
///             Spark: '2.0'
///           configurations:
///             gateway:
///               restAuthCredential.isEnabled: true
///               restAuthCredential.password: '**********'
///               restAuthCredential.username: admin
///           kind: Spark
///         clusterVersion: '3.5'
///         computeProfile:
///           roles:
///             - hardwareProfile:
///                 vmSize: Standard_D12_V2
///               minInstanceCount: 1
///               name: headnode
///               osProfile:
///                 linuxOperatingSystemProfile:
///                   password: '**********'
///                   username: sshuser
///               targetInstanceCount: 2
///             - hardwareProfile:
///                 vmSize: Standard_D4_V2
///               minInstanceCount: 1
///               name: workernode
///               osProfile:
///                 linuxOperatingSystemProfile:
///                   password: '**********'
///                   username: sshuser
///               targetInstanceCount: 4
///         osType: Linux
///         storageProfile:
///           storageaccounts:
///             - container: containername
///               enableSecureChannel: true
///               isDefault: true
///               key: storageapikey*
///               name: mystorage.blob.core.windows.net
///         tier: Standard
///       resourceGroupName: rg1
///       tags:
///         key1: val1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create cluster with TLS 1.2
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var cluster = new AzureNative.HDInsight.Cluster("cluster", new()
///     {
///         ClusterName = "cluster1",
///         Properties = new AzureNative.HDInsight.Inputs.ClusterCreatePropertiesArgs
///         {
///             ClusterDefinition = new AzureNative.HDInsight.Inputs.ClusterDefinitionArgs
///             {
///                 Configurations = new Dictionary<string, object?>
///                 {
///                     ["gateway"] = new Dictionary<string, object?>
///                     {
///                         ["restAuthCredential.isEnabled"] = true,
///                         ["restAuthCredential.password"] = "**********",
///                         ["restAuthCredential.username"] = "admin",
///                     },
///                 },
///                 Kind = "Hadoop",
///             },
///             ClusterVersion = "3.6",
///             ComputeProfile = new AzureNative.HDInsight.Inputs.ComputeProfileArgs
///             {
///                 Roles = new[]
///                 {
///                     new AzureNative.HDInsight.Inputs.RoleArgs
///                     {
///                         HardwareProfile = new AzureNative.HDInsight.Inputs.HardwareProfileArgs
///                         {
///                             VmSize = "Large",
///                         },
///                         Name = "headnode",
///                         OsProfile = new AzureNative.HDInsight.Inputs.OsProfileArgs
///                         {
///                             LinuxOperatingSystemProfile = new AzureNative.HDInsight.Inputs.LinuxOperatingSystemProfileArgs
///                             {
///                                 Password = "**********",
///                                 Username = "sshuser",
///                             },
///                         },
///                         TargetInstanceCount = 2,
///                     },
///                     new AzureNative.HDInsight.Inputs.RoleArgs
///                     {
///                         HardwareProfile = new AzureNative.HDInsight.Inputs.HardwareProfileArgs
///                         {
///                             VmSize = "Large",
///                         },
///                         Name = "workernode",
///                         OsProfile = new AzureNative.HDInsight.Inputs.OsProfileArgs
///                         {
///                             LinuxOperatingSystemProfile = new AzureNative.HDInsight.Inputs.LinuxOperatingSystemProfileArgs
///                             {
///                                 Password = "**********",
///                                 Username = "sshuser",
///                             },
///                         },
///                         TargetInstanceCount = 3,
///                     },
///                     new AzureNative.HDInsight.Inputs.RoleArgs
///                     {
///                         HardwareProfile = new AzureNative.HDInsight.Inputs.HardwareProfileArgs
///                         {
///                             VmSize = "Small",
///                         },
///                         Name = "zookeepernode",
///                         OsProfile = new AzureNative.HDInsight.Inputs.OsProfileArgs
///                         {
///                             LinuxOperatingSystemProfile = new AzureNative.HDInsight.Inputs.LinuxOperatingSystemProfileArgs
///                             {
///                                 Password = "**********",
///                                 Username = "sshuser",
///                             },
///                         },
///                         TargetInstanceCount = 3,
///                     },
///                 },
///             },
///             MinSupportedTlsVersion = "1.2",
///             OsType = AzureNative.HDInsight.OSType.Linux,
///             StorageProfile = new AzureNative.HDInsight.Inputs.StorageProfileArgs
///             {
///                 Storageaccounts = new[]
///                 {
///                     new AzureNative.HDInsight.Inputs.StorageAccountArgs
///                     {
///                         Container = "default8525",
///                         EnableSecureChannel = true,
///                         IsDefault = true,
///                         Key = "storagekey",
///                         Name = "mystorage.blob.core.windows.net",
///                     },
///                 },
///             },
///             Tier = AzureNative.HDInsight.Tier.Standard,
///         },
///         ResourceGroupName = "rg1",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	hdinsight "github.com/pulumi/pulumi-azure-native-sdk/hdinsight/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hdinsight.NewCluster(ctx, "cluster", &hdinsight.ClusterArgs{
/// 			ClusterName: pulumi.String("cluster1"),
/// 			Properties: &hdinsight.ClusterCreatePropertiesArgs{
/// 				ClusterDefinition: &hdinsight.ClusterDefinitionArgs{
/// 					Configurations: pulumi.Any(map[string]interface{}{
/// 						"gateway": map[string]interface{}{
/// 							"restAuthCredential.isEnabled": true,
/// 							"restAuthCredential.password":  "**********",
/// 							"restAuthCredential.username":  "admin",
/// 						},
/// 					}),
/// 					Kind: pulumi.String("Hadoop"),
/// 				},
/// 				ClusterVersion: pulumi.String("3.6"),
/// 				ComputeProfile: &hdinsight.ComputeProfileArgs{
/// 					Roles: hdinsight.RoleArray{
/// 						&hdinsight.RoleArgs{
/// 							HardwareProfile: &hdinsight.HardwareProfileArgs{
/// 								VmSize: pulumi.String("Large"),
/// 							},
/// 							Name: pulumi.String("headnode"),
/// 							OsProfile: &hdinsight.OsProfileArgs{
/// 								LinuxOperatingSystemProfile: &hdinsight.LinuxOperatingSystemProfileArgs{
/// 									Password: pulumi.String("**********"),
/// 									Username: pulumi.String("sshuser"),
/// 								},
/// 							},
/// 							TargetInstanceCount: pulumi.Int(2),
/// 						},
/// 						&hdinsight.RoleArgs{
/// 							HardwareProfile: &hdinsight.HardwareProfileArgs{
/// 								VmSize: pulumi.String("Large"),
/// 							},
/// 							Name: pulumi.String("workernode"),
/// 							OsProfile: &hdinsight.OsProfileArgs{
/// 								LinuxOperatingSystemProfile: &hdinsight.LinuxOperatingSystemProfileArgs{
/// 									Password: pulumi.String("**********"),
/// 									Username: pulumi.String("sshuser"),
/// 								},
/// 							},
/// 							TargetInstanceCount: pulumi.Int(3),
/// 						},
/// 						&hdinsight.RoleArgs{
/// 							HardwareProfile: &hdinsight.HardwareProfileArgs{
/// 								VmSize: pulumi.String("Small"),
/// 							},
/// 							Name: pulumi.String("zookeepernode"),
/// 							OsProfile: &hdinsight.OsProfileArgs{
/// 								LinuxOperatingSystemProfile: &hdinsight.LinuxOperatingSystemProfileArgs{
/// 									Password: pulumi.String("**********"),
/// 									Username: pulumi.String("sshuser"),
/// 								},
/// 							},
/// 							TargetInstanceCount: pulumi.Int(3),
/// 						},
/// 					},
/// 				},
/// 				MinSupportedTlsVersion: pulumi.String("1.2"),
/// 				OsType:                 pulumi.String(hdinsight.OSTypeLinux),
/// 				StorageProfile: &hdinsight.StorageProfileArgs{
/// 					Storageaccounts: hdinsight.StorageAccountArray{
/// 						&hdinsight.StorageAccountArgs{
/// 							Container:           pulumi.String("default8525"),
/// 							EnableSecureChannel: pulumi.Bool(true),
/// 							IsDefault:           pulumi.Bool(true),
/// 							Key:                 pulumi.String("storagekey"),
/// 							Name:                pulumi.String("mystorage.blob.core.windows.net"),
/// 						},
/// 					},
/// 				},
/// 				Tier: pulumi.String(hdinsight.TierStandard),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.hdinsight.Cluster;
/// import com.pulumi.azurenative.hdinsight.ClusterArgs;
/// import com.pulumi.azurenative.hdinsight.inputs.ClusterCreatePropertiesArgs;
/// import com.pulumi.azurenative.hdinsight.inputs.ClusterDefinitionArgs;
/// import com.pulumi.azurenative.hdinsight.inputs.ComputeProfileArgs;
/// import com.pulumi.azurenative.hdinsight.inputs.StorageProfileArgs;
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
///         var cluster = new Cluster("cluster", ClusterArgs.builder()
///             .clusterName("cluster1")
///             .properties(ClusterCreatePropertiesArgs.builder()
///                 .clusterDefinition(ClusterDefinitionArgs.builder()
///                     .configurations(Map.of("gateway", Map.ofEntries(
///                         Map.entry("restAuthCredential.isEnabled", true),
///                         Map.entry("restAuthCredential.password", "**********"),
///                         Map.entry("restAuthCredential.username", "admin")
///                     )))
///                     .kind("Hadoop")
///                     .build())
///                 .clusterVersion("3.6")
///                 .computeProfile(ComputeProfileArgs.builder()
///                     .roles(
///                         RoleArgs.builder()
///                             .hardwareProfile(HardwareProfileArgs.builder()
///                                 .vmSize("Large")
///                                 .build())
///                             .name("headnode")
///                             .osProfile(OsProfileArgs.builder()
///                                 .linuxOperatingSystemProfile(LinuxOperatingSystemProfileArgs.builder()
///                                     .password("**********")
///                                     .username("sshuser")
///                                     .build())
///                                 .build())
///                             .targetInstanceCount(2)
///                             .build(),
///                         RoleArgs.builder()
///                             .hardwareProfile(HardwareProfileArgs.builder()
///                                 .vmSize("Large")
///                                 .build())
///                             .name("workernode")
///                             .osProfile(OsProfileArgs.builder()
///                                 .linuxOperatingSystemProfile(LinuxOperatingSystemProfileArgs.builder()
///                                     .password("**********")
///                                     .username("sshuser")
///                                     .build())
///                                 .build())
///                             .targetInstanceCount(3)
///                             .build(),
///                         RoleArgs.builder()
///                             .hardwareProfile(HardwareProfileArgs.builder()
///                                 .vmSize("Small")
///                                 .build())
///                             .name("zookeepernode")
///                             .osProfile(OsProfileArgs.builder()
///                                 .linuxOperatingSystemProfile(LinuxOperatingSystemProfileArgs.builder()
///                                     .password("**********")
///                                     .username("sshuser")
///                                     .build())
///                                 .build())
///                             .targetInstanceCount(3)
///                             .build())
///                     .build())
///                 .minSupportedTlsVersion("1.2")
///                 .osType("Linux")
///                 .storageProfile(StorageProfileArgs.builder()
///                     .storageaccounts(StorageAccountArgs.builder()
///                         .container("default8525")
///                         .enableSecureChannel(true)
///                         .isDefault(true)
///                         .key("storagekey")
///                         .name("mystorage.blob.core.windows.net")
///                         .build())
///                     .build())
///                 .tier("Standard")
///                 .build())
///             .resourceGroupName("rg1")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const cluster = new azure_native.hdinsight.Cluster("cluster", {
///     clusterName: "cluster1",
///     properties: {
///         clusterDefinition: {
///             configurations: {
///                 gateway: {
///                     "restAuthCredential.isEnabled": true,
///                     "restAuthCredential.password": "**********",
///                     "restAuthCredential.username": "admin",
///                 },
///             },
///             kind: "Hadoop",
///         },
///         clusterVersion: "3.6",
///         computeProfile: {
///             roles: [
///                 {
///                     hardwareProfile: {
///                         vmSize: "Large",
///                     },
///                     name: "headnode",
///                     osProfile: {
///                         linuxOperatingSystemProfile: {
///                             password: "**********",
///                             username: "sshuser",
///                         },
///                     },
///                     targetInstanceCount: 2,
///                 },
///                 {
///                     hardwareProfile: {
///                         vmSize: "Large",
///                     },
///                     name: "workernode",
///                     osProfile: {
///                         linuxOperatingSystemProfile: {
///                             password: "**********",
///                             username: "sshuser",
///                         },
///                     },
///                     targetInstanceCount: 3,
///                 },
///                 {
///                     hardwareProfile: {
///                         vmSize: "Small",
///                     },
///                     name: "zookeepernode",
///                     osProfile: {
///                         linuxOperatingSystemProfile: {
///                             password: "**********",
///                             username: "sshuser",
///                         },
///                     },
///                     targetInstanceCount: 3,
///                 },
///             ],
///         },
///         minSupportedTlsVersion: "1.2",
///         osType: azure_native.hdinsight.OSType.Linux,
///         storageProfile: {
///             storageaccounts: [{
///                 container: "default8525",
///                 enableSecureChannel: true,
///                 isDefault: true,
///                 key: "storagekey",
///                 name: "mystorage.blob.core.windows.net",
///             }],
///         },
///         tier: azure_native.hdinsight.Tier.Standard,
///     },
///     resourceGroupName: "rg1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// cluster = azure_native.hdinsight.Cluster("cluster",
///     cluster_name="cluster1",
///     properties={
///         "cluster_definition": {
///             "configurations": {
///                 "gateway": {
///                     "restAuthCredential.isEnabled": True,
///                     "restAuthCredential.password": "**********",
///                     "restAuthCredential.username": "admin",
///                 },
///             },
///             "kind": "Hadoop",
///         },
///         "cluster_version": "3.6",
///         "compute_profile": {
///             "roles": [
///                 {
///                     "hardware_profile": {
///                         "vm_size": "Large",
///                     },
///                     "name": "headnode",
///                     "os_profile": {
///                         "linux_operating_system_profile": {
///                             "password": "**********",
///                             "username": "sshuser",
///                         },
///                     },
///                     "target_instance_count": 2,
///                 },
///                 {
///                     "hardware_profile": {
///                         "vm_size": "Large",
///                     },
///                     "name": "workernode",
///                     "os_profile": {
///                         "linux_operating_system_profile": {
///                             "password": "**********",
///                             "username": "sshuser",
///                         },
///                     },
///                     "target_instance_count": 3,
///                 },
///                 {
///                     "hardware_profile": {
///                         "vm_size": "Small",
///                     },
///                     "name": "zookeepernode",
///                     "os_profile": {
///                         "linux_operating_system_profile": {
///                             "password": "**********",
///                             "username": "sshuser",
///                         },
///                     },
///                     "target_instance_count": 3,
///                 },
///             ],
///         },
///         "min_supported_tls_version": "1.2",
///         "os_type": azure_native.hdinsight.OSType.LINUX,
///         "storage_profile": {
///             "storageaccounts": [{
///                 "container": "default8525",
///                 "enable_secure_channel": True,
///                 "is_default": True,
///                 "key": "storagekey",
///                 "name": "mystorage.blob.core.windows.net",
///             }],
///         },
///         "tier": azure_native.hdinsight.Tier.STANDARD,
///     },
///     resource_group_name="rg1")
///
/// ```
///
/// ```yaml
/// resources:
///   cluster:
///     type: azure-native:hdinsight:Cluster
///     properties:
///       clusterName: cluster1
///       properties:
///         clusterDefinition:
///           configurations:
///             gateway:
///               restAuthCredential.isEnabled: true
///               restAuthCredential.password: '**********'
///               restAuthCredential.username: admin
///           kind: Hadoop
///         clusterVersion: '3.6'
///         computeProfile:
///           roles:
///             - hardwareProfile:
///                 vmSize: Large
///               name: headnode
///               osProfile:
///                 linuxOperatingSystemProfile:
///                   password: '**********'
///                   username: sshuser
///               targetInstanceCount: 2
///             - hardwareProfile:
///                 vmSize: Large
///               name: workernode
///               osProfile:
///                 linuxOperatingSystemProfile:
///                   password: '**********'
///                   username: sshuser
///               targetInstanceCount: 3
///             - hardwareProfile:
///                 vmSize: Small
///               name: zookeepernode
///               osProfile:
///                 linuxOperatingSystemProfile:
///                   password: '**********'
///                   username: sshuser
///               targetInstanceCount: 3
///         minSupportedTlsVersion: '1.2'
///         osType: Linux
///         storageProfile:
///           storageaccounts:
///             - container: default8525
///               enableSecureChannel: true
///               isDefault: true
///               key: storagekey
///               name: mystorage.blob.core.windows.net
///         tier: Standard
///       resourceGroupName: rg1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create cluster with availability zones
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var cluster = new AzureNative.HDInsight.Cluster("cluster", new()
///     {
///         ClusterName = "cluster1",
///         Properties = new AzureNative.HDInsight.Inputs.ClusterCreatePropertiesArgs
///         {
///             ClusterDefinition = new AzureNative.HDInsight.Inputs.ClusterDefinitionArgs
///             {
///                 Configurations = new Dictionary<string, object?>
///                 {
///                     ["ambari-conf"] = new Dictionary<string, object?>
///                     {
///                         ["database-name"] = "{ambari database name}",
///                         ["database-server"] = "{sql server name}.database.windows.net",
///                         ["database-user-name"] = "**********",
///                         ["database-user-password"] = "**********",
///                     },
///                     ["gateway"] = new Dictionary<string, object?>
///                     {
///                         ["restAuthCredential.isEnabled"] = true,
///                         ["restAuthCredential.password"] = "**********",
///                         ["restAuthCredential.username"] = "admin",
///                     },
///                     ["hive-env"] = new Dictionary<string, object?>
///                     {
///                         ["hive_database"] = "Existing MSSQL Server database with SQL authentication",
///                         ["hive_database_name"] = "{hive metastore name}",
///                         ["hive_database_type"] = "mssql",
///                         ["hive_existing_mssql_server_database"] = "{hive metastore name}",
///                         ["hive_existing_mssql_server_host"] = "{sql server name}.database.windows.net",
///                         ["hive_hostname"] = "{sql server name}.database.windows.net",
///                     },
///                     ["hive-site"] = new Dictionary<string, object?>
///                     {
///                         ["javax.jdo.option.ConnectionDriverName"] = "com.microsoft.sqlserver.jdbc.SQLServerDriver",
///                         ["javax.jdo.option.ConnectionPassword"] = "**********!",
///                         ["javax.jdo.option.ConnectionURL"] = "jdbc:sqlserver://{sql server name}.database.windows.net;database={hive metastore name};encrypt=true;trustServerCertificate=true;create=false;loginTimeout=300;sendStringParametersAsUnicode=true;prepareSQL=0",
///                         ["javax.jdo.option.ConnectionUserName"] = "**********",
///                     },
///                     ["oozie-env"] = new Dictionary<string, object?>
///                     {
///                         ["oozie_database"] = "Existing MSSQL Server database with SQL authentication",
///                         ["oozie_database_name"] = "{oozie metastore name}",
///                         ["oozie_database_type"] = "mssql",
///                         ["oozie_existing_mssql_server_database"] = "{oozie metastore name}",
///                         ["oozie_existing_mssql_server_host"] = "{sql server name}.database.windows.net",
///                         ["oozie_hostname"] = "{sql server name}.database.windows.net",
///                     },
///                     ["oozie-site"] = new Dictionary<string, object?>
///                     {
///                         ["oozie.db.schema.name"] = "oozie",
///                         ["oozie.service.JPAService.jdbc.driver"] = "com.microsoft.sqlserver.jdbc.SQLServerDriver",
///                         ["oozie.service.JPAService.jdbc.password"] = "**********",
///                         ["oozie.service.JPAService.jdbc.url"] = "jdbc:sqlserver://{sql server name}.database.windows.net;database={oozie metastore name};encrypt=true;trustServerCertificate=true;create=false;loginTimeout=300;sendStringParametersAsUnicode=true;prepareSQL=0",
///                         ["oozie.service.JPAService.jdbc.username"] = "**********",
///                     },
///                 },
///                 Kind = "hadoop",
///             },
///             ClusterVersion = "3.6",
///             ComputeProfile = new AzureNative.HDInsight.Inputs.ComputeProfileArgs
///             {
///                 Roles = new[]
///                 {
///                     new AzureNative.HDInsight.Inputs.RoleArgs
///                     {
///                         HardwareProfile = new AzureNative.HDInsight.Inputs.HardwareProfileArgs
///                         {
///                             VmSize = "standard_d3",
///                         },
///                         Name = "headnode",
///                         OsProfile = new AzureNative.HDInsight.Inputs.OsProfileArgs
///                         {
///                             LinuxOperatingSystemProfile = new AzureNative.HDInsight.Inputs.LinuxOperatingSystemProfileArgs
///                             {
///                                 Password = "**********",
///                                 SshProfile = new AzureNative.HDInsight.Inputs.SshProfileArgs
///                                 {
///                                     PublicKeys = new[]
///                                     {
///                                         new AzureNative.HDInsight.Inputs.SshPublicKeyArgs
///                                         {
///                                             CertificateData = "**********",
///                                         },
///                                     },
///                                 },
///                                 Username = "sshuser",
///                             },
///                         },
///                         TargetInstanceCount = 2,
///                         VirtualNetworkProfile = new AzureNative.HDInsight.Inputs.VirtualNetworkProfileArgs
///                         {
///                             Id = "/subscriptions/subId/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/vnetname",
///                             Subnet = "/subscriptions/subId/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/vnetname/subnets/vnetsubnet",
///                         },
///                     },
///                     new AzureNative.HDInsight.Inputs.RoleArgs
///                     {
///                         HardwareProfile = new AzureNative.HDInsight.Inputs.HardwareProfileArgs
///                         {
///                             VmSize = "standard_d3",
///                         },
///                         Name = "workernode",
///                         OsProfile = new AzureNative.HDInsight.Inputs.OsProfileArgs
///                         {
///                             LinuxOperatingSystemProfile = new AzureNative.HDInsight.Inputs.LinuxOperatingSystemProfileArgs
///                             {
///                                 Password = "**********",
///                                 SshProfile = new AzureNative.HDInsight.Inputs.SshProfileArgs
///                                 {
///                                     PublicKeys = new[]
///                                     {
///                                         new AzureNative.HDInsight.Inputs.SshPublicKeyArgs
///                                         {
///                                             CertificateData = "**********",
///                                         },
///                                     },
///                                 },
///                                 Username = "sshuser",
///                             },
///                         },
///                         TargetInstanceCount = 2,
///                         VirtualNetworkProfile = new AzureNative.HDInsight.Inputs.VirtualNetworkProfileArgs
///                         {
///                             Id = "/subscriptions/subId/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/vnetname",
///                             Subnet = "/subscriptions/subId/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/vnetname/subnets/vnetsubnet",
///                         },
///                     },
///                 },
///             },
///             OsType = AzureNative.HDInsight.OSType.Linux,
///             StorageProfile = new AzureNative.HDInsight.Inputs.StorageProfileArgs
///             {
///                 Storageaccounts = new[]
///                 {
///                     new AzureNative.HDInsight.Inputs.StorageAccountArgs
///                     {
///                         Container = "containername",
///                         EnableSecureChannel = true,
///                         IsDefault = true,
///                         Key = "storage account key",
///                         Name = "mystorage",
///                     },
///                 },
///             },
///         },
///         ResourceGroupName = "rg1",
///         Zones = new[]
///         {
///             "1",
///         },
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	hdinsight "github.com/pulumi/pulumi-azure-native-sdk/hdinsight/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hdinsight.NewCluster(ctx, "cluster", &hdinsight.ClusterArgs{
/// 			ClusterName: pulumi.String("cluster1"),
/// 			Properties: &hdinsight.ClusterCreatePropertiesArgs{
/// 				ClusterDefinition: &hdinsight.ClusterDefinitionArgs{
/// 					Configurations: pulumi.Any(map[string]interface{}{
/// 						"ambari-conf": map[string]interface{}{
/// 							"database-name":          "{ambari database name}",
/// 							"database-server":        "{sql server name}.database.windows.net",
/// 							"database-user-name":     "**********",
/// 							"database-user-password": "**********",
/// 						},
/// 						"gateway": map[string]interface{}{
/// 							"restAuthCredential.isEnabled": true,
/// 							"restAuthCredential.password":  "**********",
/// 							"restAuthCredential.username":  "admin",
/// 						},
/// 						"hive-env": map[string]interface{}{
/// 							"hive_database":                       "Existing MSSQL Server database with SQL authentication",
/// 							"hive_database_name":                  "{hive metastore name}",
/// 							"hive_database_type":                  "mssql",
/// 							"hive_existing_mssql_server_database": "{hive metastore name}",
/// 							"hive_existing_mssql_server_host":     "{sql server name}.database.windows.net",
/// 							"hive_hostname":                       "{sql server name}.database.windows.net",
/// 						},
/// 						"hive-site": map[string]interface{}{
/// 							"javax.jdo.option.ConnectionDriverName": "com.microsoft.sqlserver.jdbc.SQLServerDriver",
/// 							"javax.jdo.option.ConnectionPassword":   "**********!",
/// 							"javax.jdo.option.ConnectionURL":        "jdbc:sqlserver://{sql server name}.database.windows.net;database={hive metastore name};encrypt=true;trustServerCertificate=true;create=false;loginTimeout=300;sendStringParametersAsUnicode=true;prepareSQL=0",
/// 							"javax.jdo.option.ConnectionUserName":   "**********",
/// 						},
/// 						"oozie-env": map[string]interface{}{
/// 							"oozie_database":                       "Existing MSSQL Server database with SQL authentication",
/// 							"oozie_database_name":                  "{oozie metastore name}",
/// 							"oozie_database_type":                  "mssql",
/// 							"oozie_existing_mssql_server_database": "{oozie metastore name}",
/// 							"oozie_existing_mssql_server_host":     "{sql server name}.database.windows.net",
/// 							"oozie_hostname":                       "{sql server name}.database.windows.net",
/// 						},
/// 						"oozie-site": map[string]interface{}{
/// 							"oozie.db.schema.name":                   "oozie",
/// 							"oozie.service.JPAService.jdbc.driver":   "com.microsoft.sqlserver.jdbc.SQLServerDriver",
/// 							"oozie.service.JPAService.jdbc.password": "**********",
/// 							"oozie.service.JPAService.jdbc.url":      "jdbc:sqlserver://{sql server name}.database.windows.net;database={oozie metastore name};encrypt=true;trustServerCertificate=true;create=false;loginTimeout=300;sendStringParametersAsUnicode=true;prepareSQL=0",
/// 							"oozie.service.JPAService.jdbc.username": "**********",
/// 						},
/// 					}),
/// 					Kind: pulumi.String("hadoop"),
/// 				},
/// 				ClusterVersion: pulumi.String("3.6"),
/// 				ComputeProfile: &hdinsight.ComputeProfileArgs{
/// 					Roles: hdinsight.RoleArray{
/// 						&hdinsight.RoleArgs{
/// 							HardwareProfile: &hdinsight.HardwareProfileArgs{
/// 								VmSize: pulumi.String("standard_d3"),
/// 							},
/// 							Name: pulumi.String("headnode"),
/// 							OsProfile: &hdinsight.OsProfileArgs{
/// 								LinuxOperatingSystemProfile: &hdinsight.LinuxOperatingSystemProfileArgs{
/// 									Password: pulumi.String("**********"),
/// 									SshProfile: &hdinsight.SshProfileArgs{
/// 										PublicKeys: hdinsight.SshPublicKeyArray{
/// 											&hdinsight.SshPublicKeyArgs{
/// 												CertificateData: pulumi.String("**********"),
/// 											},
/// 										},
/// 									},
/// 									Username: pulumi.String("sshuser"),
/// 								},
/// 							},
/// 							TargetInstanceCount: pulumi.Int(2),
/// 							VirtualNetworkProfile: &hdinsight.VirtualNetworkProfileArgs{
/// 								Id:     pulumi.String("/subscriptions/subId/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/vnetname"),
/// 								Subnet: pulumi.String("/subscriptions/subId/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/vnetname/subnets/vnetsubnet"),
/// 							},
/// 						},
/// 						&hdinsight.RoleArgs{
/// 							HardwareProfile: &hdinsight.HardwareProfileArgs{
/// 								VmSize: pulumi.String("standard_d3"),
/// 							},
/// 							Name: pulumi.String("workernode"),
/// 							OsProfile: &hdinsight.OsProfileArgs{
/// 								LinuxOperatingSystemProfile: &hdinsight.LinuxOperatingSystemProfileArgs{
/// 									Password: pulumi.String("**********"),
/// 									SshProfile: &hdinsight.SshProfileArgs{
/// 										PublicKeys: hdinsight.SshPublicKeyArray{
/// 											&hdinsight.SshPublicKeyArgs{
/// 												CertificateData: pulumi.String("**********"),
/// 											},
/// 										},
/// 									},
/// 									Username: pulumi.String("sshuser"),
/// 								},
/// 							},
/// 							TargetInstanceCount: pulumi.Int(2),
/// 							VirtualNetworkProfile: &hdinsight.VirtualNetworkProfileArgs{
/// 								Id:     pulumi.String("/subscriptions/subId/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/vnetname"),
/// 								Subnet: pulumi.String("/subscriptions/subId/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/vnetname/subnets/vnetsubnet"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 				OsType: pulumi.String(hdinsight.OSTypeLinux),
/// 				StorageProfile: &hdinsight.StorageProfileArgs{
/// 					Storageaccounts: hdinsight.StorageAccountArray{
/// 						&hdinsight.StorageAccountArgs{
/// 							Container:           pulumi.String("containername"),
/// 							EnableSecureChannel: pulumi.Bool(true),
/// 							IsDefault:           pulumi.Bool(true),
/// 							Key:                 pulumi.String("storage account key"),
/// 							Name:                pulumi.String("mystorage"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			Zones: pulumi.StringArray{
/// 				pulumi.String("1"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.hdinsight.Cluster;
/// import com.pulumi.azurenative.hdinsight.ClusterArgs;
/// import com.pulumi.azurenative.hdinsight.inputs.ClusterCreatePropertiesArgs;
/// import com.pulumi.azurenative.hdinsight.inputs.ClusterDefinitionArgs;
/// import com.pulumi.azurenative.hdinsight.inputs.ComputeProfileArgs;
/// import com.pulumi.azurenative.hdinsight.inputs.StorageProfileArgs;
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
///         var cluster = new Cluster("cluster", ClusterArgs.builder()
///             .clusterName("cluster1")
///             .properties(ClusterCreatePropertiesArgs.builder()
///                 .clusterDefinition(ClusterDefinitionArgs.builder()
///                     .configurations(Map.ofEntries(
///                         Map.entry("ambari-conf", Map.ofEntries(
///                             Map.entry("database-name", "{ambari database name}"),
///                             Map.entry("database-server", "{sql server name}.database.windows.net"),
///                             Map.entry("database-user-name", "**********"),
///                             Map.entry("database-user-password", "**********")
///                         )),
///                         Map.entry("gateway", Map.ofEntries(
///                             Map.entry("restAuthCredential.isEnabled", true),
///                             Map.entry("restAuthCredential.password", "**********"),
///                             Map.entry("restAuthCredential.username", "admin")
///                         )),
///                         Map.entry("hive-env", Map.ofEntries(
///                             Map.entry("hive_database", "Existing MSSQL Server database with SQL authentication"),
///                             Map.entry("hive_database_name", "{hive metastore name}"),
///                             Map.entry("hive_database_type", "mssql"),
///                             Map.entry("hive_existing_mssql_server_database", "{hive metastore name}"),
///                             Map.entry("hive_existing_mssql_server_host", "{sql server name}.database.windows.net"),
///                             Map.entry("hive_hostname", "{sql server name}.database.windows.net")
///                         )),
///                         Map.entry("hive-site", Map.ofEntries(
///                             Map.entry("javax.jdo.option.ConnectionDriverName", "com.microsoft.sqlserver.jdbc.SQLServerDriver"),
///                             Map.entry("javax.jdo.option.ConnectionPassword", "**********!"),
///                             Map.entry("javax.jdo.option.ConnectionURL", "jdbc:sqlserver://{sql server name}.database.windows.net;database={hive metastore name};encrypt=true;trustServerCertificate=true;create=false;loginTimeout=300;sendStringParametersAsUnicode=true;prepareSQL=0"),
///                             Map.entry("javax.jdo.option.ConnectionUserName", "**********")
///                         )),
///                         Map.entry("oozie-env", Map.ofEntries(
///                             Map.entry("oozie_database", "Existing MSSQL Server database with SQL authentication"),
///                             Map.entry("oozie_database_name", "{oozie metastore name}"),
///                             Map.entry("oozie_database_type", "mssql"),
///                             Map.entry("oozie_existing_mssql_server_database", "{oozie metastore name}"),
///                             Map.entry("oozie_existing_mssql_server_host", "{sql server name}.database.windows.net"),
///                             Map.entry("oozie_hostname", "{sql server name}.database.windows.net")
///                         )),
///                         Map.entry("oozie-site", Map.ofEntries(
///                             Map.entry("oozie.db.schema.name", "oozie"),
///                             Map.entry("oozie.service.JPAService.jdbc.driver", "com.microsoft.sqlserver.jdbc.SQLServerDriver"),
///                             Map.entry("oozie.service.JPAService.jdbc.password", "**********"),
///                             Map.entry("oozie.service.JPAService.jdbc.url", "jdbc:sqlserver://{sql server name}.database.windows.net;database={oozie metastore name};encrypt=true;trustServerCertificate=true;create=false;loginTimeout=300;sendStringParametersAsUnicode=true;prepareSQL=0"),
///                             Map.entry("oozie.service.JPAService.jdbc.username", "**********")
///                         ))
///                     ))
///                     .kind("hadoop")
///                     .build())
///                 .clusterVersion("3.6")
///                 .computeProfile(ComputeProfileArgs.builder()
///                     .roles(
///                         RoleArgs.builder()
///                             .hardwareProfile(HardwareProfileArgs.builder()
///                                 .vmSize("standard_d3")
///                                 .build())
///                             .name("headnode")
///                             .osProfile(OsProfileArgs.builder()
///                                 .linuxOperatingSystemProfile(LinuxOperatingSystemProfileArgs.builder()
///                                     .password("**********")
///                                     .sshProfile(SshProfileArgs.builder()
///                                         .publicKeys(SshPublicKeyArgs.builder()
///                                             .certificateData("**********")
///                                             .build())
///                                         .build())
///                                     .username("sshuser")
///                                     .build())
///                                 .build())
///                             .targetInstanceCount(2)
///                             .virtualNetworkProfile(VirtualNetworkProfileArgs.builder()
///                                 .id("/subscriptions/subId/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/vnetname")
///                                 .subnet("/subscriptions/subId/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/vnetname/subnets/vnetsubnet")
///                                 .build())
///                             .build(),
///                         RoleArgs.builder()
///                             .hardwareProfile(HardwareProfileArgs.builder()
///                                 .vmSize("standard_d3")
///                                 .build())
///                             .name("workernode")
///                             .osProfile(OsProfileArgs.builder()
///                                 .linuxOperatingSystemProfile(LinuxOperatingSystemProfileArgs.builder()
///                                     .password("**********")
///                                     .sshProfile(SshProfileArgs.builder()
///                                         .publicKeys(SshPublicKeyArgs.builder()
///                                             .certificateData("**********")
///                                             .build())
///                                         .build())
///                                     .username("sshuser")
///                                     .build())
///                                 .build())
///                             .targetInstanceCount(2)
///                             .virtualNetworkProfile(VirtualNetworkProfileArgs.builder()
///                                 .id("/subscriptions/subId/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/vnetname")
///                                 .subnet("/subscriptions/subId/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/vnetname/subnets/vnetsubnet")
///                                 .build())
///                             .build())
///                     .build())
///                 .osType("Linux")
///                 .storageProfile(StorageProfileArgs.builder()
///                     .storageaccounts(StorageAccountArgs.builder()
///                         .container("containername")
///                         .enableSecureChannel(true)
///                         .isDefault(true)
///                         .key("storage account key")
///                         .name("mystorage")
///                         .build())
///                     .build())
///                 .build())
///             .resourceGroupName("rg1")
///             .zones("1")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const cluster = new azure_native.hdinsight.Cluster("cluster", {
///     clusterName: "cluster1",
///     properties: {
///         clusterDefinition: {
///             configurations: {
///                 "ambari-conf": {
///                     "database-name": "{ambari database name}",
///                     "database-server": "{sql server name}.database.windows.net",
///                     "database-user-name": "**********",
///                     "database-user-password": "**********",
///                 },
///                 gateway: {
///                     "restAuthCredential.isEnabled": true,
///                     "restAuthCredential.password": "**********",
///                     "restAuthCredential.username": "admin",
///                 },
///                 "hive-env": {
///                     hive_database: "Existing MSSQL Server database with SQL authentication",
///                     hive_database_name: "{hive metastore name}",
///                     hive_database_type: "mssql",
///                     hive_existing_mssql_server_database: "{hive metastore name}",
///                     hive_existing_mssql_server_host: "{sql server name}.database.windows.net",
///                     hive_hostname: "{sql server name}.database.windows.net",
///                 },
///                 "hive-site": {
///                     "javax.jdo.option.ConnectionDriverName": "com.microsoft.sqlserver.jdbc.SQLServerDriver",
///                     "javax.jdo.option.ConnectionPassword": "**********!",
///                     "javax.jdo.option.ConnectionURL": "jdbc:sqlserver://{sql server name}.database.windows.net;database={hive metastore name};encrypt=true;trustServerCertificate=true;create=false;loginTimeout=300;sendStringParametersAsUnicode=true;prepareSQL=0",
///                     "javax.jdo.option.ConnectionUserName": "**********",
///                 },
///                 "oozie-env": {
///                     oozie_database: "Existing MSSQL Server database with SQL authentication",
///                     oozie_database_name: "{oozie metastore name}",
///                     oozie_database_type: "mssql",
///                     oozie_existing_mssql_server_database: "{oozie metastore name}",
///                     oozie_existing_mssql_server_host: "{sql server name}.database.windows.net",
///                     oozie_hostname: "{sql server name}.database.windows.net",
///                 },
///                 "oozie-site": {
///                     "oozie.db.schema.name": "oozie",
///                     "oozie.service.JPAService.jdbc.driver": "com.microsoft.sqlserver.jdbc.SQLServerDriver",
///                     "oozie.service.JPAService.jdbc.password": "**********",
///                     "oozie.service.JPAService.jdbc.url": "jdbc:sqlserver://{sql server name}.database.windows.net;database={oozie metastore name};encrypt=true;trustServerCertificate=true;create=false;loginTimeout=300;sendStringParametersAsUnicode=true;prepareSQL=0",
///                     "oozie.service.JPAService.jdbc.username": "**********",
///                 },
///             },
///             kind: "hadoop",
///         },
///         clusterVersion: "3.6",
///         computeProfile: {
///             roles: [
///                 {
///                     hardwareProfile: {
///                         vmSize: "standard_d3",
///                     },
///                     name: "headnode",
///                     osProfile: {
///                         linuxOperatingSystemProfile: {
///                             password: "**********",
///                             sshProfile: {
///                                 publicKeys: [{
///                                     certificateData: "**********",
///                                 }],
///                             },
///                             username: "sshuser",
///                         },
///                     },
///                     targetInstanceCount: 2,
///                     virtualNetworkProfile: {
///                         id: "/subscriptions/subId/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/vnetname",
///                         subnet: "/subscriptions/subId/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/vnetname/subnets/vnetsubnet",
///                     },
///                 },
///                 {
///                     hardwareProfile: {
///                         vmSize: "standard_d3",
///                     },
///                     name: "workernode",
///                     osProfile: {
///                         linuxOperatingSystemProfile: {
///                             password: "**********",
///                             sshProfile: {
///                                 publicKeys: [{
///                                     certificateData: "**********",
///                                 }],
///                             },
///                             username: "sshuser",
///                         },
///                     },
///                     targetInstanceCount: 2,
///                     virtualNetworkProfile: {
///                         id: "/subscriptions/subId/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/vnetname",
///                         subnet: "/subscriptions/subId/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/vnetname/subnets/vnetsubnet",
///                     },
///                 },
///             ],
///         },
///         osType: azure_native.hdinsight.OSType.Linux,
///         storageProfile: {
///             storageaccounts: [{
///                 container: "containername",
///                 enableSecureChannel: true,
///                 isDefault: true,
///                 key: "storage account key",
///                 name: "mystorage",
///             }],
///         },
///     },
///     resourceGroupName: "rg1",
///     zones: ["1"],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// cluster = azure_native.hdinsight.Cluster("cluster",
///     cluster_name="cluster1",
///     properties={
///         "cluster_definition": {
///             "configurations": {
///                 "ambari-conf": {
///                     "database-name": "{ambari database name}",
///                     "database-server": "{sql server name}.database.windows.net",
///                     "database-user-name": "**********",
///                     "database-user-password": "**********",
///                 },
///                 "gateway": {
///                     "restAuthCredential.isEnabled": True,
///                     "restAuthCredential.password": "**********",
///                     "restAuthCredential.username": "admin",
///                 },
///                 "hive-env": {
///                     "hive_database": "Existing MSSQL Server database with SQL authentication",
///                     "hive_database_name": "{hive metastore name}",
///                     "hive_database_type": "mssql",
///                     "hive_existing_mssql_server_database": "{hive metastore name}",
///                     "hive_existing_mssql_server_host": "{sql server name}.database.windows.net",
///                     "hive_hostname": "{sql server name}.database.windows.net",
///                 },
///                 "hive-site": {
///                     "javax.jdo.option.ConnectionDriverName": "com.microsoft.sqlserver.jdbc.SQLServerDriver",
///                     "javax.jdo.option.ConnectionPassword": "**********!",
///                     "javax.jdo.option.ConnectionURL": "jdbc:sqlserver://{sql server name}.database.windows.net;database={hive metastore name};encrypt=true;trustServerCertificate=true;create=false;loginTimeout=300;sendStringParametersAsUnicode=true;prepareSQL=0",
///                     "javax.jdo.option.ConnectionUserName": "**********",
///                 },
///                 "oozie-env": {
///                     "oozie_database": "Existing MSSQL Server database with SQL authentication",
///                     "oozie_database_name": "{oozie metastore name}",
///                     "oozie_database_type": "mssql",
///                     "oozie_existing_mssql_server_database": "{oozie metastore name}",
///                     "oozie_existing_mssql_server_host": "{sql server name}.database.windows.net",
///                     "oozie_hostname": "{sql server name}.database.windows.net",
///                 },
///                 "oozie-site": {
///                     "oozie.db.schema.name": "oozie",
///                     "oozie.service.JPAService.jdbc.driver": "com.microsoft.sqlserver.jdbc.SQLServerDriver",
///                     "oozie.service.JPAService.jdbc.password": "**********",
///                     "oozie.service.JPAService.jdbc.url": "jdbc:sqlserver://{sql server name}.database.windows.net;database={oozie metastore name};encrypt=true;trustServerCertificate=true;create=false;loginTimeout=300;sendStringParametersAsUnicode=true;prepareSQL=0",
///                     "oozie.service.JPAService.jdbc.username": "**********",
///                 },
///             },
///             "kind": "hadoop",
///         },
///         "cluster_version": "3.6",
///         "compute_profile": {
///             "roles": [
///                 {
///                     "hardware_profile": {
///                         "vm_size": "standard_d3",
///                     },
///                     "name": "headnode",
///                     "os_profile": {
///                         "linux_operating_system_profile": {
///                             "password": "**********",
///                             "ssh_profile": {
///                                 "public_keys": [{
///                                     "certificate_data": "**********",
///                                 }],
///                             },
///                             "username": "sshuser",
///                         },
///                     },
///                     "target_instance_count": 2,
///                     "virtual_network_profile": {
///                         "id": "/subscriptions/subId/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/vnetname",
///                         "subnet": "/subscriptions/subId/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/vnetname/subnets/vnetsubnet",
///                     },
///                 },
///                 {
///                     "hardware_profile": {
///                         "vm_size": "standard_d3",
///                     },
///                     "name": "workernode",
///                     "os_profile": {
///                         "linux_operating_system_profile": {
///                             "password": "**********",
///                             "ssh_profile": {
///                                 "public_keys": [{
///                                     "certificate_data": "**********",
///                                 }],
///                             },
///                             "username": "sshuser",
///                         },
///                     },
///                     "target_instance_count": 2,
///                     "virtual_network_profile": {
///                         "id": "/subscriptions/subId/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/vnetname",
///                         "subnet": "/subscriptions/subId/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/vnetname/subnets/vnetsubnet",
///                     },
///                 },
///             ],
///         },
///         "os_type": azure_native.hdinsight.OSType.LINUX,
///         "storage_profile": {
///             "storageaccounts": [{
///                 "container": "containername",
///                 "enable_secure_channel": True,
///                 "is_default": True,
///                 "key": "storage account key",
///                 "name": "mystorage",
///             }],
///         },
///     },
///     resource_group_name="rg1",
///     zones=["1"])
///
/// ```
///
/// ```yaml
/// resources:
///   cluster:
///     type: azure-native:hdinsight:Cluster
///     properties:
///       clusterName: cluster1
///       properties:
///         clusterDefinition:
///           configurations:
///             ambari-conf:
///               database-name: '{ambari database name}'
///               database-server: '{sql server name}.database.windows.net'
///               database-user-name: '**********'
///               database-user-password: '**********'
///             gateway:
///               restAuthCredential.isEnabled: true
///               restAuthCredential.password: '**********'
///               restAuthCredential.username: admin
///             hive-env:
///               hive_database: Existing MSSQL Server database with SQL authentication
///               hive_database_name: '{hive metastore name}'
///               hive_database_type: mssql
///               hive_existing_mssql_server_database: '{hive metastore name}'
///               hive_existing_mssql_server_host: '{sql server name}.database.windows.net'
///               hive_hostname: '{sql server name}.database.windows.net'
///             hive-site:
///               javax.jdo.option.ConnectionDriverName: com.microsoft.sqlserver.jdbc.SQLServerDriver
///               javax.jdo.option.ConnectionPassword: '**********!'
///               javax.jdo.option.ConnectionURL: jdbc:sqlserver://{sql server name}.database.windows.net;database={hive metastore name};encrypt=true;trustServerCertificate=true;create=false;loginTimeout=300;sendStringParametersAsUnicode=true;prepareSQL=0
///               javax.jdo.option.ConnectionUserName: '**********'
///             oozie-env:
///               oozie_database: Existing MSSQL Server database with SQL authentication
///               oozie_database_name: '{oozie metastore name}'
///               oozie_database_type: mssql
///               oozie_existing_mssql_server_database: '{oozie metastore name}'
///               oozie_existing_mssql_server_host: '{sql server name}.database.windows.net'
///               oozie_hostname: '{sql server name}.database.windows.net'
///             oozie-site:
///               oozie.db.schema.name: oozie
///               oozie.service.JPAService.jdbc.driver: com.microsoft.sqlserver.jdbc.SQLServerDriver
///               oozie.service.JPAService.jdbc.password: '**********'
///               oozie.service.JPAService.jdbc.url: jdbc:sqlserver://{sql server name}.database.windows.net;database={oozie metastore name};encrypt=true;trustServerCertificate=true;create=false;loginTimeout=300;sendStringParametersAsUnicode=true;prepareSQL=0
///               oozie.service.JPAService.jdbc.username: '**********'
///           kind: hadoop
///         clusterVersion: '3.6'
///         computeProfile:
///           roles:
///             - hardwareProfile:
///                 vmSize: standard_d3
///               name: headnode
///               osProfile:
///                 linuxOperatingSystemProfile:
///                   password: '**********'
///                   sshProfile:
///                     publicKeys:
///                       - certificateData: '**********'
///                   username: sshuser
///               targetInstanceCount: 2
///               virtualNetworkProfile:
///                 id: /subscriptions/subId/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/vnetname
///                 subnet: /subscriptions/subId/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/vnetname/subnets/vnetsubnet
///             - hardwareProfile:
///                 vmSize: standard_d3
///               name: workernode
///               osProfile:
///                 linuxOperatingSystemProfile:
///                   password: '**********'
///                   sshProfile:
///                     publicKeys:
///                       - certificateData: '**********'
///                   username: sshuser
///               targetInstanceCount: 2
///               virtualNetworkProfile:
///                 id: /subscriptions/subId/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/vnetname
///                 subnet: /subscriptions/subId/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/vnetname/subnets/vnetsubnet
///         osType: Linux
///         storageProfile:
///           storageaccounts:
///             - container: containername
///               enableSecureChannel: true
///               isDefault: true
///               key: storage account key
///               name: mystorage
///       resourceGroupName: rg1
///       zones:
///         - '1'
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create cluster with compute isolation properties
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var cluster = new AzureNative.HDInsight.Cluster("cluster", new()
///     {
///         ClusterName = "cluster1",
///         Properties = new AzureNative.HDInsight.Inputs.ClusterCreatePropertiesArgs
///         {
///             ClusterDefinition = new AzureNative.HDInsight.Inputs.ClusterDefinitionArgs
///             {
///                 Configurations = new Dictionary<string, object?>
///                 {
///                     ["gateway"] = new Dictionary<string, object?>
///                     {
///                         ["restAuthCredential.isEnabled"] = true,
///                         ["restAuthCredential.password"] = "**********",
///                         ["restAuthCredential.username"] = "admin",
///                     },
///                 },
///                 Kind = "hadoop",
///             },
///             ClusterVersion = "3.6",
///             ComputeIsolationProperties = new AzureNative.HDInsight.Inputs.ComputeIsolationPropertiesArgs
///             {
///                 EnableComputeIsolation = true,
///             },
///             ComputeProfile = new AzureNative.HDInsight.Inputs.ComputeProfileArgs
///             {
///                 Roles = new[]
///                 {
///                     new AzureNative.HDInsight.Inputs.RoleArgs
///                     {
///                         HardwareProfile = new AzureNative.HDInsight.Inputs.HardwareProfileArgs
///                         {
///                             VmSize = "standard_d3",
///                         },
///                         Name = "headnode",
///                         OsProfile = new AzureNative.HDInsight.Inputs.OsProfileArgs
///                         {
///                             LinuxOperatingSystemProfile = new AzureNative.HDInsight.Inputs.LinuxOperatingSystemProfileArgs
///                             {
///                                 Password = "**********",
///                                 SshProfile = new AzureNative.HDInsight.Inputs.SshProfileArgs
///                                 {
///                                     PublicKeys = new[]
///                                     {
///                                         new AzureNative.HDInsight.Inputs.SshPublicKeyArgs
///                                         {
///                                             CertificateData = "**********",
///                                         },
///                                     },
///                                 },
///                                 Username = "sshuser",
///                             },
///                         },
///                         TargetInstanceCount = 2,
///                     },
///                     new AzureNative.HDInsight.Inputs.RoleArgs
///                     {
///                         HardwareProfile = new AzureNative.HDInsight.Inputs.HardwareProfileArgs
///                         {
///                             VmSize = "standard_d3",
///                         },
///                         Name = "workernode",
///                         OsProfile = new AzureNative.HDInsight.Inputs.OsProfileArgs
///                         {
///                             LinuxOperatingSystemProfile = new AzureNative.HDInsight.Inputs.LinuxOperatingSystemProfileArgs
///                             {
///                                 Password = "**********",
///                                 SshProfile = new AzureNative.HDInsight.Inputs.SshProfileArgs
///                                 {
///                                     PublicKeys = new[]
///                                     {
///                                         new AzureNative.HDInsight.Inputs.SshPublicKeyArgs
///                                         {
///                                             CertificateData = "**********",
///                                         },
///                                     },
///                                 },
///                                 Username = "sshuser",
///                             },
///                         },
///                         TargetInstanceCount = 2,
///                     },
///                 },
///             },
///             OsType = AzureNative.HDInsight.OSType.Linux,
///             StorageProfile = new AzureNative.HDInsight.Inputs.StorageProfileArgs
///             {
///                 Storageaccounts = new[]
///                 {
///                     new AzureNative.HDInsight.Inputs.StorageAccountArgs
///                     {
///                         Container = "containername",
///                         EnableSecureChannel = true,
///                         IsDefault = true,
///                         Key = "storage account key",
///                         Name = "mystorage",
///                     },
///                 },
///             },
///         },
///         ResourceGroupName = "rg1",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	hdinsight "github.com/pulumi/pulumi-azure-native-sdk/hdinsight/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hdinsight.NewCluster(ctx, "cluster", &hdinsight.ClusterArgs{
/// 			ClusterName: pulumi.String("cluster1"),
/// 			Properties: &hdinsight.ClusterCreatePropertiesArgs{
/// 				ClusterDefinition: &hdinsight.ClusterDefinitionArgs{
/// 					Configurations: pulumi.Any(map[string]interface{}{
/// 						"gateway": map[string]interface{}{
/// 							"restAuthCredential.isEnabled": true,
/// 							"restAuthCredential.password":  "**********",
/// 							"restAuthCredential.username":  "admin",
/// 						},
/// 					}),
/// 					Kind: pulumi.String("hadoop"),
/// 				},
/// 				ClusterVersion: pulumi.String("3.6"),
/// 				ComputeIsolationProperties: &hdinsight.ComputeIsolationPropertiesArgs{
/// 					EnableComputeIsolation: pulumi.Bool(true),
/// 				},
/// 				ComputeProfile: &hdinsight.ComputeProfileArgs{
/// 					Roles: hdinsight.RoleArray{
/// 						&hdinsight.RoleArgs{
/// 							HardwareProfile: &hdinsight.HardwareProfileArgs{
/// 								VmSize: pulumi.String("standard_d3"),
/// 							},
/// 							Name: pulumi.String("headnode"),
/// 							OsProfile: &hdinsight.OsProfileArgs{
/// 								LinuxOperatingSystemProfile: &hdinsight.LinuxOperatingSystemProfileArgs{
/// 									Password: pulumi.String("**********"),
/// 									SshProfile: &hdinsight.SshProfileArgs{
/// 										PublicKeys: hdinsight.SshPublicKeyArray{
/// 											&hdinsight.SshPublicKeyArgs{
/// 												CertificateData: pulumi.String("**********"),
/// 											},
/// 										},
/// 									},
/// 									Username: pulumi.String("sshuser"),
/// 								},
/// 							},
/// 							TargetInstanceCount: pulumi.Int(2),
/// 						},
/// 						&hdinsight.RoleArgs{
/// 							HardwareProfile: &hdinsight.HardwareProfileArgs{
/// 								VmSize: pulumi.String("standard_d3"),
/// 							},
/// 							Name: pulumi.String("workernode"),
/// 							OsProfile: &hdinsight.OsProfileArgs{
/// 								LinuxOperatingSystemProfile: &hdinsight.LinuxOperatingSystemProfileArgs{
/// 									Password: pulumi.String("**********"),
/// 									SshProfile: &hdinsight.SshProfileArgs{
/// 										PublicKeys: hdinsight.SshPublicKeyArray{
/// 											&hdinsight.SshPublicKeyArgs{
/// 												CertificateData: pulumi.String("**********"),
/// 											},
/// 										},
/// 									},
/// 									Username: pulumi.String("sshuser"),
/// 								},
/// 							},
/// 							TargetInstanceCount: pulumi.Int(2),
/// 						},
/// 					},
/// 				},
/// 				OsType: pulumi.String(hdinsight.OSTypeLinux),
/// 				StorageProfile: &hdinsight.StorageProfileArgs{
/// 					Storageaccounts: hdinsight.StorageAccountArray{
/// 						&hdinsight.StorageAccountArgs{
/// 							Container:           pulumi.String("containername"),
/// 							EnableSecureChannel: pulumi.Bool(true),
/// 							IsDefault:           pulumi.Bool(true),
/// 							Key:                 pulumi.String("storage account key"),
/// 							Name:                pulumi.String("mystorage"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.hdinsight.Cluster;
/// import com.pulumi.azurenative.hdinsight.ClusterArgs;
/// import com.pulumi.azurenative.hdinsight.inputs.ClusterCreatePropertiesArgs;
/// import com.pulumi.azurenative.hdinsight.inputs.ClusterDefinitionArgs;
/// import com.pulumi.azurenative.hdinsight.inputs.ComputeIsolationPropertiesArgs;
/// import com.pulumi.azurenative.hdinsight.inputs.ComputeProfileArgs;
/// import com.pulumi.azurenative.hdinsight.inputs.StorageProfileArgs;
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
///         var cluster = new Cluster("cluster", ClusterArgs.builder()
///             .clusterName("cluster1")
///             .properties(ClusterCreatePropertiesArgs.builder()
///                 .clusterDefinition(ClusterDefinitionArgs.builder()
///                     .configurations(Map.of("gateway", Map.ofEntries(
///                         Map.entry("restAuthCredential.isEnabled", true),
///                         Map.entry("restAuthCredential.password", "**********"),
///                         Map.entry("restAuthCredential.username", "admin")
///                     )))
///                     .kind("hadoop")
///                     .build())
///                 .clusterVersion("3.6")
///                 .computeIsolationProperties(ComputeIsolationPropertiesArgs.builder()
///                     .enableComputeIsolation(true)
///                     .build())
///                 .computeProfile(ComputeProfileArgs.builder()
///                     .roles(
///                         RoleArgs.builder()
///                             .hardwareProfile(HardwareProfileArgs.builder()
///                                 .vmSize("standard_d3")
///                                 .build())
///                             .name("headnode")
///                             .osProfile(OsProfileArgs.builder()
///                                 .linuxOperatingSystemProfile(LinuxOperatingSystemProfileArgs.builder()
///                                     .password("**********")
///                                     .sshProfile(SshProfileArgs.builder()
///                                         .publicKeys(SshPublicKeyArgs.builder()
///                                             .certificateData("**********")
///                                             .build())
///                                         .build())
///                                     .username("sshuser")
///                                     .build())
///                                 .build())
///                             .targetInstanceCount(2)
///                             .build(),
///                         RoleArgs.builder()
///                             .hardwareProfile(HardwareProfileArgs.builder()
///                                 .vmSize("standard_d3")
///                                 .build())
///                             .name("workernode")
///                             .osProfile(OsProfileArgs.builder()
///                                 .linuxOperatingSystemProfile(LinuxOperatingSystemProfileArgs.builder()
///                                     .password("**********")
///                                     .sshProfile(SshProfileArgs.builder()
///                                         .publicKeys(SshPublicKeyArgs.builder()
///                                             .certificateData("**********")
///                                             .build())
///                                         .build())
///                                     .username("sshuser")
///                                     .build())
///                                 .build())
///                             .targetInstanceCount(2)
///                             .build())
///                     .build())
///                 .osType("Linux")
///                 .storageProfile(StorageProfileArgs.builder()
///                     .storageaccounts(StorageAccountArgs.builder()
///                         .container("containername")
///                         .enableSecureChannel(true)
///                         .isDefault(true)
///                         .key("storage account key")
///                         .name("mystorage")
///                         .build())
///                     .build())
///                 .build())
///             .resourceGroupName("rg1")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const cluster = new azure_native.hdinsight.Cluster("cluster", {
///     clusterName: "cluster1",
///     properties: {
///         clusterDefinition: {
///             configurations: {
///                 gateway: {
///                     "restAuthCredential.isEnabled": true,
///                     "restAuthCredential.password": "**********",
///                     "restAuthCredential.username": "admin",
///                 },
///             },
///             kind: "hadoop",
///         },
///         clusterVersion: "3.6",
///         computeIsolationProperties: {
///             enableComputeIsolation: true,
///         },
///         computeProfile: {
///             roles: [
///                 {
///                     hardwareProfile: {
///                         vmSize: "standard_d3",
///                     },
///                     name: "headnode",
///                     osProfile: {
///                         linuxOperatingSystemProfile: {
///                             password: "**********",
///                             sshProfile: {
///                                 publicKeys: [{
///                                     certificateData: "**********",
///                                 }],
///                             },
///                             username: "sshuser",
///                         },
///                     },
///                     targetInstanceCount: 2,
///                 },
///                 {
///                     hardwareProfile: {
///                         vmSize: "standard_d3",
///                     },
///                     name: "workernode",
///                     osProfile: {
///                         linuxOperatingSystemProfile: {
///                             password: "**********",
///                             sshProfile: {
///                                 publicKeys: [{
///                                     certificateData: "**********",
///                                 }],
///                             },
///                             username: "sshuser",
///                         },
///                     },
///                     targetInstanceCount: 2,
///                 },
///             ],
///         },
///         osType: azure_native.hdinsight.OSType.Linux,
///         storageProfile: {
///             storageaccounts: [{
///                 container: "containername",
///                 enableSecureChannel: true,
///                 isDefault: true,
///                 key: "storage account key",
///                 name: "mystorage",
///             }],
///         },
///     },
///     resourceGroupName: "rg1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// cluster = azure_native.hdinsight.Cluster("cluster",
///     cluster_name="cluster1",
///     properties={
///         "cluster_definition": {
///             "configurations": {
///                 "gateway": {
///                     "restAuthCredential.isEnabled": True,
///                     "restAuthCredential.password": "**********",
///                     "restAuthCredential.username": "admin",
///                 },
///             },
///             "kind": "hadoop",
///         },
///         "cluster_version": "3.6",
///         "compute_isolation_properties": {
///             "enable_compute_isolation": True,
///         },
///         "compute_profile": {
///             "roles": [
///                 {
///                     "hardware_profile": {
///                         "vm_size": "standard_d3",
///                     },
///                     "name": "headnode",
///                     "os_profile": {
///                         "linux_operating_system_profile": {
///                             "password": "**********",
///                             "ssh_profile": {
///                                 "public_keys": [{
///                                     "certificate_data": "**********",
///                                 }],
///                             },
///                             "username": "sshuser",
///                         },
///                     },
///                     "target_instance_count": 2,
///                 },
///                 {
///                     "hardware_profile": {
///                         "vm_size": "standard_d3",
///                     },
///                     "name": "workernode",
///                     "os_profile": {
///                         "linux_operating_system_profile": {
///                             "password": "**********",
///                             "ssh_profile": {
///                                 "public_keys": [{
///                                     "certificate_data": "**********",
///                                 }],
///                             },
///                             "username": "sshuser",
///                         },
///                     },
///                     "target_instance_count": 2,
///                 },
///             ],
///         },
///         "os_type": azure_native.hdinsight.OSType.LINUX,
///         "storage_profile": {
///             "storageaccounts": [{
///                 "container": "containername",
///                 "enable_secure_channel": True,
///                 "is_default": True,
///                 "key": "storage account key",
///                 "name": "mystorage",
///             }],
///         },
///     },
///     resource_group_name="rg1")
///
/// ```
///
/// ```yaml
/// resources:
///   cluster:
///     type: azure-native:hdinsight:Cluster
///     properties:
///       clusterName: cluster1
///       properties:
///         clusterDefinition:
///           configurations:
///             gateway:
///               restAuthCredential.isEnabled: true
///               restAuthCredential.password: '**********'
///               restAuthCredential.username: admin
///           kind: hadoop
///         clusterVersion: '3.6'
///         computeIsolationProperties:
///           enableComputeIsolation: true
///         computeProfile:
///           roles:
///             - hardwareProfile:
///                 vmSize: standard_d3
///               name: headnode
///               osProfile:
///                 linuxOperatingSystemProfile:
///                   password: '**********'
///                   sshProfile:
///                     publicKeys:
///                       - certificateData: '**********'
///                   username: sshuser
///               targetInstanceCount: 2
///             - hardwareProfile:
///                 vmSize: standard_d3
///               name: workernode
///               osProfile:
///                 linuxOperatingSystemProfile:
///                   password: '**********'
///                   sshProfile:
///                     publicKeys:
///                       - certificateData: '**********'
///                   username: sshuser
///               targetInstanceCount: 2
///         osType: Linux
///         storageProfile:
///           storageaccounts:
///             - container: containername
///               enableSecureChannel: true
///               isDefault: true
///               key: storage account key
///               name: mystorage
///       resourceGroupName: rg1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create cluster with encryption at host
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var cluster = new AzureNative.HDInsight.Cluster("cluster", new()
///     {
///         ClusterName = "cluster1",
///         Properties = new AzureNative.HDInsight.Inputs.ClusterCreatePropertiesArgs
///         {
///             ClusterDefinition = new AzureNative.HDInsight.Inputs.ClusterDefinitionArgs
///             {
///                 Configurations = new Dictionary<string, object?>
///                 {
///                     ["gateway"] = new Dictionary<string, object?>
///                     {
///                         ["restAuthCredential.isEnabled"] = true,
///                         ["restAuthCredential.password"] = "**********",
///                         ["restAuthCredential.username"] = "admin",
///                     },
///                 },
///                 Kind = "Hadoop",
///             },
///             ClusterVersion = "3.6",
///             ComputeProfile = new AzureNative.HDInsight.Inputs.ComputeProfileArgs
///             {
///                 Roles = new[]
///                 {
///                     new AzureNative.HDInsight.Inputs.RoleArgs
///                     {
///                         HardwareProfile = new AzureNative.HDInsight.Inputs.HardwareProfileArgs
///                         {
///                             VmSize = "Standard_DS14_v2",
///                         },
///                         Name = "headnode",
///                         OsProfile = new AzureNative.HDInsight.Inputs.OsProfileArgs
///                         {
///                             LinuxOperatingSystemProfile = new AzureNative.HDInsight.Inputs.LinuxOperatingSystemProfileArgs
///                             {
///                                 Password = "**********",
///                                 Username = "sshuser",
///                             },
///                         },
///                         TargetInstanceCount = 2,
///                     },
///                     new AzureNative.HDInsight.Inputs.RoleArgs
///                     {
///                         HardwareProfile = new AzureNative.HDInsight.Inputs.HardwareProfileArgs
///                         {
///                             VmSize = "Standard_DS14_v2",
///                         },
///                         Name = "workernode",
///                         OsProfile = new AzureNative.HDInsight.Inputs.OsProfileArgs
///                         {
///                             LinuxOperatingSystemProfile = new AzureNative.HDInsight.Inputs.LinuxOperatingSystemProfileArgs
///                             {
///                                 Password = "**********",
///                                 Username = "sshuser",
///                             },
///                         },
///                         TargetInstanceCount = 3,
///                     },
///                     new AzureNative.HDInsight.Inputs.RoleArgs
///                     {
///                         HardwareProfile = new AzureNative.HDInsight.Inputs.HardwareProfileArgs
///                         {
///                             VmSize = "Standard_DS14_v2",
///                         },
///                         Name = "zookeepernode",
///                         OsProfile = new AzureNative.HDInsight.Inputs.OsProfileArgs
///                         {
///                             LinuxOperatingSystemProfile = new AzureNative.HDInsight.Inputs.LinuxOperatingSystemProfileArgs
///                             {
///                                 Password = "**********",
///                                 Username = "sshuser",
///                             },
///                         },
///                         TargetInstanceCount = 3,
///                     },
///                 },
///             },
///             DiskEncryptionProperties = new AzureNative.HDInsight.Inputs.DiskEncryptionPropertiesArgs
///             {
///                 EncryptionAtHost = true,
///             },
///             OsType = AzureNative.HDInsight.OSType.Linux,
///             StorageProfile = new AzureNative.HDInsight.Inputs.StorageProfileArgs
///             {
///                 Storageaccounts = new[]
///                 {
///                     new AzureNative.HDInsight.Inputs.StorageAccountArgs
///                     {
///                         Container = "default8525",
///                         EnableSecureChannel = true,
///                         IsDefault = true,
///                         Key = "storagekey",
///                         Name = "mystorage.blob.core.windows.net",
///                     },
///                 },
///             },
///             Tier = AzureNative.HDInsight.Tier.Standard,
///         },
///         ResourceGroupName = "rg1",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	hdinsight "github.com/pulumi/pulumi-azure-native-sdk/hdinsight/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hdinsight.NewCluster(ctx, "cluster", &hdinsight.ClusterArgs{
/// 			ClusterName: pulumi.String("cluster1"),
/// 			Properties: &hdinsight.ClusterCreatePropertiesArgs{
/// 				ClusterDefinition: &hdinsight.ClusterDefinitionArgs{
/// 					Configurations: pulumi.Any(map[string]interface{}{
/// 						"gateway": map[string]interface{}{
/// 							"restAuthCredential.isEnabled": true,
/// 							"restAuthCredential.password":  "**********",
/// 							"restAuthCredential.username":  "admin",
/// 						},
/// 					}),
/// 					Kind: pulumi.String("Hadoop"),
/// 				},
/// 				ClusterVersion: pulumi.String("3.6"),
/// 				ComputeProfile: &hdinsight.ComputeProfileArgs{
/// 					Roles: hdinsight.RoleArray{
/// 						&hdinsight.RoleArgs{
/// 							HardwareProfile: &hdinsight.HardwareProfileArgs{
/// 								VmSize: pulumi.String("Standard_DS14_v2"),
/// 							},
/// 							Name: pulumi.String("headnode"),
/// 							OsProfile: &hdinsight.OsProfileArgs{
/// 								LinuxOperatingSystemProfile: &hdinsight.LinuxOperatingSystemProfileArgs{
/// 									Password: pulumi.String("**********"),
/// 									Username: pulumi.String("sshuser"),
/// 								},
/// 							},
/// 							TargetInstanceCount: pulumi.Int(2),
/// 						},
/// 						&hdinsight.RoleArgs{
/// 							HardwareProfile: &hdinsight.HardwareProfileArgs{
/// 								VmSize: pulumi.String("Standard_DS14_v2"),
/// 							},
/// 							Name: pulumi.String("workernode"),
/// 							OsProfile: &hdinsight.OsProfileArgs{
/// 								LinuxOperatingSystemProfile: &hdinsight.LinuxOperatingSystemProfileArgs{
/// 									Password: pulumi.String("**********"),
/// 									Username: pulumi.String("sshuser"),
/// 								},
/// 							},
/// 							TargetInstanceCount: pulumi.Int(3),
/// 						},
/// 						&hdinsight.RoleArgs{
/// 							HardwareProfile: &hdinsight.HardwareProfileArgs{
/// 								VmSize: pulumi.String("Standard_DS14_v2"),
/// 							},
/// 							Name: pulumi.String("zookeepernode"),
/// 							OsProfile: &hdinsight.OsProfileArgs{
/// 								LinuxOperatingSystemProfile: &hdinsight.LinuxOperatingSystemProfileArgs{
/// 									Password: pulumi.String("**********"),
/// 									Username: pulumi.String("sshuser"),
/// 								},
/// 							},
/// 							TargetInstanceCount: pulumi.Int(3),
/// 						},
/// 					},
/// 				},
/// 				DiskEncryptionProperties: &hdinsight.DiskEncryptionPropertiesArgs{
/// 					EncryptionAtHost: pulumi.Bool(true),
/// 				},
/// 				OsType: pulumi.String(hdinsight.OSTypeLinux),
/// 				StorageProfile: &hdinsight.StorageProfileArgs{
/// 					Storageaccounts: hdinsight.StorageAccountArray{
/// 						&hdinsight.StorageAccountArgs{
/// 							Container:           pulumi.String("default8525"),
/// 							EnableSecureChannel: pulumi.Bool(true),
/// 							IsDefault:           pulumi.Bool(true),
/// 							Key:                 pulumi.String("storagekey"),
/// 							Name:                pulumi.String("mystorage.blob.core.windows.net"),
/// 						},
/// 					},
/// 				},
/// 				Tier: pulumi.String(hdinsight.TierStandard),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.hdinsight.Cluster;
/// import com.pulumi.azurenative.hdinsight.ClusterArgs;
/// import com.pulumi.azurenative.hdinsight.inputs.ClusterCreatePropertiesArgs;
/// import com.pulumi.azurenative.hdinsight.inputs.ClusterDefinitionArgs;
/// import com.pulumi.azurenative.hdinsight.inputs.ComputeProfileArgs;
/// import com.pulumi.azurenative.hdinsight.inputs.DiskEncryptionPropertiesArgs;
/// import com.pulumi.azurenative.hdinsight.inputs.StorageProfileArgs;
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
///         var cluster = new Cluster("cluster", ClusterArgs.builder()
///             .clusterName("cluster1")
///             .properties(ClusterCreatePropertiesArgs.builder()
///                 .clusterDefinition(ClusterDefinitionArgs.builder()
///                     .configurations(Map.of("gateway", Map.ofEntries(
///                         Map.entry("restAuthCredential.isEnabled", true),
///                         Map.entry("restAuthCredential.password", "**********"),
///                         Map.entry("restAuthCredential.username", "admin")
///                     )))
///                     .kind("Hadoop")
///                     .build())
///                 .clusterVersion("3.6")
///                 .computeProfile(ComputeProfileArgs.builder()
///                     .roles(
///                         RoleArgs.builder()
///                             .hardwareProfile(HardwareProfileArgs.builder()
///                                 .vmSize("Standard_DS14_v2")
///                                 .build())
///                             .name("headnode")
///                             .osProfile(OsProfileArgs.builder()
///                                 .linuxOperatingSystemProfile(LinuxOperatingSystemProfileArgs.builder()
///                                     .password("**********")
///                                     .username("sshuser")
///                                     .build())
///                                 .build())
///                             .targetInstanceCount(2)
///                             .build(),
///                         RoleArgs.builder()
///                             .hardwareProfile(HardwareProfileArgs.builder()
///                                 .vmSize("Standard_DS14_v2")
///                                 .build())
///                             .name("workernode")
///                             .osProfile(OsProfileArgs.builder()
///                                 .linuxOperatingSystemProfile(LinuxOperatingSystemProfileArgs.builder()
///                                     .password("**********")
///                                     .username("sshuser")
///                                     .build())
///                                 .build())
///                             .targetInstanceCount(3)
///                             .build(),
///                         RoleArgs.builder()
///                             .hardwareProfile(HardwareProfileArgs.builder()
///                                 .vmSize("Standard_DS14_v2")
///                                 .build())
///                             .name("zookeepernode")
///                             .osProfile(OsProfileArgs.builder()
///                                 .linuxOperatingSystemProfile(LinuxOperatingSystemProfileArgs.builder()
///                                     .password("**********")
///                                     .username("sshuser")
///                                     .build())
///                                 .build())
///                             .targetInstanceCount(3)
///                             .build())
///                     .build())
///                 .diskEncryptionProperties(DiskEncryptionPropertiesArgs.builder()
///                     .encryptionAtHost(true)
///                     .build())
///                 .osType("Linux")
///                 .storageProfile(StorageProfileArgs.builder()
///                     .storageaccounts(StorageAccountArgs.builder()
///                         .container("default8525")
///                         .enableSecureChannel(true)
///                         .isDefault(true)
///                         .key("storagekey")
///                         .name("mystorage.blob.core.windows.net")
///                         .build())
///                     .build())
///                 .tier("Standard")
///                 .build())
///             .resourceGroupName("rg1")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const cluster = new azure_native.hdinsight.Cluster("cluster", {
///     clusterName: "cluster1",
///     properties: {
///         clusterDefinition: {
///             configurations: {
///                 gateway: {
///                     "restAuthCredential.isEnabled": true,
///                     "restAuthCredential.password": "**********",
///                     "restAuthCredential.username": "admin",
///                 },
///             },
///             kind: "Hadoop",
///         },
///         clusterVersion: "3.6",
///         computeProfile: {
///             roles: [
///                 {
///                     hardwareProfile: {
///                         vmSize: "Standard_DS14_v2",
///                     },
///                     name: "headnode",
///                     osProfile: {
///                         linuxOperatingSystemProfile: {
///                             password: "**********",
///                             username: "sshuser",
///                         },
///                     },
///                     targetInstanceCount: 2,
///                 },
///                 {
///                     hardwareProfile: {
///                         vmSize: "Standard_DS14_v2",
///                     },
///                     name: "workernode",
///                     osProfile: {
///                         linuxOperatingSystemProfile: {
///                             password: "**********",
///                             username: "sshuser",
///                         },
///                     },
///                     targetInstanceCount: 3,
///                 },
///                 {
///                     hardwareProfile: {
///                         vmSize: "Standard_DS14_v2",
///                     },
///                     name: "zookeepernode",
///                     osProfile: {
///                         linuxOperatingSystemProfile: {
///                             password: "**********",
///                             username: "sshuser",
///                         },
///                     },
///                     targetInstanceCount: 3,
///                 },
///             ],
///         },
///         diskEncryptionProperties: {
///             encryptionAtHost: true,
///         },
///         osType: azure_native.hdinsight.OSType.Linux,
///         storageProfile: {
///             storageaccounts: [{
///                 container: "default8525",
///                 enableSecureChannel: true,
///                 isDefault: true,
///                 key: "storagekey",
///                 name: "mystorage.blob.core.windows.net",
///             }],
///         },
///         tier: azure_native.hdinsight.Tier.Standard,
///     },
///     resourceGroupName: "rg1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// cluster = azure_native.hdinsight.Cluster("cluster",
///     cluster_name="cluster1",
///     properties={
///         "cluster_definition": {
///             "configurations": {
///                 "gateway": {
///                     "restAuthCredential.isEnabled": True,
///                     "restAuthCredential.password": "**********",
///                     "restAuthCredential.username": "admin",
///                 },
///             },
///             "kind": "Hadoop",
///         },
///         "cluster_version": "3.6",
///         "compute_profile": {
///             "roles": [
///                 {
///                     "hardware_profile": {
///                         "vm_size": "Standard_DS14_v2",
///                     },
///                     "name": "headnode",
///                     "os_profile": {
///                         "linux_operating_system_profile": {
///                             "password": "**********",
///                             "username": "sshuser",
///                         },
///                     },
///                     "target_instance_count": 2,
///                 },
///                 {
///                     "hardware_profile": {
///                         "vm_size": "Standard_DS14_v2",
///                     },
///                     "name": "workernode",
///                     "os_profile": {
///                         "linux_operating_system_profile": {
///                             "password": "**********",
///                             "username": "sshuser",
///                         },
///                     },
///                     "target_instance_count": 3,
///                 },
///                 {
///                     "hardware_profile": {
///                         "vm_size": "Standard_DS14_v2",
///                     },
///                     "name": "zookeepernode",
///                     "os_profile": {
///                         "linux_operating_system_profile": {
///                             "password": "**********",
///                             "username": "sshuser",
///                         },
///                     },
///                     "target_instance_count": 3,
///                 },
///             ],
///         },
///         "disk_encryption_properties": {
///             "encryption_at_host": True,
///         },
///         "os_type": azure_native.hdinsight.OSType.LINUX,
///         "storage_profile": {
///             "storageaccounts": [{
///                 "container": "default8525",
///                 "enable_secure_channel": True,
///                 "is_default": True,
///                 "key": "storagekey",
///                 "name": "mystorage.blob.core.windows.net",
///             }],
///         },
///         "tier": azure_native.hdinsight.Tier.STANDARD,
///     },
///     resource_group_name="rg1")
///
/// ```
///
/// ```yaml
/// resources:
///   cluster:
///     type: azure-native:hdinsight:Cluster
///     properties:
///       clusterName: cluster1
///       properties:
///         clusterDefinition:
///           configurations:
///             gateway:
///               restAuthCredential.isEnabled: true
///               restAuthCredential.password: '**********'
///               restAuthCredential.username: admin
///           kind: Hadoop
///         clusterVersion: '3.6'
///         computeProfile:
///           roles:
///             - hardwareProfile:
///                 vmSize: Standard_DS14_v2
///               name: headnode
///               osProfile:
///                 linuxOperatingSystemProfile:
///                   password: '**********'
///                   username: sshuser
///               targetInstanceCount: 2
///             - hardwareProfile:
///                 vmSize: Standard_DS14_v2
///               name: workernode
///               osProfile:
///                 linuxOperatingSystemProfile:
///                   password: '**********'
///                   username: sshuser
///               targetInstanceCount: 3
///             - hardwareProfile:
///                 vmSize: Standard_DS14_v2
///               name: zookeepernode
///               osProfile:
///                 linuxOperatingSystemProfile:
///                   password: '**********'
///                   username: sshuser
///               targetInstanceCount: 3
///         diskEncryptionProperties:
///           encryptionAtHost: true
///         osType: Linux
///         storageProfile:
///           storageaccounts:
///             - container: default8525
///               enableSecureChannel: true
///               isDefault: true
///               key: storagekey
///               name: mystorage.blob.core.windows.net
///         tier: Standard
///       resourceGroupName: rg1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create cluster with encryption in transit
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var cluster = new AzureNative.HDInsight.Cluster("cluster", new()
///     {
///         ClusterName = "cluster1",
///         Properties = new AzureNative.HDInsight.Inputs.ClusterCreatePropertiesArgs
///         {
///             ClusterDefinition = new AzureNative.HDInsight.Inputs.ClusterDefinitionArgs
///             {
///                 Configurations = new Dictionary<string, object?>
///                 {
///                     ["gateway"] = new Dictionary<string, object?>
///                     {
///                         ["restAuthCredential.isEnabled"] = true,
///                         ["restAuthCredential.password"] = "**********",
///                         ["restAuthCredential.username"] = "admin",
///                     },
///                 },
///                 Kind = "Hadoop",
///             },
///             ClusterVersion = "3.6",
///             ComputeProfile = new AzureNative.HDInsight.Inputs.ComputeProfileArgs
///             {
///                 Roles = new[]
///                 {
///                     new AzureNative.HDInsight.Inputs.RoleArgs
///                     {
///                         HardwareProfile = new AzureNative.HDInsight.Inputs.HardwareProfileArgs
///                         {
///                             VmSize = "Large",
///                         },
///                         Name = "headnode",
///                         OsProfile = new AzureNative.HDInsight.Inputs.OsProfileArgs
///                         {
///                             LinuxOperatingSystemProfile = new AzureNative.HDInsight.Inputs.LinuxOperatingSystemProfileArgs
///                             {
///                                 Password = "**********",
///                                 Username = "sshuser",
///                             },
///                         },
///                         TargetInstanceCount = 2,
///                     },
///                     new AzureNative.HDInsight.Inputs.RoleArgs
///                     {
///                         HardwareProfile = new AzureNative.HDInsight.Inputs.HardwareProfileArgs
///                         {
///                             VmSize = "Large",
///                         },
///                         Name = "workernode",
///                         OsProfile = new AzureNative.HDInsight.Inputs.OsProfileArgs
///                         {
///                             LinuxOperatingSystemProfile = new AzureNative.HDInsight.Inputs.LinuxOperatingSystemProfileArgs
///                             {
///                                 Password = "**********",
///                                 Username = "sshuser",
///                             },
///                         },
///                         TargetInstanceCount = 3,
///                     },
///                     new AzureNative.HDInsight.Inputs.RoleArgs
///                     {
///                         HardwareProfile = new AzureNative.HDInsight.Inputs.HardwareProfileArgs
///                         {
///                             VmSize = "Small",
///                         },
///                         Name = "zookeepernode",
///                         OsProfile = new AzureNative.HDInsight.Inputs.OsProfileArgs
///                         {
///                             LinuxOperatingSystemProfile = new AzureNative.HDInsight.Inputs.LinuxOperatingSystemProfileArgs
///                             {
///                                 Password = "**********",
///                                 Username = "sshuser",
///                             },
///                         },
///                         TargetInstanceCount = 3,
///                     },
///                 },
///             },
///             EncryptionInTransitProperties = new AzureNative.HDInsight.Inputs.EncryptionInTransitPropertiesArgs
///             {
///                 IsEncryptionInTransitEnabled = true,
///             },
///             OsType = AzureNative.HDInsight.OSType.Linux,
///             StorageProfile = new AzureNative.HDInsight.Inputs.StorageProfileArgs
///             {
///                 Storageaccounts = new[]
///                 {
///                     new AzureNative.HDInsight.Inputs.StorageAccountArgs
///                     {
///                         Container = "default8525",
///                         EnableSecureChannel = true,
///                         IsDefault = true,
///                         Key = "storagekey",
///                         Name = "mystorage.blob.core.windows.net",
///                     },
///                 },
///             },
///             Tier = AzureNative.HDInsight.Tier.Standard,
///         },
///         ResourceGroupName = "rg1",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	hdinsight "github.com/pulumi/pulumi-azure-native-sdk/hdinsight/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hdinsight.NewCluster(ctx, "cluster", &hdinsight.ClusterArgs{
/// 			ClusterName: pulumi.String("cluster1"),
/// 			Properties: &hdinsight.ClusterCreatePropertiesArgs{
/// 				ClusterDefinition: &hdinsight.ClusterDefinitionArgs{
/// 					Configurations: pulumi.Any(map[string]interface{}{
/// 						"gateway": map[string]interface{}{
/// 							"restAuthCredential.isEnabled": true,
/// 							"restAuthCredential.password":  "**********",
/// 							"restAuthCredential.username":  "admin",
/// 						},
/// 					}),
/// 					Kind: pulumi.String("Hadoop"),
/// 				},
/// 				ClusterVersion: pulumi.String("3.6"),
/// 				ComputeProfile: &hdinsight.ComputeProfileArgs{
/// 					Roles: hdinsight.RoleArray{
/// 						&hdinsight.RoleArgs{
/// 							HardwareProfile: &hdinsight.HardwareProfileArgs{
/// 								VmSize: pulumi.String("Large"),
/// 							},
/// 							Name: pulumi.String("headnode"),
/// 							OsProfile: &hdinsight.OsProfileArgs{
/// 								LinuxOperatingSystemProfile: &hdinsight.LinuxOperatingSystemProfileArgs{
/// 									Password: pulumi.String("**********"),
/// 									Username: pulumi.String("sshuser"),
/// 								},
/// 							},
/// 							TargetInstanceCount: pulumi.Int(2),
/// 						},
/// 						&hdinsight.RoleArgs{
/// 							HardwareProfile: &hdinsight.HardwareProfileArgs{
/// 								VmSize: pulumi.String("Large"),
/// 							},
/// 							Name: pulumi.String("workernode"),
/// 							OsProfile: &hdinsight.OsProfileArgs{
/// 								LinuxOperatingSystemProfile: &hdinsight.LinuxOperatingSystemProfileArgs{
/// 									Password: pulumi.String("**********"),
/// 									Username: pulumi.String("sshuser"),
/// 								},
/// 							},
/// 							TargetInstanceCount: pulumi.Int(3),
/// 						},
/// 						&hdinsight.RoleArgs{
/// 							HardwareProfile: &hdinsight.HardwareProfileArgs{
/// 								VmSize: pulumi.String("Small"),
/// 							},
/// 							Name: pulumi.String("zookeepernode"),
/// 							OsProfile: &hdinsight.OsProfileArgs{
/// 								LinuxOperatingSystemProfile: &hdinsight.LinuxOperatingSystemProfileArgs{
/// 									Password: pulumi.String("**********"),
/// 									Username: pulumi.String("sshuser"),
/// 								},
/// 							},
/// 							TargetInstanceCount: pulumi.Int(3),
/// 						},
/// 					},
/// 				},
/// 				EncryptionInTransitProperties: &hdinsight.EncryptionInTransitPropertiesArgs{
/// 					IsEncryptionInTransitEnabled: pulumi.Bool(true),
/// 				},
/// 				OsType: pulumi.String(hdinsight.OSTypeLinux),
/// 				StorageProfile: &hdinsight.StorageProfileArgs{
/// 					Storageaccounts: hdinsight.StorageAccountArray{
/// 						&hdinsight.StorageAccountArgs{
/// 							Container:           pulumi.String("default8525"),
/// 							EnableSecureChannel: pulumi.Bool(true),
/// 							IsDefault:           pulumi.Bool(true),
/// 							Key:                 pulumi.String("storagekey"),
/// 							Name:                pulumi.String("mystorage.blob.core.windows.net"),
/// 						},
/// 					},
/// 				},
/// 				Tier: pulumi.String(hdinsight.TierStandard),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.hdinsight.Cluster;
/// import com.pulumi.azurenative.hdinsight.ClusterArgs;
/// import com.pulumi.azurenative.hdinsight.inputs.ClusterCreatePropertiesArgs;
/// import com.pulumi.azurenative.hdinsight.inputs.ClusterDefinitionArgs;
/// import com.pulumi.azurenative.hdinsight.inputs.ComputeProfileArgs;
/// import com.pulumi.azurenative.hdinsight.inputs.EncryptionInTransitPropertiesArgs;
/// import com.pulumi.azurenative.hdinsight.inputs.StorageProfileArgs;
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
///         var cluster = new Cluster("cluster", ClusterArgs.builder()
///             .clusterName("cluster1")
///             .properties(ClusterCreatePropertiesArgs.builder()
///                 .clusterDefinition(ClusterDefinitionArgs.builder()
///                     .configurations(Map.of("gateway", Map.ofEntries(
///                         Map.entry("restAuthCredential.isEnabled", true),
///                         Map.entry("restAuthCredential.password", "**********"),
///                         Map.entry("restAuthCredential.username", "admin")
///                     )))
///                     .kind("Hadoop")
///                     .build())
///                 .clusterVersion("3.6")
///                 .computeProfile(ComputeProfileArgs.builder()
///                     .roles(
///                         RoleArgs.builder()
///                             .hardwareProfile(HardwareProfileArgs.builder()
///                                 .vmSize("Large")
///                                 .build())
///                             .name("headnode")
///                             .osProfile(OsProfileArgs.builder()
///                                 .linuxOperatingSystemProfile(LinuxOperatingSystemProfileArgs.builder()
///                                     .password("**********")
///                                     .username("sshuser")
///                                     .build())
///                                 .build())
///                             .targetInstanceCount(2)
///                             .build(),
///                         RoleArgs.builder()
///                             .hardwareProfile(HardwareProfileArgs.builder()
///                                 .vmSize("Large")
///                                 .build())
///                             .name("workernode")
///                             .osProfile(OsProfileArgs.builder()
///                                 .linuxOperatingSystemProfile(LinuxOperatingSystemProfileArgs.builder()
///                                     .password("**********")
///                                     .username("sshuser")
///                                     .build())
///                                 .build())
///                             .targetInstanceCount(3)
///                             .build(),
///                         RoleArgs.builder()
///                             .hardwareProfile(HardwareProfileArgs.builder()
///                                 .vmSize("Small")
///                                 .build())
///                             .name("zookeepernode")
///                             .osProfile(OsProfileArgs.builder()
///                                 .linuxOperatingSystemProfile(LinuxOperatingSystemProfileArgs.builder()
///                                     .password("**********")
///                                     .username("sshuser")
///                                     .build())
///                                 .build())
///                             .targetInstanceCount(3)
///                             .build())
///                     .build())
///                 .encryptionInTransitProperties(EncryptionInTransitPropertiesArgs.builder()
///                     .isEncryptionInTransitEnabled(true)
///                     .build())
///                 .osType("Linux")
///                 .storageProfile(StorageProfileArgs.builder()
///                     .storageaccounts(StorageAccountArgs.builder()
///                         .container("default8525")
///                         .enableSecureChannel(true)
///                         .isDefault(true)
///                         .key("storagekey")
///                         .name("mystorage.blob.core.windows.net")
///                         .build())
///                     .build())
///                 .tier("Standard")
///                 .build())
///             .resourceGroupName("rg1")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const cluster = new azure_native.hdinsight.Cluster("cluster", {
///     clusterName: "cluster1",
///     properties: {
///         clusterDefinition: {
///             configurations: {
///                 gateway: {
///                     "restAuthCredential.isEnabled": true,
///                     "restAuthCredential.password": "**********",
///                     "restAuthCredential.username": "admin",
///                 },
///             },
///             kind: "Hadoop",
///         },
///         clusterVersion: "3.6",
///         computeProfile: {
///             roles: [
///                 {
///                     hardwareProfile: {
///                         vmSize: "Large",
///                     },
///                     name: "headnode",
///                     osProfile: {
///                         linuxOperatingSystemProfile: {
///                             password: "**********",
///                             username: "sshuser",
///                         },
///                     },
///                     targetInstanceCount: 2,
///                 },
///                 {
///                     hardwareProfile: {
///                         vmSize: "Large",
///                     },
///                     name: "workernode",
///                     osProfile: {
///                         linuxOperatingSystemProfile: {
///                             password: "**********",
///                             username: "sshuser",
///                         },
///                     },
///                     targetInstanceCount: 3,
///                 },
///                 {
///                     hardwareProfile: {
///                         vmSize: "Small",
///                     },
///                     name: "zookeepernode",
///                     osProfile: {
///                         linuxOperatingSystemProfile: {
///                             password: "**********",
///                             username: "sshuser",
///                         },
///                     },
///                     targetInstanceCount: 3,
///                 },
///             ],
///         },
///         encryptionInTransitProperties: {
///             isEncryptionInTransitEnabled: true,
///         },
///         osType: azure_native.hdinsight.OSType.Linux,
///         storageProfile: {
///             storageaccounts: [{
///                 container: "default8525",
///                 enableSecureChannel: true,
///                 isDefault: true,
///                 key: "storagekey",
///                 name: "mystorage.blob.core.windows.net",
///             }],
///         },
///         tier: azure_native.hdinsight.Tier.Standard,
///     },
///     resourceGroupName: "rg1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// cluster = azure_native.hdinsight.Cluster("cluster",
///     cluster_name="cluster1",
///     properties={
///         "cluster_definition": {
///             "configurations": {
///                 "gateway": {
///                     "restAuthCredential.isEnabled": True,
///                     "restAuthCredential.password": "**********",
///                     "restAuthCredential.username": "admin",
///                 },
///             },
///             "kind": "Hadoop",
///         },
///         "cluster_version": "3.6",
///         "compute_profile": {
///             "roles": [
///                 {
///                     "hardware_profile": {
///                         "vm_size": "Large",
///                     },
///                     "name": "headnode",
///                     "os_profile": {
///                         "linux_operating_system_profile": {
///                             "password": "**********",
///                             "username": "sshuser",
///                         },
///                     },
///                     "target_instance_count": 2,
///                 },
///                 {
///                     "hardware_profile": {
///                         "vm_size": "Large",
///                     },
///                     "name": "workernode",
///                     "os_profile": {
///                         "linux_operating_system_profile": {
///                             "password": "**********",
///                             "username": "sshuser",
///                         },
///                     },
///                     "target_instance_count": 3,
///                 },
///                 {
///                     "hardware_profile": {
///                         "vm_size": "Small",
///                     },
///                     "name": "zookeepernode",
///                     "os_profile": {
///                         "linux_operating_system_profile": {
///                             "password": "**********",
///                             "username": "sshuser",
///                         },
///                     },
///                     "target_instance_count": 3,
///                 },
///             ],
///         },
///         "encryption_in_transit_properties": {
///             "is_encryption_in_transit_enabled": True,
///         },
///         "os_type": azure_native.hdinsight.OSType.LINUX,
///         "storage_profile": {
///             "storageaccounts": [{
///                 "container": "default8525",
///                 "enable_secure_channel": True,
///                 "is_default": True,
///                 "key": "storagekey",
///                 "name": "mystorage.blob.core.windows.net",
///             }],
///         },
///         "tier": azure_native.hdinsight.Tier.STANDARD,
///     },
///     resource_group_name="rg1")
///
/// ```
///
/// ```yaml
/// resources:
///   cluster:
///     type: azure-native:hdinsight:Cluster
///     properties:
///       clusterName: cluster1
///       properties:
///         clusterDefinition:
///           configurations:
///             gateway:
///               restAuthCredential.isEnabled: true
///               restAuthCredential.password: '**********'
///               restAuthCredential.username: admin
///           kind: Hadoop
///         clusterVersion: '3.6'
///         computeProfile:
///           roles:
///             - hardwareProfile:
///                 vmSize: Large
///               name: headnode
///               osProfile:
///                 linuxOperatingSystemProfile:
///                   password: '**********'
///                   username: sshuser
///               targetInstanceCount: 2
///             - hardwareProfile:
///                 vmSize: Large
///               name: workernode
///               osProfile:
///                 linuxOperatingSystemProfile:
///                   password: '**********'
///                   username: sshuser
///               targetInstanceCount: 3
///             - hardwareProfile:
///                 vmSize: Small
///               name: zookeepernode
///               osProfile:
///                 linuxOperatingSystemProfile:
///                   password: '**********'
///                   username: sshuser
///               targetInstanceCount: 3
///         encryptionInTransitProperties:
///           isEncryptionInTransitEnabled: true
///         osType: Linux
///         storageProfile:
///           storageaccounts:
///             - container: default8525
///               enableSecureChannel: true
///               isDefault: true
///               key: storagekey
///               name: mystorage.blob.core.windows.net
///         tier: Standard
///       resourceGroupName: rg1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create cluster with network properties
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var cluster = new AzureNative.HDInsight.Cluster("cluster", new()
///     {
///         ClusterName = "cluster1",
///         Properties = new AzureNative.HDInsight.Inputs.ClusterCreatePropertiesArgs
///         {
///             ClusterDefinition = new AzureNative.HDInsight.Inputs.ClusterDefinitionArgs
///             {
///                 Configurations = new Dictionary<string, object?>
///                 {
///                     ["gateway"] = new Dictionary<string, object?>
///                     {
///                         ["restAuthCredential.isEnabled"] = true,
///                         ["restAuthCredential.password"] = "**********",
///                         ["restAuthCredential.username"] = "admin",
///                     },
///                 },
///                 Kind = "hadoop",
///             },
///             ClusterVersion = "3.6",
///             ComputeProfile = new AzureNative.HDInsight.Inputs.ComputeProfileArgs
///             {
///                 Roles = new[]
///                 {
///                     new AzureNative.HDInsight.Inputs.RoleArgs
///                     {
///                         HardwareProfile = new AzureNative.HDInsight.Inputs.HardwareProfileArgs
///                         {
///                             VmSize = "standard_d3",
///                         },
///                         Name = "headnode",
///                         OsProfile = new AzureNative.HDInsight.Inputs.OsProfileArgs
///                         {
///                             LinuxOperatingSystemProfile = new AzureNative.HDInsight.Inputs.LinuxOperatingSystemProfileArgs
///                             {
///                                 Password = "**********",
///                                 SshProfile = new AzureNative.HDInsight.Inputs.SshProfileArgs
///                                 {
///                                     PublicKeys = new[]
///                                     {
///                                         new AzureNative.HDInsight.Inputs.SshPublicKeyArgs
///                                         {
///                                             CertificateData = "**********",
///                                         },
///                                     },
///                                 },
///                                 Username = "sshuser",
///                             },
///                         },
///                         TargetInstanceCount = 2,
///                         VirtualNetworkProfile = new AzureNative.HDInsight.Inputs.VirtualNetworkProfileArgs
///                         {
///                             Id = "/subscriptions/subId/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/vnetname",
///                             Subnet = "/subscriptions/subId/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/vnetname/subnets/vnetsubnet",
///                         },
///                     },
///                     new AzureNative.HDInsight.Inputs.RoleArgs
///                     {
///                         HardwareProfile = new AzureNative.HDInsight.Inputs.HardwareProfileArgs
///                         {
///                             VmSize = "standard_d3",
///                         },
///                         Name = "workernode",
///                         OsProfile = new AzureNative.HDInsight.Inputs.OsProfileArgs
///                         {
///                             LinuxOperatingSystemProfile = new AzureNative.HDInsight.Inputs.LinuxOperatingSystemProfileArgs
///                             {
///                                 Password = "**********",
///                                 SshProfile = new AzureNative.HDInsight.Inputs.SshProfileArgs
///                                 {
///                                     PublicKeys = new[]
///                                     {
///                                         new AzureNative.HDInsight.Inputs.SshPublicKeyArgs
///                                         {
///                                             CertificateData = "**********",
///                                         },
///                                     },
///                                 },
///                                 Username = "sshuser",
///                             },
///                         },
///                         TargetInstanceCount = 2,
///                         VirtualNetworkProfile = new AzureNative.HDInsight.Inputs.VirtualNetworkProfileArgs
///                         {
///                             Id = "/subscriptions/subId/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/vnetname",
///                             Subnet = "/subscriptions/subId/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/vnetname/subnets/vnetsubnet",
///                         },
///                     },
///                 },
///             },
///             NetworkProperties = new AzureNative.HDInsight.Inputs.NetworkPropertiesArgs
///             {
///                 PrivateLink = AzureNative.HDInsight.PrivateLink.Enabled,
///                 PublicIpTag = new AzureNative.HDInsight.Inputs.IpTagArgs
///                 {
///                     IpTagType = "FirstPartyUsage",
///                     Tag = "/<TagName>",
///                 },
///                 ResourceProviderConnection = AzureNative.HDInsight.ResourceProviderConnection.Outbound,
///             },
///             OsType = AzureNative.HDInsight.OSType.Linux,
///             StorageProfile = new AzureNative.HDInsight.Inputs.StorageProfileArgs
///             {
///                 Storageaccounts = new[]
///                 {
///                     new AzureNative.HDInsight.Inputs.StorageAccountArgs
///                     {
///                         Container = "containername",
///                         EnableSecureChannel = true,
///                         IsDefault = true,
///                         Key = "storage account key",
///                         Name = "mystorage",
///                     },
///                 },
///             },
///         },
///         ResourceGroupName = "rg1",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	hdinsight "github.com/pulumi/pulumi-azure-native-sdk/hdinsight/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hdinsight.NewCluster(ctx, "cluster", &hdinsight.ClusterArgs{
/// 			ClusterName: pulumi.String("cluster1"),
/// 			Properties: &hdinsight.ClusterCreatePropertiesArgs{
/// 				ClusterDefinition: &hdinsight.ClusterDefinitionArgs{
/// 					Configurations: pulumi.Any(map[string]interface{}{
/// 						"gateway": map[string]interface{}{
/// 							"restAuthCredential.isEnabled": true,
/// 							"restAuthCredential.password":  "**********",
/// 							"restAuthCredential.username":  "admin",
/// 						},
/// 					}),
/// 					Kind: pulumi.String("hadoop"),
/// 				},
/// 				ClusterVersion: pulumi.String("3.6"),
/// 				ComputeProfile: &hdinsight.ComputeProfileArgs{
/// 					Roles: hdinsight.RoleArray{
/// 						&hdinsight.RoleArgs{
/// 							HardwareProfile: &hdinsight.HardwareProfileArgs{
/// 								VmSize: pulumi.String("standard_d3"),
/// 							},
/// 							Name: pulumi.String("headnode"),
/// 							OsProfile: &hdinsight.OsProfileArgs{
/// 								LinuxOperatingSystemProfile: &hdinsight.LinuxOperatingSystemProfileArgs{
/// 									Password: pulumi.String("**********"),
/// 									SshProfile: &hdinsight.SshProfileArgs{
/// 										PublicKeys: hdinsight.SshPublicKeyArray{
/// 											&hdinsight.SshPublicKeyArgs{
/// 												CertificateData: pulumi.String("**********"),
/// 											},
/// 										},
/// 									},
/// 									Username: pulumi.String("sshuser"),
/// 								},
/// 							},
/// 							TargetInstanceCount: pulumi.Int(2),
/// 							VirtualNetworkProfile: &hdinsight.VirtualNetworkProfileArgs{
/// 								Id:     pulumi.String("/subscriptions/subId/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/vnetname"),
/// 								Subnet: pulumi.String("/subscriptions/subId/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/vnetname/subnets/vnetsubnet"),
/// 							},
/// 						},
/// 						&hdinsight.RoleArgs{
/// 							HardwareProfile: &hdinsight.HardwareProfileArgs{
/// 								VmSize: pulumi.String("standard_d3"),
/// 							},
/// 							Name: pulumi.String("workernode"),
/// 							OsProfile: &hdinsight.OsProfileArgs{
/// 								LinuxOperatingSystemProfile: &hdinsight.LinuxOperatingSystemProfileArgs{
/// 									Password: pulumi.String("**********"),
/// 									SshProfile: &hdinsight.SshProfileArgs{
/// 										PublicKeys: hdinsight.SshPublicKeyArray{
/// 											&hdinsight.SshPublicKeyArgs{
/// 												CertificateData: pulumi.String("**********"),
/// 											},
/// 										},
/// 									},
/// 									Username: pulumi.String("sshuser"),
/// 								},
/// 							},
/// 							TargetInstanceCount: pulumi.Int(2),
/// 							VirtualNetworkProfile: &hdinsight.VirtualNetworkProfileArgs{
/// 								Id:     pulumi.String("/subscriptions/subId/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/vnetname"),
/// 								Subnet: pulumi.String("/subscriptions/subId/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/vnetname/subnets/vnetsubnet"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 				NetworkProperties: &hdinsight.NetworkPropertiesArgs{
/// 					PrivateLink: pulumi.String(hdinsight.PrivateLinkEnabled),
/// 					PublicIpTag: &hdinsight.IpTagArgs{
/// 						IpTagType: pulumi.String("FirstPartyUsage"),
/// 						Tag:       pulumi.String("/<TagName>"),
/// 					},
/// 					ResourceProviderConnection: pulumi.String(hdinsight.ResourceProviderConnectionOutbound),
/// 				},
/// 				OsType: pulumi.String(hdinsight.OSTypeLinux),
/// 				StorageProfile: &hdinsight.StorageProfileArgs{
/// 					Storageaccounts: hdinsight.StorageAccountArray{
/// 						&hdinsight.StorageAccountArgs{
/// 							Container:           pulumi.String("containername"),
/// 							EnableSecureChannel: pulumi.Bool(true),
/// 							IsDefault:           pulumi.Bool(true),
/// 							Key:                 pulumi.String("storage account key"),
/// 							Name:                pulumi.String("mystorage"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.hdinsight.Cluster;
/// import com.pulumi.azurenative.hdinsight.ClusterArgs;
/// import com.pulumi.azurenative.hdinsight.inputs.ClusterCreatePropertiesArgs;
/// import com.pulumi.azurenative.hdinsight.inputs.ClusterDefinitionArgs;
/// import com.pulumi.azurenative.hdinsight.inputs.ComputeProfileArgs;
/// import com.pulumi.azurenative.hdinsight.inputs.NetworkPropertiesArgs;
/// import com.pulumi.azurenative.hdinsight.inputs.IpTagArgs;
/// import com.pulumi.azurenative.hdinsight.inputs.StorageProfileArgs;
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
///         var cluster = new Cluster("cluster", ClusterArgs.builder()
///             .clusterName("cluster1")
///             .properties(ClusterCreatePropertiesArgs.builder()
///                 .clusterDefinition(ClusterDefinitionArgs.builder()
///                     .configurations(Map.of("gateway", Map.ofEntries(
///                         Map.entry("restAuthCredential.isEnabled", true),
///                         Map.entry("restAuthCredential.password", "**********"),
///                         Map.entry("restAuthCredential.username", "admin")
///                     )))
///                     .kind("hadoop")
///                     .build())
///                 .clusterVersion("3.6")
///                 .computeProfile(ComputeProfileArgs.builder()
///                     .roles(
///                         RoleArgs.builder()
///                             .hardwareProfile(HardwareProfileArgs.builder()
///                                 .vmSize("standard_d3")
///                                 .build())
///                             .name("headnode")
///                             .osProfile(OsProfileArgs.builder()
///                                 .linuxOperatingSystemProfile(LinuxOperatingSystemProfileArgs.builder()
///                                     .password("**********")
///                                     .sshProfile(SshProfileArgs.builder()
///                                         .publicKeys(SshPublicKeyArgs.builder()
///                                             .certificateData("**********")
///                                             .build())
///                                         .build())
///                                     .username("sshuser")
///                                     .build())
///                                 .build())
///                             .targetInstanceCount(2)
///                             .virtualNetworkProfile(VirtualNetworkProfileArgs.builder()
///                                 .id("/subscriptions/subId/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/vnetname")
///                                 .subnet("/subscriptions/subId/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/vnetname/subnets/vnetsubnet")
///                                 .build())
///                             .build(),
///                         RoleArgs.builder()
///                             .hardwareProfile(HardwareProfileArgs.builder()
///                                 .vmSize("standard_d3")
///                                 .build())
///                             .name("workernode")
///                             .osProfile(OsProfileArgs.builder()
///                                 .linuxOperatingSystemProfile(LinuxOperatingSystemProfileArgs.builder()
///                                     .password("**********")
///                                     .sshProfile(SshProfileArgs.builder()
///                                         .publicKeys(SshPublicKeyArgs.builder()
///                                             .certificateData("**********")
///                                             .build())
///                                         .build())
///                                     .username("sshuser")
///                                     .build())
///                                 .build())
///                             .targetInstanceCount(2)
///                             .virtualNetworkProfile(VirtualNetworkProfileArgs.builder()
///                                 .id("/subscriptions/subId/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/vnetname")
///                                 .subnet("/subscriptions/subId/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/vnetname/subnets/vnetsubnet")
///                                 .build())
///                             .build())
///                     .build())
///                 .networkProperties(NetworkPropertiesArgs.builder()
///                     .privateLink("Enabled")
///                     .publicIpTag(IpTagArgs.builder()
///                         .ipTagType("FirstPartyUsage")
///                         .tag("/<TagName>")
///                         .build())
///                     .resourceProviderConnection("Outbound")
///                     .build())
///                 .osType("Linux")
///                 .storageProfile(StorageProfileArgs.builder()
///                     .storageaccounts(StorageAccountArgs.builder()
///                         .container("containername")
///                         .enableSecureChannel(true)
///                         .isDefault(true)
///                         .key("storage account key")
///                         .name("mystorage")
///                         .build())
///                     .build())
///                 .build())
///             .resourceGroupName("rg1")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const cluster = new azure_native.hdinsight.Cluster("cluster", {
///     clusterName: "cluster1",
///     properties: {
///         clusterDefinition: {
///             configurations: {
///                 gateway: {
///                     "restAuthCredential.isEnabled": true,
///                     "restAuthCredential.password": "**********",
///                     "restAuthCredential.username": "admin",
///                 },
///             },
///             kind: "hadoop",
///         },
///         clusterVersion: "3.6",
///         computeProfile: {
///             roles: [
///                 {
///                     hardwareProfile: {
///                         vmSize: "standard_d3",
///                     },
///                     name: "headnode",
///                     osProfile: {
///                         linuxOperatingSystemProfile: {
///                             password: "**********",
///                             sshProfile: {
///                                 publicKeys: [{
///                                     certificateData: "**********",
///                                 }],
///                             },
///                             username: "sshuser",
///                         },
///                     },
///                     targetInstanceCount: 2,
///                     virtualNetworkProfile: {
///                         id: "/subscriptions/subId/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/vnetname",
///                         subnet: "/subscriptions/subId/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/vnetname/subnets/vnetsubnet",
///                     },
///                 },
///                 {
///                     hardwareProfile: {
///                         vmSize: "standard_d3",
///                     },
///                     name: "workernode",
///                     osProfile: {
///                         linuxOperatingSystemProfile: {
///                             password: "**********",
///                             sshProfile: {
///                                 publicKeys: [{
///                                     certificateData: "**********",
///                                 }],
///                             },
///                             username: "sshuser",
///                         },
///                     },
///                     targetInstanceCount: 2,
///                     virtualNetworkProfile: {
///                         id: "/subscriptions/subId/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/vnetname",
///                         subnet: "/subscriptions/subId/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/vnetname/subnets/vnetsubnet",
///                     },
///                 },
///             ],
///         },
///         networkProperties: {
///             privateLink: azure_native.hdinsight.PrivateLink.Enabled,
///             publicIpTag: {
///                 ipTagType: "FirstPartyUsage",
///                 tag: "/<TagName>",
///             },
///             resourceProviderConnection: azure_native.hdinsight.ResourceProviderConnection.Outbound,
///         },
///         osType: azure_native.hdinsight.OSType.Linux,
///         storageProfile: {
///             storageaccounts: [{
///                 container: "containername",
///                 enableSecureChannel: true,
///                 isDefault: true,
///                 key: "storage account key",
///                 name: "mystorage",
///             }],
///         },
///     },
///     resourceGroupName: "rg1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// cluster = azure_native.hdinsight.Cluster("cluster",
///     cluster_name="cluster1",
///     properties={
///         "cluster_definition": {
///             "configurations": {
///                 "gateway": {
///                     "restAuthCredential.isEnabled": True,
///                     "restAuthCredential.password": "**********",
///                     "restAuthCredential.username": "admin",
///                 },
///             },
///             "kind": "hadoop",
///         },
///         "cluster_version": "3.6",
///         "compute_profile": {
///             "roles": [
///                 {
///                     "hardware_profile": {
///                         "vm_size": "standard_d3",
///                     },
///                     "name": "headnode",
///                     "os_profile": {
///                         "linux_operating_system_profile": {
///                             "password": "**********",
///                             "ssh_profile": {
///                                 "public_keys": [{
///                                     "certificate_data": "**********",
///                                 }],
///                             },
///                             "username": "sshuser",
///                         },
///                     },
///                     "target_instance_count": 2,
///                     "virtual_network_profile": {
///                         "id": "/subscriptions/subId/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/vnetname",
///                         "subnet": "/subscriptions/subId/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/vnetname/subnets/vnetsubnet",
///                     },
///                 },
///                 {
///                     "hardware_profile": {
///                         "vm_size": "standard_d3",
///                     },
///                     "name": "workernode",
///                     "os_profile": {
///                         "linux_operating_system_profile": {
///                             "password": "**********",
///                             "ssh_profile": {
///                                 "public_keys": [{
///                                     "certificate_data": "**********",
///                                 }],
///                             },
///                             "username": "sshuser",
///                         },
///                     },
///                     "target_instance_count": 2,
///                     "virtual_network_profile": {
///                         "id": "/subscriptions/subId/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/vnetname",
///                         "subnet": "/subscriptions/subId/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/vnetname/subnets/vnetsubnet",
///                     },
///                 },
///             ],
///         },
///         "network_properties": {
///             "private_link": azure_native.hdinsight.PrivateLink.ENABLED,
///             "public_ip_tag": {
///                 "ip_tag_type": "FirstPartyUsage",
///                 "tag": "/<TagName>",
///             },
///             "resource_provider_connection": azure_native.hdinsight.ResourceProviderConnection.OUTBOUND,
///         },
///         "os_type": azure_native.hdinsight.OSType.LINUX,
///         "storage_profile": {
///             "storageaccounts": [{
///                 "container": "containername",
///                 "enable_secure_channel": True,
///                 "is_default": True,
///                 "key": "storage account key",
///                 "name": "mystorage",
///             }],
///         },
///     },
///     resource_group_name="rg1")
///
/// ```
///
/// ```yaml
/// resources:
///   cluster:
///     type: azure-native:hdinsight:Cluster
///     properties:
///       clusterName: cluster1
///       properties:
///         clusterDefinition:
///           configurations:
///             gateway:
///               restAuthCredential.isEnabled: true
///               restAuthCredential.password: '**********'
///               restAuthCredential.username: admin
///           kind: hadoop
///         clusterVersion: '3.6'
///         computeProfile:
///           roles:
///             - hardwareProfile:
///                 vmSize: standard_d3
///               name: headnode
///               osProfile:
///                 linuxOperatingSystemProfile:
///                   password: '**********'
///                   sshProfile:
///                     publicKeys:
///                       - certificateData: '**********'
///                   username: sshuser
///               targetInstanceCount: 2
///               virtualNetworkProfile:
///                 id: /subscriptions/subId/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/vnetname
///                 subnet: /subscriptions/subId/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/vnetname/subnets/vnetsubnet
///             - hardwareProfile:
///                 vmSize: standard_d3
///               name: workernode
///               osProfile:
///                 linuxOperatingSystemProfile:
///                   password: '**********'
///                   sshProfile:
///                     publicKeys:
///                       - certificateData: '**********'
///                   username: sshuser
///               targetInstanceCount: 2
///               virtualNetworkProfile:
///                 id: /subscriptions/subId/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/vnetname
///                 subnet: /subscriptions/subId/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/vnetname/subnets/vnetsubnet
///         networkProperties:
///           privateLink: Enabled
///           publicIpTag:
///             ipTagType: FirstPartyUsage
///             tag: /<TagName>
///           resourceProviderConnection: Outbound
///         osType: Linux
///         storageProfile:
///           storageaccounts:
///             - container: containername
///               enableSecureChannel: true
///               isDefault: true
///               key: storage account key
///               name: mystorage
///       resourceGroupName: rg1
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:hdinsight:Cluster cluster1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.HDInsight/clusters/{clusterName}
/// ```
class Cluster extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The ETag for the resource
  late final pulumi.Output<String?> etag;
  /// The identity of the cluster, if configured.
  late final pulumi.Output<ClusterIdentityResponse?> identity;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The properties of the cluster.
  late final pulumi.Output<ClusterGetPropertiesResponse> properties;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// The availability zones.
  late final pulumi.Output<List<String>?> zones;

  /// Creates a new [Cluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Cluster]. {@macro pulumi_hdinsight_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Cluster(
    String name, {
    ClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:hdinsight:Cluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.etag = registerOutput<String?>('etag');
    this.identity = registerOutput<ClusterIdentityResponse?>('identity');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.properties = registerOutput<ClusterGetPropertiesResponse>('properties');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
    this.zones = registerOutput<List<String>?>('zones');
  }
}

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_collection_rule_args.dart';
import 'data_collection_rule_resource_response_identity.dart';
import 'data_collection_rule_resource_response_system_data.dart';
import 'data_collection_rule_response_data_sources.dart';
import 'data_collection_rule_response_destinations.dart';
import 'data_collection_rule_response_metadata.dart';
import 'stream_declaration_response.dart';

/// Definition of ARM tracked top level resource.
///
/// Uses Azure REST API version 2022-06-01.
///
/// Other available API versions: 2024-03-11. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native monitor [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update data collection rule
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dataCollectionRule = new AzureNative.Monitor.DataCollectionRule("dataCollectionRule", new()
///     {
///         DataCollectionRuleName = "myCollectionRule",
///         DataFlows = new[]
///         {
///             new AzureNative.Monitor.Inputs.DataFlowArgs
///             {
///                 Destinations = new[]
///                 {
///                     "centralWorkspace",
///                 },
///                 Streams = new[]
///                 {
///                     AzureNative.Monitor.KnownDataFlowStreams.Microsoft_Perf,
///                     AzureNative.Monitor.KnownDataFlowStreams.Microsoft_Syslog,
///                     AzureNative.Monitor.KnownDataFlowStreams.Microsoft_WindowsEvent,
///                 },
///             },
///         },
///         DataSources = new AzureNative.Monitor.Inputs.DataCollectionRuleDataSourcesArgs
///         {
///             PerformanceCounters = new[]
///             {
///                 new AzureNative.Monitor.Inputs.PerfCounterDataSourceArgs
///                 {
///                     CounterSpecifiers = new[]
///                     {
///                         "\\Processor(_Total)\\% Processor Time",
///                         "\\Memory\\Committed Bytes",
///                         "\\LogicalDisk(_Total)\\Free Megabytes",
///                         "\\PhysicalDisk(_Total)\\Avg. Disk Queue Length",
///                     },
///                     Name = "cloudTeamCoreCounters",
///                     SamplingFrequencyInSeconds = 15,
///                     Streams = new[]
///                     {
///                         AzureNative.Monitor.KnownPerfCounterDataSourceStreams.Microsoft_Perf,
///                     },
///                 },
///                 new AzureNative.Monitor.Inputs.PerfCounterDataSourceArgs
///                 {
///                     CounterSpecifiers = new[]
///                     {
///                         "\\Process(_Total)\\Thread Count",
///                     },
///                     Name = "appTeamExtraCounters",
///                     SamplingFrequencyInSeconds = 30,
///                     Streams = new[]
///                     {
///                         AzureNative.Monitor.KnownPerfCounterDataSourceStreams.Microsoft_Perf,
///                     },
///                 },
///             },
///             Syslog = new[]
///             {
///                 new AzureNative.Monitor.Inputs.SyslogDataSourceArgs
///                 {
///                     FacilityNames = new[]
///                     {
///                         AzureNative.Monitor.KnownSyslogDataSourceFacilityNames.Cron,
///                     },
///                     LogLevels = new[]
///                     {
///                         AzureNative.Monitor.KnownSyslogDataSourceLogLevels.Debug,
///                         AzureNative.Monitor.KnownSyslogDataSourceLogLevels.Critical,
///                         AzureNative.Monitor.KnownSyslogDataSourceLogLevels.Emergency,
///                     },
///                     Name = "cronSyslog",
///                     Streams = new[]
///                     {
///                         AzureNative.Monitor.KnownSyslogDataSourceStreams.Microsoft_Syslog,
///                     },
///                 },
///                 new AzureNative.Monitor.Inputs.SyslogDataSourceArgs
///                 {
///                     FacilityNames = new[]
///                     {
///                         AzureNative.Monitor.KnownSyslogDataSourceFacilityNames.Syslog,
///                     },
///                     LogLevels = new[]
///                     {
///                         AzureNative.Monitor.KnownSyslogDataSourceLogLevels.Alert,
///                         AzureNative.Monitor.KnownSyslogDataSourceLogLevels.Critical,
///                         AzureNative.Monitor.KnownSyslogDataSourceLogLevels.Emergency,
///                     },
///                     Name = "syslogBase",
///                     Streams = new[]
///                     {
///                         AzureNative.Monitor.KnownSyslogDataSourceStreams.Microsoft_Syslog,
///                     },
///                 },
///             },
///             WindowsEventLogs = new[]
///             {
///                 new AzureNative.Monitor.Inputs.WindowsEventLogDataSourceArgs
///                 {
///                     Name = "cloudSecurityTeamEvents",
///                     Streams = new[]
///                     {
///                         AzureNative.Monitor.KnownWindowsEventLogDataSourceStreams.Microsoft_WindowsEvent,
///                     },
///                     XPathQueries = new[]
///                     {
///                         "Security!",
///                     },
///                 },
///                 new AzureNative.Monitor.Inputs.WindowsEventLogDataSourceArgs
///                 {
///                     Name = "appTeam1AppEvents",
///                     Streams = new[]
///                     {
///                         AzureNative.Monitor.KnownWindowsEventLogDataSourceStreams.Microsoft_WindowsEvent,
///                     },
///                     XPathQueries = new[]
///                     {
///                         "System![System[(Level = 1 or Level = 2 or Level = 3)]]",
///                         "Application!*[System[(Level = 1 or Level = 2 or Level = 3)]]",
///                     },
///                 },
///             },
///         },
///         Destinations = new AzureNative.Monitor.Inputs.DataCollectionRuleDestinationsArgs
///         {
///             LogAnalytics = new[]
///             {
///                 new AzureNative.Monitor.Inputs.LogAnalyticsDestinationArgs
///                 {
///                     Name = "centralWorkspace",
///                     WorkspaceResourceId = "/subscriptions/703362b3-f278-4e4b-9179-c76eaf41ffc2/resourceGroups/myResourceGroup/providers/Microsoft.OperationalInsights/workspaces/centralTeamWorkspace",
///                 },
///             },
///         },
///         Location = "eastus",
///         ResourceGroupName = "myResourceGroup",
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
/// 	monitor "github.com/pulumi/pulumi-azure-native-sdk/monitor/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := monitor.NewDataCollectionRule(ctx, "dataCollectionRule", &monitor.DataCollectionRuleArgs{
/// 			DataCollectionRuleName: pulumi.String("myCollectionRule"),
/// 			DataFlows: monitor.DataFlowArray{
/// 				&monitor.DataFlowArgs{
/// 					Destinations: pulumi.StringArray{
/// 						pulumi.String("centralWorkspace"),
/// 					},
/// 					Streams: pulumi.StringArray{
/// 						pulumi.String(monitor.KnownDataFlowStreams_Microsoft_Perf),
/// 						pulumi.String(monitor.KnownDataFlowStreams_Microsoft_Syslog),
/// 						pulumi.String(monitor.KnownDataFlowStreams_Microsoft_WindowsEvent),
/// 					},
/// 				},
/// 			},
/// 			DataSources: &monitor.DataCollectionRuleDataSourcesArgs{
/// 				PerformanceCounters: monitor.PerfCounterDataSourceArray{
/// 					&monitor.PerfCounterDataSourceArgs{
/// 						CounterSpecifiers: pulumi.StringArray{
/// 							pulumi.String("\\Processor(_Total)\\% Processor Time"),
/// 							pulumi.String("\\Memory\\Committed Bytes"),
/// 							pulumi.String("\\LogicalDisk(_Total)\\Free Megabytes"),
/// 							pulumi.String("\\PhysicalDisk(_Total)\\Avg. Disk Queue Length"),
/// 						},
/// 						Name:                       pulumi.String("cloudTeamCoreCounters"),
/// 						SamplingFrequencyInSeconds: pulumi.Int(15),
/// 						Streams: pulumi.StringArray{
/// 							pulumi.String(monitor.KnownPerfCounterDataSourceStreams_Microsoft_Perf),
/// 						},
/// 					},
/// 					&monitor.PerfCounterDataSourceArgs{
/// 						CounterSpecifiers: pulumi.StringArray{
/// 							pulumi.String("\\Process(_Total)\\Thread Count"),
/// 						},
/// 						Name:                       pulumi.String("appTeamExtraCounters"),
/// 						SamplingFrequencyInSeconds: pulumi.Int(30),
/// 						Streams: pulumi.StringArray{
/// 							pulumi.String(monitor.KnownPerfCounterDataSourceStreams_Microsoft_Perf),
/// 						},
/// 					},
/// 				},
/// 				Syslog: monitor.SyslogDataSourceArray{
/// 					&monitor.SyslogDataSourceArgs{
/// 						FacilityNames: pulumi.StringArray{
/// 							pulumi.String(monitor.KnownSyslogDataSourceFacilityNamesCron),
/// 						},
/// 						LogLevels: pulumi.StringArray{
/// 							pulumi.String(monitor.KnownSyslogDataSourceLogLevelsDebug),
/// 							pulumi.String(monitor.KnownSyslogDataSourceLogLevelsCritical),
/// 							pulumi.String(monitor.KnownSyslogDataSourceLogLevelsEmergency),
/// 						},
/// 						Name: pulumi.String("cronSyslog"),
/// 						Streams: pulumi.StringArray{
/// 							pulumi.String(monitor.KnownSyslogDataSourceStreams_Microsoft_Syslog),
/// 						},
/// 					},
/// 					&monitor.SyslogDataSourceArgs{
/// 						FacilityNames: pulumi.StringArray{
/// 							pulumi.String(monitor.KnownSyslogDataSourceFacilityNamesSyslog),
/// 						},
/// 						LogLevels: pulumi.StringArray{
/// 							pulumi.String(monitor.KnownSyslogDataSourceLogLevelsAlert),
/// 							pulumi.String(monitor.KnownSyslogDataSourceLogLevelsCritical),
/// 							pulumi.String(monitor.KnownSyslogDataSourceLogLevelsEmergency),
/// 						},
/// 						Name: pulumi.String("syslogBase"),
/// 						Streams: pulumi.StringArray{
/// 							pulumi.String(monitor.KnownSyslogDataSourceStreams_Microsoft_Syslog),
/// 						},
/// 					},
/// 				},
/// 				WindowsEventLogs: monitor.WindowsEventLogDataSourceArray{
/// 					&monitor.WindowsEventLogDataSourceArgs{
/// 						Name: pulumi.String("cloudSecurityTeamEvents"),
/// 						Streams: pulumi.StringArray{
/// 							pulumi.String(monitor.KnownWindowsEventLogDataSourceStreams_Microsoft_WindowsEvent),
/// 						},
/// 						XPathQueries: pulumi.StringArray{
/// 							pulumi.String("Security!"),
/// 						},
/// 					},
/// 					&monitor.WindowsEventLogDataSourceArgs{
/// 						Name: pulumi.String("appTeam1AppEvents"),
/// 						Streams: pulumi.StringArray{
/// 							pulumi.String(monitor.KnownWindowsEventLogDataSourceStreams_Microsoft_WindowsEvent),
/// 						},
/// 						XPathQueries: pulumi.StringArray{
/// 							pulumi.String("System![System[(Level = 1 or Level = 2 or Level = 3)]]"),
/// 							pulumi.String("Application!*[System[(Level = 1 or Level = 2 or Level = 3)]]"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Destinations: &monitor.DataCollectionRuleDestinationsArgs{
/// 				LogAnalytics: monitor.LogAnalyticsDestinationArray{
/// 					&monitor.LogAnalyticsDestinationArgs{
/// 						Name:                pulumi.String("centralWorkspace"),
/// 						WorkspaceResourceId: pulumi.String("/subscriptions/703362b3-f278-4e4b-9179-c76eaf41ffc2/resourceGroups/myResourceGroup/providers/Microsoft.OperationalInsights/workspaces/centralTeamWorkspace"),
/// 					},
/// 				},
/// 			},
/// 			Location:          pulumi.String("eastus"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
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
/// import com.pulumi.azurenative.monitor.DataCollectionRule;
/// import com.pulumi.azurenative.monitor.DataCollectionRuleArgs;
/// import com.pulumi.azurenative.monitor.inputs.DataFlowArgs;
/// import com.pulumi.azurenative.monitor.inputs.DataCollectionRuleDataSourcesArgs;
/// import com.pulumi.azurenative.monitor.inputs.DataCollectionRuleDestinationsArgs;
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
///         var dataCollectionRule = new DataCollectionRule("dataCollectionRule", DataCollectionRuleArgs.builder()
///             .dataCollectionRuleName("myCollectionRule")
///             .dataFlows(DataFlowArgs.builder()
///                 .destinations("centralWorkspace")
///                 .streams(
///                     "Microsoft-Perf",
///                     "Microsoft-Syslog",
///                     "Microsoft-WindowsEvent")
///                 .build())
///             .dataSources(DataCollectionRuleDataSourcesArgs.builder()
///                 .performanceCounters(
///                     PerfCounterDataSourceArgs.builder()
///                         .counterSpecifiers(
///                             "\\Processor(_Total)\\% Processor Time",
///                             "\\Memory\\Committed Bytes",
///                             "\\LogicalDisk(_Total)\\Free Megabytes",
///                             "\\PhysicalDisk(_Total)\\Avg. Disk Queue Length")
///                         .name("cloudTeamCoreCounters")
///                         .samplingFrequencyInSeconds(15)
///                         .streams("Microsoft-Perf")
///                         .build(),
///                     PerfCounterDataSourceArgs.builder()
///                         .counterSpecifiers("\\Process(_Total)\\Thread Count")
///                         .name("appTeamExtraCounters")
///                         .samplingFrequencyInSeconds(30)
///                         .streams("Microsoft-Perf")
///                         .build())
///                 .syslog(
///                     SyslogDataSourceArgs.builder()
///                         .facilityNames("cron")
///                         .logLevels(
///                             "Debug",
///                             "Critical",
///                             "Emergency")
///                         .name("cronSyslog")
///                         .streams("Microsoft-Syslog")
///                         .build(),
///                     SyslogDataSourceArgs.builder()
///                         .facilityNames("syslog")
///                         .logLevels(
///                             "Alert",
///                             "Critical",
///                             "Emergency")
///                         .name("syslogBase")
///                         .streams("Microsoft-Syslog")
///                         .build())
///                 .windowsEventLogs(
///                     WindowsEventLogDataSourceArgs.builder()
///                         .name("cloudSecurityTeamEvents")
///                         .streams("Microsoft-WindowsEvent")
///                         .xPathQueries("Security!")
///                         .build(),
///                     WindowsEventLogDataSourceArgs.builder()
///                         .name("appTeam1AppEvents")
///                         .streams("Microsoft-WindowsEvent")
///                         .xPathQueries(
///                             "System![System[(Level = 1 or Level = 2 or Level = 3)]]",
///                             "Application!*[System[(Level = 1 or Level = 2 or Level = 3)]]")
///                         .build())
///                 .build())
///             .destinations(DataCollectionRuleDestinationsArgs.builder()
///                 .logAnalytics(LogAnalyticsDestinationArgs.builder()
///                     .name("centralWorkspace")
///                     .workspaceResourceId("/subscriptions/703362b3-f278-4e4b-9179-c76eaf41ffc2/resourceGroups/myResourceGroup/providers/Microsoft.OperationalInsights/workspaces/centralTeamWorkspace")
///                     .build())
///                 .build())
///             .location("eastus")
///             .resourceGroupName("myResourceGroup")
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
/// const dataCollectionRule = new azure_native.monitor.DataCollectionRule("dataCollectionRule", {
///     dataCollectionRuleName: "myCollectionRule",
///     dataFlows: [{
///         destinations: ["centralWorkspace"],
///         streams: [
///             azure_native.monitor.KnownDataFlowStreams.Microsoft_Perf,
///             azure_native.monitor.KnownDataFlowStreams.Microsoft_Syslog,
///             azure_native.monitor.KnownDataFlowStreams.Microsoft_WindowsEvent,
///         ],
///     }],
///     dataSources: {
///         performanceCounters: [
///             {
///                 counterSpecifiers: [
///                     "\\Processor(_Total)\\% Processor Time",
///                     "\\Memory\\Committed Bytes",
///                     "\\LogicalDisk(_Total)\\Free Megabytes",
///                     "\\PhysicalDisk(_Total)\\Avg. Disk Queue Length",
///                 ],
///                 name: "cloudTeamCoreCounters",
///                 samplingFrequencyInSeconds: 15,
///                 streams: [azure_native.monitor.KnownPerfCounterDataSourceStreams.Microsoft_Perf],
///             },
///             {
///                 counterSpecifiers: ["\\Process(_Total)\\Thread Count"],
///                 name: "appTeamExtraCounters",
///                 samplingFrequencyInSeconds: 30,
///                 streams: [azure_native.monitor.KnownPerfCounterDataSourceStreams.Microsoft_Perf],
///             },
///         ],
///         syslog: [
///             {
///                 facilityNames: [azure_native.monitor.KnownSyslogDataSourceFacilityNames.Cron],
///                 logLevels: [
///                     azure_native.monitor.KnownSyslogDataSourceLogLevels.Debug,
///                     azure_native.monitor.KnownSyslogDataSourceLogLevels.Critical,
///                     azure_native.monitor.KnownSyslogDataSourceLogLevels.Emergency,
///                 ],
///                 name: "cronSyslog",
///                 streams: [azure_native.monitor.KnownSyslogDataSourceStreams.Microsoft_Syslog],
///             },
///             {
///                 facilityNames: [azure_native.monitor.KnownSyslogDataSourceFacilityNames.Syslog],
///                 logLevels: [
///                     azure_native.monitor.KnownSyslogDataSourceLogLevels.Alert,
///                     azure_native.monitor.KnownSyslogDataSourceLogLevels.Critical,
///                     azure_native.monitor.KnownSyslogDataSourceLogLevels.Emergency,
///                 ],
///                 name: "syslogBase",
///                 streams: [azure_native.monitor.KnownSyslogDataSourceStreams.Microsoft_Syslog],
///             },
///         ],
///         windowsEventLogs: [
///             {
///                 name: "cloudSecurityTeamEvents",
///                 streams: [azure_native.monitor.KnownWindowsEventLogDataSourceStreams.Microsoft_WindowsEvent],
///                 xPathQueries: ["Security!"],
///             },
///             {
///                 name: "appTeam1AppEvents",
///                 streams: [azure_native.monitor.KnownWindowsEventLogDataSourceStreams.Microsoft_WindowsEvent],
///                 xPathQueries: [
///                     "System![System[(Level = 1 or Level = 2 or Level = 3)]]",
///                     "Application!*[System[(Level = 1 or Level = 2 or Level = 3)]]",
///                 ],
///             },
///         ],
///     },
///     destinations: {
///         logAnalytics: [{
///             name: "centralWorkspace",
///             workspaceResourceId: "/subscriptions/703362b3-f278-4e4b-9179-c76eaf41ffc2/resourceGroups/myResourceGroup/providers/Microsoft.OperationalInsights/workspaces/centralTeamWorkspace",
///         }],
///     },
///     location: "eastus",
///     resourceGroupName: "myResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// data_collection_rule = azure_native.monitor.DataCollectionRule("dataCollectionRule",
///     data_collection_rule_name="myCollectionRule",
///     data_flows=[{
///         "destinations": ["centralWorkspace"],
///         "streams": [
///             azure_native.monitor.KnownDataFlowStreams.MICROSOFT_PERF,
///             azure_native.monitor.KnownDataFlowStreams.MICROSOFT_SYSLOG,
///             azure_native.monitor.KnownDataFlowStreams.MICROSOFT_WINDOWS_EVENT,
///         ],
///     }],
///     data_sources={
///         "performance_counters": [
///             {
///                 "counter_specifiers": [
///                     "\\Processor(_Total)\\% Processor Time",
///                     "\\Memory\\Committed Bytes",
///                     "\\LogicalDisk(_Total)\\Free Megabytes",
///                     "\\PhysicalDisk(_Total)\\Avg. Disk Queue Length",
///                 ],
///                 "name": "cloudTeamCoreCounters",
///                 "sampling_frequency_in_seconds": 15,
///                 "streams": [azure_native.monitor.KnownPerfCounterDataSourceStreams.MICROSOFT_PERF],
///             },
///             {
///                 "counter_specifiers": ["\\Process(_Total)\\Thread Count"],
///                 "name": "appTeamExtraCounters",
///                 "sampling_frequency_in_seconds": 30,
///                 "streams": [azure_native.monitor.KnownPerfCounterDataSourceStreams.MICROSOFT_PERF],
///             },
///         ],
///         "syslog": [
///             {
///                 "facility_names": [azure_native.monitor.KnownSyslogDataSourceFacilityNames.CRON],
///                 "log_levels": [
///                     azure_native.monitor.KnownSyslogDataSourceLogLevels.DEBUG,
///                     azure_native.monitor.KnownSyslogDataSourceLogLevels.CRITICAL,
///                     azure_native.monitor.KnownSyslogDataSourceLogLevels.EMERGENCY,
///                 ],
///                 "name": "cronSyslog",
///                 "streams": [azure_native.monitor.KnownSyslogDataSourceStreams.MICROSOFT_SYSLOG],
///             },
///             {
///                 "facility_names": [azure_native.monitor.KnownSyslogDataSourceFacilityNames.SYSLOG],
///                 "log_levels": [
///                     azure_native.monitor.KnownSyslogDataSourceLogLevels.ALERT,
///                     azure_native.monitor.KnownSyslogDataSourceLogLevels.CRITICAL,
///                     azure_native.monitor.KnownSyslogDataSourceLogLevels.EMERGENCY,
///                 ],
///                 "name": "syslogBase",
///                 "streams": [azure_native.monitor.KnownSyslogDataSourceStreams.MICROSOFT_SYSLOG],
///             },
///         ],
///         "windows_event_logs": [
///             {
///                 "name": "cloudSecurityTeamEvents",
///                 "streams": [azure_native.monitor.KnownWindowsEventLogDataSourceStreams.MICROSOFT_WINDOWS_EVENT],
///                 "x_path_queries": ["Security!"],
///             },
///             {
///                 "name": "appTeam1AppEvents",
///                 "streams": [azure_native.monitor.KnownWindowsEventLogDataSourceStreams.MICROSOFT_WINDOWS_EVENT],
///                 "x_path_queries": [
///                     "System![System[(Level = 1 or Level = 2 or Level = 3)]]",
///                     "Application!*[System[(Level = 1 or Level = 2 or Level = 3)]]",
///                 ],
///             },
///         ],
///     },
///     destinations={
///         "log_analytics": [{
///             "name": "centralWorkspace",
///             "workspace_resource_id": "/subscriptions/703362b3-f278-4e4b-9179-c76eaf41ffc2/resourceGroups/myResourceGroup/providers/Microsoft.OperationalInsights/workspaces/centralTeamWorkspace",
///         }],
///     },
///     location="eastus",
///     resource_group_name="myResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   dataCollectionRule:
///     type: azure-native:monitor:DataCollectionRule
///     properties:
///       dataCollectionRuleName: myCollectionRule
///       dataFlows:
///         - destinations:
///             - centralWorkspace
///           streams:
///             - Microsoft-Perf
///             - Microsoft-Syslog
///             - Microsoft-WindowsEvent
///       dataSources:
///         performanceCounters:
///           - counterSpecifiers:
///               - \Processor(_Total)\% Processor Time
///               - \Memory\Committed Bytes
///               - \LogicalDisk(_Total)\Free Megabytes
///               - \PhysicalDisk(_Total)\Avg. Disk Queue Length
///             name: cloudTeamCoreCounters
///             samplingFrequencyInSeconds: 15
///             streams:
///               - Microsoft-Perf
///           - counterSpecifiers:
///               - \Process(_Total)\Thread Count
///             name: appTeamExtraCounters
///             samplingFrequencyInSeconds: 30
///             streams:
///               - Microsoft-Perf
///         syslog:
///           - facilityNames:
///               - cron
///             logLevels:
///               - Debug
///               - Critical
///               - Emergency
///             name: cronSyslog
///             streams:
///               - Microsoft-Syslog
///           - facilityNames:
///               - syslog
///             logLevels:
///               - Alert
///               - Critical
///               - Emergency
///             name: syslogBase
///             streams:
///               - Microsoft-Syslog
///         windowsEventLogs:
///           - name: cloudSecurityTeamEvents
///             streams:
///               - Microsoft-WindowsEvent
///             xPathQueries:
///               - Security!
///           - name: appTeam1AppEvents
///             streams:
///               - Microsoft-WindowsEvent
///             xPathQueries:
///               - System![System[(Level = 1 or Level = 2 or Level = 3)]]
///               - Application!*[System[(Level = 1 or Level = 2 or Level = 3)]]
///       destinations:
///         logAnalytics:
///           - name: centralWorkspace
///             workspaceResourceId: /subscriptions/703362b3-f278-4e4b-9179-c76eaf41ffc2/resourceGroups/myResourceGroup/providers/Microsoft.OperationalInsights/workspaces/centralTeamWorkspace
///       location: eastus
///       resourceGroupName: myResourceGroup
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
/// $ pulumi import azure-native:monitor:DataCollectionRule myCollectionRule /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Insights/dataCollectionRules/{dataCollectionRuleName}
/// ```
class DataCollectionRule extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The resource ID of the data collection endpoint that this rule can be used with.
  late final pulumi.Output<String?> dataCollectionEndpointId;

  /// The specification of data flows.
  late final pulumi.Output<List<Map<String, dynamic>>?> dataFlows;

  /// The specification of data sources.
  /// This property is optional and can be omitted if the rule is meant to be used via direct calls to the provisioned endpoint.
  late final pulumi.Output<DataCollectionRuleResponseDataSources?> dataSources;

  /// Description of the data collection rule.
  late final pulumi.Output<String?> description;

  /// The specification of destinations.
  late final pulumi.Output<DataCollectionRuleResponseDestinations?>
  destinations;

  /// Resource entity tag (ETag).
  late final pulumi.Output<String> etag;

  /// Managed service identity of the resource.
  late final pulumi.Output<DataCollectionRuleResourceResponseIdentity?>
  identity;

  /// The immutable ID of this data collection rule. This property is READ-ONLY.
  late final pulumi.Output<String> immutableId;

  /// The kind of the resource.
  late final pulumi.Output<String?> kind;

  /// The geo-location where the resource lives.
  late final pulumi.Output<String> location;

  /// Metadata about the resource
  late final pulumi.Output<DataCollectionRuleResponseMetadata> metadata;

  /// The name of the resource.
  late final pulumi.Output<String> name;

  /// The resource provisioning state.
  late final pulumi.Output<String> provisioningState;

  /// Declaration of custom streams used in this rule.
  late final pulumi.Output<Map<String, StreamDeclarationResponse>?>
  streamDeclarations;

  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<DataCollectionRuleResourceResponseSystemData>
  systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [DataCollectionRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DataCollectionRule]. {@macro pulumi_monitor_data_collection_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DataCollectionRule(
    String name, {
    DataCollectionRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:monitor:DataCollectionRule',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    dataCollectionEndpointId = registerOutput<String?>(
      'dataCollectionEndpointId',
    );
    dataFlows = registerOutput<List<Map<String, dynamic>>?>('dataFlows');
    dataSources = registerOutput<DataCollectionRuleResponseDataSources?>(
      'dataSources',
    );
    description = registerOutput<String?>('description');
    destinations = registerOutput<DataCollectionRuleResponseDestinations?>(
      'destinations',
    );
    etag = registerOutput<String>('etag');
    identity = registerOutput<DataCollectionRuleResourceResponseIdentity?>(
      'identity',
    );
    immutableId = registerOutput<String>('immutableId');
    kind = registerOutput<String?>('kind');
    location = registerOutput<String>('location');
    metadata = registerOutput<DataCollectionRuleResponseMetadata>('metadata');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    streamDeclarations =
        registerOutput<Map<String, StreamDeclarationResponse>?>(
          'streamDeclarations',
        );
    systemData = registerOutput<DataCollectionRuleResourceResponseSystemData>(
      'systemData',
    );
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}

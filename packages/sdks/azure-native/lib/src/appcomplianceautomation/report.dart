import 'package:pulumi/pulumi.dart' as pulumi;
import 'report_args.dart';
import 'report_compliance_status_response.dart';
import 'storage_info_response.dart';
import 'system_data_response.dart';

/// A class represent an AppComplianceAutomation report resource.
///
/// Uses Azure REST API version 2024-06-27. In version 2.x of the Azure Native provider, it used API version 2022-11-16-preview.
///
/// Other available API versions: 2022-11-16-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native appcomplianceautomation [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Report_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var report = new AzureNative.AppComplianceAutomation.Report("report", new()
///     {
///         OfferGuid = "00000000-0000-0000-0000-000000000001,00000000-0000-0000-0000-000000000002",
///         ReportName = "testReportName",
///         Resources = new[]
///         {
///             new AzureNative.AppComplianceAutomation.Inputs.ResourceMetadataArgs
///             {
///                 ResourceId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/Microsoft.SignalRService/SignalR/mySignalRService",
///                 ResourceOrigin = AzureNative.AppComplianceAutomation.ResourceOrigin.Azure,
///                 ResourceType = "Microsoft.SignalRService/SignalR",
///             },
///         },
///         StorageInfo = new AzureNative.AppComplianceAutomation.Inputs.StorageInfoArgs
///         {
///             AccountName = "testStorageAccount",
///             Location = "East US",
///             ResourceGroup = "testResourceGroup",
///             SubscriptionId = "00000000-0000-0000-0000-000000000000",
///         },
///         TimeZone = "GMT Standard Time",
///         TriggerTime = "2022-03-04T05:00:00.000Z",
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
/// 	appcomplianceautomation "github.com/pulumi/pulumi-azure-native-sdk/appcomplianceautomation/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := appcomplianceautomation.NewReport(ctx, "report", &appcomplianceautomation.ReportArgs{
/// 			OfferGuid:  pulumi.String("00000000-0000-0000-0000-000000000001,00000000-0000-0000-0000-000000000002"),
/// 			ReportName: pulumi.String("testReportName"),
/// 			Resources: appcomplianceautomation.ResourceMetadataArray{
/// 				&appcomplianceautomation.ResourceMetadataArgs{
/// 					ResourceId:     pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/Microsoft.SignalRService/SignalR/mySignalRService"),
/// 					ResourceOrigin: pulumi.String(appcomplianceautomation.ResourceOriginAzure),
/// 					ResourceType:   pulumi.String("Microsoft.SignalRService/SignalR"),
/// 				},
/// 			},
/// 			StorageInfo: &appcomplianceautomation.StorageInfoArgs{
/// 				AccountName:    pulumi.String("testStorageAccount"),
/// 				Location:       pulumi.String("East US"),
/// 				ResourceGroup:  pulumi.String("testResourceGroup"),
/// 				SubscriptionId: pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 			},
/// 			TimeZone:    pulumi.String("GMT Standard Time"),
/// 			TriggerTime: pulumi.String("2022-03-04T05:00:00.000Z"),
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
/// import com.pulumi.azurenative.appcomplianceautomation.Report;
/// import com.pulumi.azurenative.appcomplianceautomation.ReportArgs;
/// import com.pulumi.azurenative.appcomplianceautomation.inputs.ResourceMetadataArgs;
/// import com.pulumi.azurenative.appcomplianceautomation.inputs.StorageInfoArgs;
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
///         var report = new Report("report", ReportArgs.builder()
///             .offerGuid("00000000-0000-0000-0000-000000000001,00000000-0000-0000-0000-000000000002")
///             .reportName("testReportName")
///             .resources(ResourceMetadataArgs.builder()
///                 .resourceId("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/Microsoft.SignalRService/SignalR/mySignalRService")
///                 .resourceOrigin("Azure")
///                 .resourceType("Microsoft.SignalRService/SignalR")
///                 .build())
///             .storageInfo(StorageInfoArgs.builder()
///                 .accountName("testStorageAccount")
///                 .location("East US")
///                 .resourceGroup("testResourceGroup")
///                 .subscriptionId("00000000-0000-0000-0000-000000000000")
///                 .build())
///             .timeZone("GMT Standard Time")
///             .triggerTime("2022-03-04T05:00:00.000Z")
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
/// const report = new azure_native.appcomplianceautomation.Report("report", {
///     offerGuid: "00000000-0000-0000-0000-000000000001,00000000-0000-0000-0000-000000000002",
///     reportName: "testReportName",
///     resources: [{
///         resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/Microsoft.SignalRService/SignalR/mySignalRService",
///         resourceOrigin: azure_native.appcomplianceautomation.ResourceOrigin.Azure,
///         resourceType: "Microsoft.SignalRService/SignalR",
///     }],
///     storageInfo: {
///         accountName: "testStorageAccount",
///         location: "East US",
///         resourceGroup: "testResourceGroup",
///         subscriptionId: "00000000-0000-0000-0000-000000000000",
///     },
///     timeZone: "GMT Standard Time",
///     triggerTime: "2022-03-04T05:00:00.000Z",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// report = azure_native.appcomplianceautomation.Report("report",
///     offer_guid="00000000-0000-0000-0000-000000000001,00000000-0000-0000-0000-000000000002",
///     report_name="testReportName",
///     resources=[{
///         "resource_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/Microsoft.SignalRService/SignalR/mySignalRService",
///         "resource_origin": azure_native.appcomplianceautomation.ResourceOrigin.AZURE,
///         "resource_type": "Microsoft.SignalRService/SignalR",
///     }],
///     storage_info={
///         "account_name": "testStorageAccount",
///         "location": "East US",
///         "resource_group": "testResourceGroup",
///         "subscription_id": "00000000-0000-0000-0000-000000000000",
///     },
///     time_zone="GMT Standard Time",
///     trigger_time="2022-03-04T05:00:00.000Z")
///
/// ```
///
/// ```yaml
/// resources:
///   report:
///     type: azure-native:appcomplianceautomation:Report
///     properties:
///       offerGuid: 00000000-0000-0000-0000-000000000001,00000000-0000-0000-0000-000000000002
///       reportName: testReportName
///       resources:
///         - resourceId: /subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/Microsoft.SignalRService/SignalR/mySignalRService
///           resourceOrigin: Azure
///           resourceType: Microsoft.SignalRService/SignalR
///       storageInfo:
///         accountName: testStorageAccount
///         location: East US
///         resourceGroup: testResourceGroup
///         subscriptionId: 00000000-0000-0000-0000-000000000000
///       timeZone: GMT Standard Time
///       triggerTime: 2022-03-04T05:00:00.000Z
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
/// $ pulumi import azure-native:appcomplianceautomation:Report testReportName /providers/Microsoft.AppComplianceAutomation/reports/{reportName}
/// ```
class Report extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// List of synchronized certification records.
  late final pulumi.Output<List<Map<String, dynamic>>> certRecords;

  /// Report compliance status.
  late final pulumi.Output<ReportComplianceStatusResponse> complianceStatus;

  /// List of report error codes.
  late final pulumi.Output<List<String>> errors;

  /// Report last collection trigger time.
  late final pulumi.Output<String> lastTriggerTime;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Report next collection trigger time.
  late final pulumi.Output<String> nextTriggerTime;

  /// A list of comma-separated offerGuids indicates a series of offerGuids that map to the report. For example, "00000000-0000-0000-0000-000000000001,00000000-0000-0000-0000-000000000002" and "00000000-0000-0000-0000-000000000003".
  late final pulumi.Output<String?> offerGuid;

  /// Azure lifecycle management
  late final pulumi.Output<String> provisioningState;

  /// List of resource data.
  late final pulumi.Output<List<Map<String, dynamic>>> resources;

  /// Report status.
  late final pulumi.Output<String> status;

  /// The information of 'bring your own storage' binding to the report
  late final pulumi.Output<StorageInfoResponse?> storageInfo;

  /// List of subscription Ids.
  late final pulumi.Output<List<String>> subscriptions;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Report's tenant id.
  late final pulumi.Output<String> tenantId;

  /// Report collection trigger time's time zone, the available list can be obtained by executing "Get-TimeZone -ListAvailable" in PowerShell.
  /// An example of valid timezone id is "Pacific Standard Time".
  late final pulumi.Output<String> timeZone;

  /// Report collection trigger time.
  late final pulumi.Output<String> triggerTime;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Report].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Report]. {@macro pulumi_appcomplianceautomation_report_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Report(String name, {ReportArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'azure-native:appcomplianceautomation:Report',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    certRecords = registerOutput<List<Map<String, dynamic>>>('certRecords');
    complianceStatus = registerOutput<ReportComplianceStatusResponse>(
      'complianceStatus',
    );
    errors = registerOutput<List<String>>('errors');
    lastTriggerTime = registerOutput<String>('lastTriggerTime');
    this.name = registerOutput<String>('name');
    nextTriggerTime = registerOutput<String>('nextTriggerTime');
    offerGuid = registerOutput<String?>('offerGuid');
    provisioningState = registerOutput<String>('provisioningState');
    resources = registerOutput<List<Map<String, dynamic>>>('resources');
    status = registerOutput<String>('status');
    storageInfo = registerOutput<StorageInfoResponse?>('storageInfo');
    subscriptions = registerOutput<List<String>>('subscriptions');
    systemData = registerOutput<SystemDataResponse>('systemData');
    tenantId = registerOutput<String>('tenantId');
    timeZone = registerOutput<String>('timeZone');
    triggerTime = registerOutput<String>('triggerTime');
    type = registerOutput<String>('type');
  }
}

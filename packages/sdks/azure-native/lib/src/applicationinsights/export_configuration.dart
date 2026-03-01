import 'package:pulumi/pulumi.dart' as pulumi;
import 'export_configuration_args.dart';

/// Properties that define a Continuous Export configuration.
///
/// Uses Azure REST API version 2015-05-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ExportConfigurationUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exportConfiguration = new AzureNative.ApplicationInsights.ExportConfiguration("exportConfiguration", new()
///     {
///         DestinationAccountId = "/subscriptions/subid/resourceGroups/my-resource-group/providers/Microsoft.ClassicStorage/storageAccounts/mystorageblob",
///         DestinationAddress = "https://mystorageblob.blob.core.windows.net/fchentest?sv=2015-04-05&sr=c&sig=token",
///         DestinationStorageLocationId = "eastus",
///         DestinationStorageSubscriptionId = "subid",
///         DestinationType = "Blob",
///         ExportId = "uGOoki0jQsyEs3IdQ83Q4QsNr4=",
///         IsEnabled = "true",
///         NotificationQueueEnabled = "false",
///         NotificationQueueUri = "",
///         RecordTypes = "Requests, Event, Exceptions, Metrics, PageViews, PageViewPerformance, Rdd, PerformanceCounters, Availability",
///         ResourceGroupName = "my-resource-group",
///         ResourceName = "my-component",
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
/// 	applicationinsights "github.com/pulumi/pulumi-azure-native-sdk/applicationinsights/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := applicationinsights.NewExportConfiguration(ctx, "exportConfiguration", &applicationinsights.ExportConfigurationArgs{
/// 			DestinationAccountId:             pulumi.String("/subscriptions/subid/resourceGroups/my-resource-group/providers/Microsoft.ClassicStorage/storageAccounts/mystorageblob"),
/// 			DestinationAddress:               pulumi.String("https://mystorageblob.blob.core.windows.net/fchentest?sv=2015-04-05&sr=c&sig=token"),
/// 			DestinationStorageLocationId:     pulumi.String("eastus"),
/// 			DestinationStorageSubscriptionId: pulumi.String("subid"),
/// 			DestinationType:                  pulumi.String("Blob"),
/// 			ExportId:                         pulumi.String("uGOoki0jQsyEs3IdQ83Q4QsNr4="),
/// 			IsEnabled:                        pulumi.String("true"),
/// 			NotificationQueueEnabled:         pulumi.String("false"),
/// 			NotificationQueueUri:             pulumi.String(""),
/// 			RecordTypes:                      pulumi.String("Requests, Event, Exceptions, Metrics, PageViews, PageViewPerformance, Rdd, PerformanceCounters, Availability"),
/// 			ResourceGroupName:                pulumi.String("my-resource-group"),
/// 			ResourceName:                     pulumi.String("my-component"),
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
/// import com.pulumi.azurenative.applicationinsights.ExportConfiguration;
/// import com.pulumi.azurenative.applicationinsights.ExportConfigurationArgs;
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
///         var exportConfiguration = new ExportConfiguration("exportConfiguration", ExportConfigurationArgs.builder()
///             .destinationAccountId("/subscriptions/subid/resourceGroups/my-resource-group/providers/Microsoft.ClassicStorage/storageAccounts/mystorageblob")
///             .destinationAddress("https://mystorageblob.blob.core.windows.net/fchentest?sv=2015-04-05&sr=c&sig=token")
///             .destinationStorageLocationId("eastus")
///             .destinationStorageSubscriptionId("subid")
///             .destinationType("Blob")
///             .exportId("uGOoki0jQsyEs3IdQ83Q4QsNr4=")
///             .isEnabled("true")
///             .notificationQueueEnabled("false")
///             .notificationQueueUri("")
///             .recordTypes("Requests, Event, Exceptions, Metrics, PageViews, PageViewPerformance, Rdd, PerformanceCounters, Availability")
///             .resourceGroupName("my-resource-group")
///             .resourceName("my-component")
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
/// const exportConfiguration = new azure_native.applicationinsights.ExportConfiguration("exportConfiguration", {
///     destinationAccountId: "/subscriptions/subid/resourceGroups/my-resource-group/providers/Microsoft.ClassicStorage/storageAccounts/mystorageblob",
///     destinationAddress: "https://mystorageblob.blob.core.windows.net/fchentest?sv=2015-04-05&sr=c&sig=token",
///     destinationStorageLocationId: "eastus",
///     destinationStorageSubscriptionId: "subid",
///     destinationType: "Blob",
///     exportId: "uGOoki0jQsyEs3IdQ83Q4QsNr4=",
///     isEnabled: "true",
///     notificationQueueEnabled: "false",
///     notificationQueueUri: "",
///     recordTypes: "Requests, Event, Exceptions, Metrics, PageViews, PageViewPerformance, Rdd, PerformanceCounters, Availability",
///     resourceGroupName: "my-resource-group",
///     resourceName: "my-component",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// export_configuration = azure_native.applicationinsights.ExportConfiguration("exportConfiguration",
///     destination_account_id="/subscriptions/subid/resourceGroups/my-resource-group/providers/Microsoft.ClassicStorage/storageAccounts/mystorageblob",
///     destination_address="https://mystorageblob.blob.core.windows.net/fchentest?sv=2015-04-05&sr=c&sig=token",
///     destination_storage_location_id="eastus",
///     destination_storage_subscription_id="subid",
///     destination_type="Blob",
///     export_id="uGOoki0jQsyEs3IdQ83Q4QsNr4=",
///     is_enabled="true",
///     notification_queue_enabled="false",
///     notification_queue_uri="",
///     record_types="Requests, Event, Exceptions, Metrics, PageViews, PageViewPerformance, Rdd, PerformanceCounters, Availability",
///     resource_group_name="my-resource-group",
///     resource_name_="my-component")
///
/// ```
///
/// ```yaml
/// resources:
///   exportConfiguration:
///     type: azure-native:applicationinsights:ExportConfiguration
///     properties:
///       destinationAccountId: /subscriptions/subid/resourceGroups/my-resource-group/providers/Microsoft.ClassicStorage/storageAccounts/mystorageblob
///       destinationAddress: https://mystorageblob.blob.core.windows.net/fchentest?sv=2015-04-05&sr=c&sig=token
///       destinationStorageLocationId: eastus
///       destinationStorageSubscriptionId: subid
///       destinationType: Blob
///       exportId: uGOoki0jQsyEs3IdQ83Q4QsNr4=
///       isEnabled: 'true'
///       notificationQueueEnabled: 'false'
///       notificationQueueUri: ""
///       recordTypes: Requests, Event, Exceptions, Metrics, PageViews, PageViewPerformance, Rdd, PerformanceCounters, Availability
///       resourceGroupName: my-resource-group
///       resourceName: my-component
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
/// $ pulumi import azure-native:applicationinsights:ExportConfiguration myresource1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Insights/components/{resourceName}/exportconfiguration/{exportId}
/// ```
class ExportConfiguration extends pulumi.CustomResource {
  /// The name of the Application Insights component.
  late final pulumi.Output<String> applicationName;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the destination storage container.
  late final pulumi.Output<String> containerName;
  /// The name of destination account.
  late final pulumi.Output<String> destinationAccountId;
  /// The destination account location ID.
  late final pulumi.Output<String> destinationStorageLocationId;
  /// The destination storage account subscription ID.
  late final pulumi.Output<String> destinationStorageSubscriptionId;
  /// The destination type.
  late final pulumi.Output<String> destinationType;
  /// The unique ID of the export configuration inside an Application Insights component. It is auto generated when the Continuous Export configuration is created.
  late final pulumi.Output<String> exportId;
  /// This indicates current Continuous Export configuration status. The possible values are 'Preparing', 'Success', 'Failure'.
  late final pulumi.Output<String> exportStatus;
  /// The instrumentation key of the Application Insights component.
  late final pulumi.Output<String> instrumentationKey;
  /// This will be 'true' if the Continuous Export configuration is enabled, otherwise it will be 'false'.
  late final pulumi.Output<String> isUserEnabled;
  /// The last time the Continuous Export configuration started failing.
  late final pulumi.Output<String> lastGapTime;
  /// The last time data was successfully delivered to the destination storage container for this Continuous Export configuration.
  late final pulumi.Output<String> lastSuccessTime;
  /// Last time the Continuous Export configuration was updated.
  late final pulumi.Output<String> lastUserUpdate;
  /// Deprecated
  late final pulumi.Output<String?> notificationQueueEnabled;
  /// This is the reason the Continuous Export configuration started failing. It can be 'AzureStorageNotFound' or 'AzureStorageAccessDenied'.
  late final pulumi.Output<String> permanentErrorReason;
  /// This comma separated list of document types that will be exported. The possible values include 'Requests', 'Event', 'Exceptions', 'Metrics', 'PageViews', 'PageViewPerformance', 'Rdd', 'PerformanceCounters', 'Availability', 'Messages'.
  late final pulumi.Output<String?> recordTypes;
  /// The resource group of the Application Insights component.
  late final pulumi.Output<String> resourceGroup;
  /// The name of the destination storage account.
  late final pulumi.Output<String> storageName;
  /// The subscription of the Application Insights component.
  late final pulumi.Output<String> subscriptionId;

  /// Creates a new [ExportConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ExportConfiguration]. {@macro pulumi_applicationinsights_export_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ExportConfiguration(
    String name, {
    ExportConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:applicationinsights:ExportConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.applicationName = registerOutput<String>('applicationName');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.containerName = registerOutput<String>('containerName');
    this.destinationAccountId = registerOutput<String>('destinationAccountId');
    this.destinationStorageLocationId = registerOutput<String>('destinationStorageLocationId');
    this.destinationStorageSubscriptionId = registerOutput<String>('destinationStorageSubscriptionId');
    this.destinationType = registerOutput<String>('destinationType');
    this.exportId = registerOutput<String>('exportId');
    this.exportStatus = registerOutput<String>('exportStatus');
    this.instrumentationKey = registerOutput<String>('instrumentationKey');
    this.isUserEnabled = registerOutput<String>('isUserEnabled');
    this.lastGapTime = registerOutput<String>('lastGapTime');
    this.lastSuccessTime = registerOutput<String>('lastSuccessTime');
    this.lastUserUpdate = registerOutput<String>('lastUserUpdate');
    this.notificationQueueEnabled = registerOutput<String?>('notificationQueueEnabled');
    this.permanentErrorReason = registerOutput<String>('permanentErrorReason');
    this.recordTypes = registerOutput<String?>('recordTypes');
    this.resourceGroup = registerOutput<String>('resourceGroup');
    this.storageName = registerOutput<String>('storageName');
    this.subscriptionId = registerOutput<String>('subscriptionId');
  }
}

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subscription_cost_management_export_args.dart';
import 'subscription_cost_management_export_export_data_options.dart';
import 'subscription_cost_management_export_export_data_storage_location.dart';

/// Manages a Cost Management Export for a Subscription.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.core.getSubscription({});
/// const exampleResourceGroup = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "example",
///     resourceGroupName: exampleResourceGroup.name,
///     location: exampleResourceGroup.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
/// });
/// const exampleContainer = new azure.storage.Container("example", {
///     name: "examplecontainer",
///     storageAccountName: exampleAccount.name,
/// });
/// const exampleSubscriptionCostManagementExport = new azure.core.SubscriptionCostManagementExport("example", {
///     name: "example",
///     subscriptionId: example.then(example => example.id),
///     recurrenceType: "Monthly",
///     recurrencePeriodStartDate: "2020-08-18T00:00:00Z",
///     recurrencePeriodEndDate: "2020-09-18T00:00:00Z",
///     fileFormat: "Csv",
///     exportDataStorageLocation: {
///         containerId: exampleContainer.id,
///         rootFolderPath: "/root/updated",
///     },
///     exportDataOptions: {
///         type: "Usage",
///         timeFrame: "WeekToDate",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.get_subscription()
/// example_resource_group = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_account = azure.storage.Account("example",
///     name="example",
///     resource_group_name=example_resource_group.name,
///     location=example_resource_group.location,
///     account_tier="Standard",
///     account_replication_type="LRS")
/// example_container = azure.storage.Container("example",
///     name="examplecontainer",
///     storage_account_name=example_account.name)
/// example_subscription_cost_management_export = azure.core.SubscriptionCostManagementExport("example",
///     name="example",
///     subscription_id=example.id,
///     recurrence_type="Monthly",
///     recurrence_period_start_date="2020-08-18T00:00:00Z",
///     recurrence_period_end_date="2020-09-18T00:00:00Z",
///     file_format="Csv",
///     export_data_storage_location={
///         "container_id": example_container.id,
///         "root_folder_path": "/root/updated",
///     },
///     export_data_options={
///         "type": "Usage",
///         "time_frame": "WeekToDate",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Core.GetSubscription.Invoke();
///
///     var exampleResourceGroup = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = exampleResourceGroup.Name,
///         Location = exampleResourceGroup.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///     });
///
///     var exampleContainer = new Azure.Storage.Container("example", new()
///     {
///         Name = "examplecontainer",
///         StorageAccountName = exampleAccount.Name,
///     });
///
///     var exampleSubscriptionCostManagementExport = new Azure.Core.SubscriptionCostManagementExport("example", new()
///     {
///         Name = "example",
///         SubscriptionId = example.Apply(getSubscriptionResult => getSubscriptionResult.Id),
///         RecurrenceType = "Monthly",
///         RecurrencePeriodStartDate = "2020-08-18T00:00:00Z",
///         RecurrencePeriodEndDate = "2020-09-18T00:00:00Z",
///         FileFormat = "Csv",
///         ExportDataStorageLocation = new Azure.Core.Inputs.SubscriptionCostManagementExportExportDataStorageLocationArgs
///         {
///             ContainerId = exampleContainer.Id,
///             RootFolderPath = "/root/updated",
///         },
///         ExportDataOptions = new Azure.Core.Inputs.SubscriptionCostManagementExportExportDataOptionsArgs
///         {
///             Type = "Usage",
///             TimeFrame = "WeekToDate",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.LookupSubscription(ctx, &core.LookupSubscriptionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleResourceGroup, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("example"),
/// 			ResourceGroupName:      exampleResourceGroup.Name,
/// 			Location:               exampleResourceGroup.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleContainer, err := storage.NewContainer(ctx, "example", &storage.ContainerArgs{
/// 			Name:               pulumi.String("examplecontainer"),
/// 			StorageAccountName: exampleAccount.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = core.NewSubscriptionCostManagementExport(ctx, "example", &core.SubscriptionCostManagementExportArgs{
/// 			Name:                      pulumi.String("example"),
/// 			SubscriptionId:            pulumi.String(example.Id),
/// 			RecurrenceType:            pulumi.String("Monthly"),
/// 			RecurrencePeriodStartDate: pulumi.String("2020-08-18T00:00:00Z"),
/// 			RecurrencePeriodEndDate:   pulumi.String("2020-09-18T00:00:00Z"),
/// 			FileFormat:                pulumi.String("Csv"),
/// 			ExportDataStorageLocation: &core.SubscriptionCostManagementExportExportDataStorageLocationArgs{
/// 				ContainerId:    exampleContainer.ID(),
/// 				RootFolderPath: pulumi.String("/root/updated"),
/// 			},
/// 			ExportDataOptions: &core.SubscriptionCostManagementExportExportDataOptionsArgs{
/// 				Type:      pulumi.String("Usage"),
/// 				TimeFrame: pulumi.String("WeekToDate"),
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
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.core.inputs.GetSubscriptionArgs;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.storage.Container;
/// import com.pulumi.azure.storage.ContainerArgs;
/// import com.pulumi.azure.core.SubscriptionCostManagementExport;
/// import com.pulumi.azure.core.SubscriptionCostManagementExportArgs;
/// import com.pulumi.azure.core.inputs.SubscriptionCostManagementExportExportDataStorageLocationArgs;
/// import com.pulumi.azure.core.inputs.SubscriptionCostManagementExportExportDataOptionsArgs;
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
///         final var example = CoreFunctions.getSubscription(GetSubscriptionArgs.builder()
///             .build());
///
///         var exampleResourceGroup = new ResourceGroup("exampleResourceGroup", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("example")
///             .resourceGroupName(exampleResourceGroup.name())
///             .location(exampleResourceGroup.location())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .build());
///
///         var exampleContainer = new Container("exampleContainer", ContainerArgs.builder()
///             .name("examplecontainer")
///             .storageAccountName(exampleAccount.name())
///             .build());
///
///         var exampleSubscriptionCostManagementExport = new SubscriptionCostManagementExport("exampleSubscriptionCostManagementExport", SubscriptionCostManagementExportArgs.builder()
///             .name("example")
///             .subscriptionId(example.id())
///             .recurrenceType("Monthly")
///             .recurrencePeriodStartDate("2020-08-18T00:00:00Z")
///             .recurrencePeriodEndDate("2020-09-18T00:00:00Z")
///             .fileFormat("Csv")
///             .exportDataStorageLocation(SubscriptionCostManagementExportExportDataStorageLocationArgs.builder()
///                 .containerId(exampleContainer.id())
///                 .rootFolderPath("/root/updated")
///                 .build())
///             .exportDataOptions(SubscriptionCostManagementExportExportDataOptionsArgs.builder()
///                 .type("Usage")
///                 .timeFrame("WeekToDate")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleResourceGroup:
///     type: azure:core:ResourceGroup
///     name: example
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${exampleResourceGroup.name}
///       location: ${exampleResourceGroup.location}
///       accountTier: Standard
///       accountReplicationType: LRS
///   exampleContainer:
///     type: azure:storage:Container
///     name: example
///     properties:
///       name: examplecontainer
///       storageAccountName: ${exampleAccount.name}
///   exampleSubscriptionCostManagementExport:
///     type: azure:core:SubscriptionCostManagementExport
///     name: example
///     properties:
///       name: example
///       subscriptionId: ${example.id}
///       recurrenceType: Monthly
///       recurrencePeriodStartDate: 2020-08-18T00:00:00Z
///       recurrencePeriodEndDate: 2020-09-18T00:00:00Z
///       fileFormat: Csv
///       exportDataStorageLocation:
///         containerId: ${exampleContainer.id}
///         rootFolderPath: /root/updated
///       exportDataOptions:
///         type: Usage
///         timeFrame: WeekToDate
/// variables:
///   example:
///     fn::invoke:
///       function: azure:core:getSubscription
///       arguments: {}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.CostManagement` - 2023-08-01
///
/// ## Import
///
/// Subscription Cost Management Exports can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:core/subscriptionCostManagementExport:SubscriptionCostManagementExport example /subscriptions/12345678-1234-9876-4563-123456789012/providers/Microsoft.CostManagement/exports/export1
/// ```
class SubscriptionCostManagementExport extends pulumi.CustomResource {
  /// Is the cost management export active? Default is `true`.
  late final pulumi.Output<bool?> active;
  /// A `export_data_options` block as defined below.
  late final pulumi.Output<SubscriptionCostManagementExportExportDataOptions> exportDataOptions;
  /// A `export_data_storage_location` block as defined below.
  late final pulumi.Output<SubscriptionCostManagementExportExportDataStorageLocation> exportDataStorageLocation;
  /// Format for export. Valid values are `Csv` only. Default is `Csv`.
  late final pulumi.Output<String?> fileFormat;
  /// Specifies the name of the Cost Management Export. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The date the export will stop capturing information.
  late final pulumi.Output<String> recurrencePeriodEndDate;
  /// The date the export will start capturing information.
  late final pulumi.Output<String> recurrencePeriodStartDate;
  /// How often the requested information will be exported. Valid values include `Annually`, `Daily`, `Monthly`, `Weekly`.
  late final pulumi.Output<String> recurrenceType;
  /// The id of the subscription on which to create an export. Changing this forces a new resource to be created.
  late final pulumi.Output<String> subscriptionId;

  /// Creates a new [SubscriptionCostManagementExport].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SubscriptionCostManagementExport]. {@macro pulumi_core_subscription_cost_management_export_subscription_cost_management_export_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SubscriptionCostManagementExport(
    String name, {
    SubscriptionCostManagementExportArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:core/subscriptionCostManagementExport:SubscriptionCostManagementExport',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.active = registerOutput<bool?>('active');
    this.exportDataOptions = registerOutput<SubscriptionCostManagementExportExportDataOptions>('exportDataOptions');
    this.exportDataStorageLocation = registerOutput<SubscriptionCostManagementExportExportDataStorageLocation>('exportDataStorageLocation');
    this.fileFormat = registerOutput<String?>('fileFormat');
    this.name = registerOutput<String>('name');
    this.recurrencePeriodEndDate = registerOutput<String>('recurrencePeriodEndDate');
    this.recurrencePeriodStartDate = registerOutput<String>('recurrencePeriodStartDate');
    this.recurrenceType = registerOutput<String>('recurrenceType');
    this.subscriptionId = registerOutput<String>('subscriptionId');
  }
}

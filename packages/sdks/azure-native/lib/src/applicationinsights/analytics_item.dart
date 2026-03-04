import 'package:pulumi/pulumi.dart' as pulumi;
import 'analytics_item_args.dart';
import 'application_insights_component_analytics_item_properties_response.dart';

/// Properties that define an Analytics item that is associated to an Application Insights component.
///
/// Uses Azure REST API version 2015-05-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### AnalyticsItemPut
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var analyticsItem = new AzureNative.ApplicationInsights.AnalyticsItem("analyticsItem", new()
///     {
///         Content = @"let newExceptionsTimeRange = 1d;
/// let timeRangeToCheckBefore = 7d;
/// exceptions
/// | where timestamp < ago(timeRangeToCheckBefore)
/// | summarize count() by problemId
/// | join kind= rightanti (
/// exceptions
/// | where timestamp >= ago(newExceptionsTimeRange)
/// | extend stack = tostring(details[0].rawStack)
/// | summarize count(), dcount(user_AuthenticatedId), min(timestamp), max(timestamp), any(stack) by problemId
/// ) on problemId
/// | order by  count_ desc
/// ",
///         Name = "Exceptions - New in the last 24 hours",
///         ResourceGroupName = "my-resource-group",
///         ResourceName = "my-component",
///         Scope = AzureNative.ApplicationInsights.ItemScope.Shared,
///         ScopePath = "analyticsItems",
///         Type = AzureNative.ApplicationInsights.ItemType.Query,
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
/// 		_, err := applicationinsights.NewAnalyticsItem(ctx, "analyticsItem", &applicationinsights.AnalyticsItemArgs{
/// 			Content: pulumi.String(`let newExceptionsTimeRange = 1d;
/// let timeRangeToCheckBefore = 7d;
/// exceptions
/// | where timestamp < ago(timeRangeToCheckBefore)
/// | summarize count() by problemId
/// | join kind= rightanti (
/// exceptions
/// | where timestamp >= ago(newExceptionsTimeRange)
/// | extend stack = tostring(details[0].rawStack)
/// | summarize count(), dcount(user_AuthenticatedId), min(timestamp), max(timestamp), any(stack) by problemId
/// ) on problemId
/// | order by  count_ desc
/// `),
/// 			Name:              pulumi.String("Exceptions - New in the last 24 hours"),
/// 			ResourceGroupName: pulumi.String("my-resource-group"),
/// 			ResourceName:      pulumi.String("my-component"),
/// 			Scope:             pulumi.String(applicationinsights.ItemScopeShared),
/// 			ScopePath:         pulumi.String("analyticsItems"),
/// 			Type:              pulumi.String(applicationinsights.ItemTypeQuery),
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
/// import com.pulumi.azurenative.applicationinsights.AnalyticsItem;
/// import com.pulumi.azurenative.applicationinsights.AnalyticsItemArgs;
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
///         var analyticsItem = new AnalyticsItem("analyticsItem", AnalyticsItemArgs.builder()
///             .content("""
/// let newExceptionsTimeRange = 1d;
/// let timeRangeToCheckBefore = 7d;
/// exceptions
/// | where timestamp < ago(timeRangeToCheckBefore)
/// | summarize count() by problemId
/// | join kind= rightanti (
/// exceptions
/// | where timestamp >= ago(newExceptionsTimeRange)
/// | extend stack = tostring(details[0].rawStack)
/// | summarize count(), dcount(user_AuthenticatedId), min(timestamp), max(timestamp), any(stack) by problemId
/// ) on problemId
/// | order by  count_ desc
///             """)
///             .name("Exceptions - New in the last 24 hours")
///             .resourceGroupName("my-resource-group")
///             .resourceName("my-component")
///             .scope("shared")
///             .scopePath("analyticsItems")
///             .type("query")
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
/// const analyticsItem = new azure_native.applicationinsights.AnalyticsItem("analyticsItem", {
///     content: `let newExceptionsTimeRange = 1d;
/// let timeRangeToCheckBefore = 7d;
/// exceptions
/// | where timestamp < ago(timeRangeToCheckBefore)
/// | summarize count() by problemId
/// | join kind= rightanti (
/// exceptions
/// | where timestamp >= ago(newExceptionsTimeRange)
/// | extend stack = tostring(details[0].rawStack)
/// | summarize count(), dcount(user_AuthenticatedId), min(timestamp), max(timestamp), any(stack) by problemId
/// ) on problemId
/// | order by  count_ desc
/// `,
///     name: "Exceptions - New in the last 24 hours",
///     resourceGroupName: "my-resource-group",
///     resourceName: "my-component",
///     scope: azure_native.applicationinsights.ItemScope.Shared,
///     scopePath: "analyticsItems",
///     type: azure_native.applicationinsights.ItemType.Query,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// analytics_item = azure_native.applicationinsights.AnalyticsItem("analyticsItem",
///     content="""let newExceptionsTimeRange = 1d;
/// let timeRangeToCheckBefore = 7d;
/// exceptions
/// | where timestamp < ago(timeRangeToCheckBefore)
/// | summarize count() by problemId
/// | join kind= rightanti (
/// exceptions
/// | where timestamp >= ago(newExceptionsTimeRange)
/// | extend stack = tostring(details[0].rawStack)
/// | summarize count(), dcount(user_AuthenticatedId), min(timestamp), max(timestamp), any(stack) by problemId
/// ) on problemId
/// | order by  count_ desc
/// """,
///     name="Exceptions - New in the last 24 hours",
///     resource_group_name="my-resource-group",
///     resource_name_="my-component",
///     scope=azure_native.applicationinsights.ItemScope.SHARED,
///     scope_path="analyticsItems",
///     type=azure_native.applicationinsights.ItemType.QUERY)
///
/// ```
///
/// ```yaml
/// resources:
///   analyticsItem:
///     type: azure-native:applicationinsights:AnalyticsItem
///     properties:
///       content: "let newExceptionsTimeRange = 1d;\nlet timeRangeToCheckBefore = 7d;\nexceptions\n| where timestamp < ago(timeRangeToCheckBefore)\n| summarize count() by problemId\n| join kind= rightanti (\nexceptions\n| where timestamp >= ago(newExceptionsTimeRange)\n| extend stack = tostring(details[0].rawStack)\n| summarize count(), dcount(user_AuthenticatedId), min(timestamp), max(timestamp), any(stack) by problemId  \n) on problemId \n| order by  count_ desc\n"
///       name: Exceptions - New in the last 24 hours
///       resourceGroupName: my-resource-group
///       resourceName: my-component
///       scope: shared
///       scopePath: analyticsItems
///       type: query
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
/// $ pulumi import azure-native:applicationinsights:AnalyticsItem myresource1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/microsoft.insights/components/{resourceName}/{scopePath}/item
/// ```
class AnalyticsItem extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The content of this item
  late final pulumi.Output<String?> content;

  /// The user-defined name of the item.
  late final pulumi.Output<String?> name;

  /// A set of properties that can be defined in the context of a specific item type. Each type may have its own properties.
  late final pulumi.Output<
    ApplicationInsightsComponentAnalyticsItemPropertiesResponse
  >
  properties;

  /// Enum indicating if this item definition is owned by a specific user or is shared between all users with access to the Application Insights component.
  late final pulumi.Output<String?> scope;

  /// Date and time in UTC when this item was created.
  late final pulumi.Output<String> timeCreated;

  /// Date and time in UTC of the last modification that was made to this item.
  late final pulumi.Output<String> timeModified;

  /// Enum indicating the type of the Analytics item.
  late final pulumi.Output<String?> type;

  /// This instance's version of the data model. This can change as new features are added.
  late final pulumi.Output<String> version;

  /// Creates a new [AnalyticsItem].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AnalyticsItem]. {@macro pulumi_applicationinsights_analytics_item_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AnalyticsItem(
    String name, {
    AnalyticsItemArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:applicationinsights:AnalyticsItem',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    content = registerOutput<String?>('content');
    this.name = registerOutput<String?>('name');
    properties =
        registerOutput<
          ApplicationInsightsComponentAnalyticsItemPropertiesResponse
        >('properties');
    scope = registerOutput<String?>('scope');
    timeCreated = registerOutput<String>('timeCreated');
    timeModified = registerOutput<String>('timeModified');
    type = registerOutput<String?>('type');
    version = registerOutput<String>('version');
  }
}

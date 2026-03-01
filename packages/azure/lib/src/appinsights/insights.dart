import 'package:pulumi/pulumi.dart' as pulumi;
import 'insights_args.dart';

/// Manages an Application Insights component.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "tf-test",
///     location: "West Europe",
/// });
/// const exampleInsights = new azure.appinsights.Insights("example", {
///     name: "tf-test-appinsights",
///     location: example.location,
///     resourceGroupName: example.name,
///     applicationType: "web",
/// });
/// export const instrumentationKey = exampleInsights.instrumentationKey;
/// export const appId = exampleInsights.appId;
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="tf-test",
///     location="West Europe")
/// example_insights = azure.appinsights.Insights("example",
///     name="tf-test-appinsights",
///     location=example.location,
///     resource_group_name=example.name,
///     application_type="web")
/// pulumi.export("instrumentationKey", example_insights.instrumentation_key)
/// pulumi.export("appId", example_insights.app_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "tf-test",
///         Location = "West Europe",
///     });
///
///     var exampleInsights = new Azure.AppInsights.Insights("example", new()
///     {
///         Name = "tf-test-appinsights",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         ApplicationType = "web",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["instrumentationKey"] = exampleInsights.InstrumentationKey,
///         ["appId"] = exampleInsights.AppId,
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/appinsights"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("tf-test"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleInsights, err := appinsights.NewInsights(ctx, "example", &appinsights.InsightsArgs{
/// 			Name:              pulumi.String("tf-test-appinsights"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			ApplicationType:   pulumi.String("web"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("instrumentationKey", exampleInsights.InstrumentationKey)
/// 		ctx.Export("appId", exampleInsights.AppId)
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
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.appinsights.Insights;
/// import com.pulumi.azure.appinsights.InsightsArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("tf-test")
///             .location("West Europe")
///             .build());
///
///         var exampleInsights = new Insights("exampleInsights", InsightsArgs.builder()
///             .name("tf-test-appinsights")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .applicationType("web")
///             .build());
///
///         ctx.export("instrumentationKey", exampleInsights.instrumentationKey());
///         ctx.export("appId", exampleInsights.appId());
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: tf-test
///       location: West Europe
///   exampleInsights:
///     type: azure:appinsights:Insights
///     name: example
///     properties:
///       name: tf-test-appinsights
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       applicationType: web
/// outputs:
///   instrumentationKey: ${exampleInsights.instrumentationKey}
///   appId: ${exampleInsights.appId}
/// ```
///
///
/// ### Workspace Mode
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "tf-test",
///     location: "West Europe",
/// });
/// const exampleAnalyticsWorkspace = new azure.operationalinsights.AnalyticsWorkspace("example", {
///     name: "workspace-test",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: "PerGB2018",
///     retentionInDays: 30,
/// });
/// const exampleInsights = new azure.appinsights.Insights("example", {
///     name: "tf-test-appinsights",
///     location: example.location,
///     resourceGroupName: example.name,
///     workspaceId: exampleAnalyticsWorkspace.id,
///     applicationType: "web",
/// });
/// export const instrumentationKey = exampleInsights.instrumentationKey;
/// export const appId = exampleInsights.appId;
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="tf-test",
///     location="West Europe")
/// example_analytics_workspace = azure.operationalinsights.AnalyticsWorkspace("example",
///     name="workspace-test",
///     location=example.location,
///     resource_group_name=example.name,
///     sku="PerGB2018",
///     retention_in_days=30)
/// example_insights = azure.appinsights.Insights("example",
///     name="tf-test-appinsights",
///     location=example.location,
///     resource_group_name=example.name,
///     workspace_id=example_analytics_workspace.id,
///     application_type="web")
/// pulumi.export("instrumentationKey", example_insights.instrumentation_key)
/// pulumi.export("appId", example_insights.app_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "tf-test",
///         Location = "West Europe",
///     });
///
///     var exampleAnalyticsWorkspace = new Azure.OperationalInsights.AnalyticsWorkspace("example", new()
///     {
///         Name = "workspace-test",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = "PerGB2018",
///         RetentionInDays = 30,
///     });
///
///     var exampleInsights = new Azure.AppInsights.Insights("example", new()
///     {
///         Name = "tf-test-appinsights",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         WorkspaceId = exampleAnalyticsWorkspace.Id,
///         ApplicationType = "web",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["instrumentationKey"] = exampleInsights.InstrumentationKey,
///         ["appId"] = exampleInsights.AppId,
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/appinsights"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/operationalinsights"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("tf-test"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAnalyticsWorkspace, err := operationalinsights.NewAnalyticsWorkspace(ctx, "example", &operationalinsights.AnalyticsWorkspaceArgs{
/// 			Name:              pulumi.String("workspace-test"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Sku:               pulumi.String("PerGB2018"),
/// 			RetentionInDays:   pulumi.Int(30),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleInsights, err := appinsights.NewInsights(ctx, "example", &appinsights.InsightsArgs{
/// 			Name:              pulumi.String("tf-test-appinsights"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			WorkspaceId:       exampleAnalyticsWorkspace.ID(),
/// 			ApplicationType:   pulumi.String("web"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("instrumentationKey", exampleInsights.InstrumentationKey)
/// 		ctx.Export("appId", exampleInsights.AppId)
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
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.operationalinsights.AnalyticsWorkspace;
/// import com.pulumi.azure.operationalinsights.AnalyticsWorkspaceArgs;
/// import com.pulumi.azure.appinsights.Insights;
/// import com.pulumi.azure.appinsights.InsightsArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("tf-test")
///             .location("West Europe")
///             .build());
///
///         var exampleAnalyticsWorkspace = new AnalyticsWorkspace("exampleAnalyticsWorkspace", AnalyticsWorkspaceArgs.builder()
///             .name("workspace-test")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku("PerGB2018")
///             .retentionInDays(30)
///             .build());
///
///         var exampleInsights = new Insights("exampleInsights", InsightsArgs.builder()
///             .name("tf-test-appinsights")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .workspaceId(exampleAnalyticsWorkspace.id())
///             .applicationType("web")
///             .build());
///
///         ctx.export("instrumentationKey", exampleInsights.instrumentationKey());
///         ctx.export("appId", exampleInsights.appId());
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: tf-test
///       location: West Europe
///   exampleAnalyticsWorkspace:
///     type: azure:operationalinsights:AnalyticsWorkspace
///     name: example
///     properties:
///       name: workspace-test
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku: PerGB2018
///       retentionInDays: 30
///   exampleInsights:
///     type: azure:appinsights:Insights
///     name: example
///     properties:
///       name: tf-test-appinsights
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       workspaceId: ${exampleAnalyticsWorkspace.id}
///       applicationType: web
/// outputs:
///   instrumentationKey: ${exampleInsights.instrumentationKey}
///   appId: ${exampleInsights.appId}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.AlertsManagement` - 2019-06-01
///
/// * `Microsoft.Insights` - 2020-02-02, 2015-05-01
///
/// ## Import
///
/// Application Insights instances can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:appinsights/insights:Insights instance1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Insights/components/instance1
/// ```
class Insights extends pulumi.CustomResource {
  /// The App ID associated with this Application Insights component.
  late final pulumi.Output<String> appId;
  /// Specifies the type of Application Insights to create. Valid values are `ios` for _iOS_, `java` for _Java web_, `MobileCenter` for _App Center_, `Node.JS` for _Node.js_, `other` for _General_, `phone` for _Windows Phone_, `store` for _Windows Store_ and `web` for _ASP.NET_. Please note these values are case sensitive; unmatched values are treated as _ASP.NET_ by Azure. Changing this forces a new resource to be created.
  late final pulumi.Output<String> applicationType;
  /// The Connection String for this Application Insights component. (Sensitive)
  late final pulumi.Output<String> connectionString;
  /// Specifies the Application Insights component daily data volume cap in GB. Defaults to `100`.
  late final pulumi.Output<double?> dailyDataCapInGb;
  /// Specifies if a notification email will be sent when the daily data volume cap is met. Defaults to `false`.
  late final pulumi.Output<bool?> dailyDataCapNotificationsDisabled;
  /// By default the real client IP is masked as `0.0.0.0` in the logs. Use this argument to disable masking and log the real client IP. Defaults to `false`.
  late final pulumi.Output<bool?> disableIpMasking;
  /// Should the Application Insights component force users to create their own storage account for profiling? Defaults to `false`.
  late final pulumi.Output<bool?> forceCustomerStorageForProfiler;
  /// The Instrumentation Key for this Application Insights component. (Sensitive)
  late final pulumi.Output<String> instrumentationKey;
  /// Should the Application Insights component support ingestion over the Public Internet? Defaults to `true`.
  late final pulumi.Output<bool?> internetIngestionEnabled;
  /// Should the Application Insights component support querying over the Public Internet? Defaults to `true`.
  late final pulumi.Output<bool?> internetQueryEnabled;
  /// Disable Non-Azure AD based Auth. Defaults to `false`.
  late final pulumi.Output<bool?> localAuthenticationDisabled;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// Specifies the name of the Application Insights component. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The name of the resource group in which to create the Application Insights component. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// Specifies the retention period in days. Possible values are `30`, `60`, `90`, `120`, `180`, `270`, `365`, `550` or `730`. Defaults to `90`.
  late final pulumi.Output<int?> retentionInDays;
  /// Specifies the percentage of the data produced by the monitored application that is sampled for Application Insights telemetry. Defaults to `100`.
  late final pulumi.Output<double?> samplingPercentage;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Specifies the id of a log analytics workspace resource.
  ///
  /// > **Note:** `workspace_id` cannot be removed after set. More details can be found at [Migrate to workspace-based Application Insights resources](https://docs.microsoft.com/azure/azure-monitor/app/convert-classic-resource#migration-process). If `workspace_id` is not specified but you encounter a diff, this might indicate a Microsoft initiated automatic migration from classic resources to workspace-based resources. If this is the case, please update `workspace_id` in the config file to the new value.
  late final pulumi.Output<String> workspaceId;

  /// Creates a new [Insights].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Insights]. {@macro pulumi_appinsights_insights_insights_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Insights(
    String name, {
    InsightsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appinsights/insights:Insights',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.appId = registerOutput<String>('appId');
    this.applicationType = registerOutput<String>('applicationType');
    this.connectionString = registerOutput<String>('connectionString');
    this.dailyDataCapInGb = registerOutput<double?>('dailyDataCapInGb');
    this.dailyDataCapNotificationsDisabled = registerOutput<bool?>('dailyDataCapNotificationsDisabled');
    this.disableIpMasking = registerOutput<bool?>('disableIpMasking');
    this.forceCustomerStorageForProfiler = registerOutput<bool?>('forceCustomerStorageForProfiler');
    this.instrumentationKey = registerOutput<String>('instrumentationKey');
    this.internetIngestionEnabled = registerOutput<bool?>('internetIngestionEnabled');
    this.internetQueryEnabled = registerOutput<bool?>('internetQueryEnabled');
    this.localAuthenticationDisabled = registerOutput<bool?>('localAuthenticationDisabled');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.retentionInDays = registerOutput<int?>('retentionInDays');
    this.samplingPercentage = registerOutput<double?>('samplingPercentage');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.workspaceId = registerOutput<String>('workspaceId');
  }
}

import 'package:pulumi/pulumi.dart' as pulumi;
import 'component_args.dart';
import 'private_link_scoped_resource_response.dart';

/// An Application Insights component definition.
///
/// Uses Azure REST API version 2020-02-02.
///
/// Other available API versions: 2015-05-01, 2018-05-01-preview, 2020-02-02-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native applicationinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ComponentCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var component = new AzureNative.ApplicationInsights.Component("component", new()
///     {
///         ApplicationType = AzureNative.ApplicationInsights.ApplicationType.Web,
///         FlowType = AzureNative.ApplicationInsights.FlowType.Bluefield,
///         Kind = "web",
///         Location = "South Central US",
///         RequestSource = AzureNative.ApplicationInsights.RequestSource.Rest,
///         ResourceGroupName = "my-resource-group",
///         ResourceName = "my-component",
///         WorkspaceResourceId = "/subscriptions/subid/resourcegroups/my-resource-group/providers/microsoft.operationalinsights/workspaces/my-workspace",
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
/// 		_, err := applicationinsights.NewComponent(ctx, "component", &applicationinsights.ComponentArgs{
/// 			ApplicationType:     pulumi.String(applicationinsights.ApplicationTypeWeb),
/// 			FlowType:            pulumi.String(applicationinsights.FlowTypeBluefield),
/// 			Kind:                pulumi.String("web"),
/// 			Location:            pulumi.String("South Central US"),
/// 			RequestSource:       pulumi.String(applicationinsights.RequestSourceRest),
/// 			ResourceGroupName:   pulumi.String("my-resource-group"),
/// 			ResourceName:        pulumi.String("my-component"),
/// 			WorkspaceResourceId: pulumi.String("/subscriptions/subid/resourcegroups/my-resource-group/providers/microsoft.operationalinsights/workspaces/my-workspace"),
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
/// import com.pulumi.azurenative.applicationinsights.Component;
/// import com.pulumi.azurenative.applicationinsights.ComponentArgs;
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
///         var component = new Component("component", ComponentArgs.builder()
///             .applicationType("web")
///             .flowType("Bluefield")
///             .kind("web")
///             .location("South Central US")
///             .requestSource("rest")
///             .resourceGroupName("my-resource-group")
///             .resourceName("my-component")
///             .workspaceResourceId("/subscriptions/subid/resourcegroups/my-resource-group/providers/microsoft.operationalinsights/workspaces/my-workspace")
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
/// const component = new azure_native.applicationinsights.Component("component", {
///     applicationType: azure_native.applicationinsights.ApplicationType.Web,
///     flowType: azure_native.applicationinsights.FlowType.Bluefield,
///     kind: "web",
///     location: "South Central US",
///     requestSource: azure_native.applicationinsights.RequestSource.Rest,
///     resourceGroupName: "my-resource-group",
///     resourceName: "my-component",
///     workspaceResourceId: "/subscriptions/subid/resourcegroups/my-resource-group/providers/microsoft.operationalinsights/workspaces/my-workspace",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// component = azure_native.applicationinsights.Component("component",
///     application_type=azure_native.applicationinsights.ApplicationType.WEB,
///     flow_type=azure_native.applicationinsights.FlowType.BLUEFIELD,
///     kind="web",
///     location="South Central US",
///     request_source=azure_native.applicationinsights.RequestSource.REST,
///     resource_group_name="my-resource-group",
///     resource_name_="my-component",
///     workspace_resource_id="/subscriptions/subid/resourcegroups/my-resource-group/providers/microsoft.operationalinsights/workspaces/my-workspace")
///
/// ```
///
/// ```yaml
/// resources:
///   component:
///     type: azure-native:applicationinsights:Component
///     properties:
///       applicationType: web
///       flowType: Bluefield
///       kind: web
///       location: South Central US
///       requestSource: rest
///       resourceGroupName: my-resource-group
///       resourceName: my-component
///       workspaceResourceId: /subscriptions/subid/resourcegroups/my-resource-group/providers/microsoft.operationalinsights/workspaces/my-workspace
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### ComponentUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var component = new AzureNative.ApplicationInsights.Component("component", new()
///     {
///         Kind = "web",
///         Location = "South Central US",
///         ResourceGroupName = "my-resource-group",
///         ResourceName = "my-component",
///         Tags =
///         {
///             { "ApplicationGatewayType", "Internal-Only" },
///             { "BillingEntity", "Self" },
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
/// 	applicationinsights "github.com/pulumi/pulumi-azure-native-sdk/applicationinsights/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := applicationinsights.NewComponent(ctx, "component", &applicationinsights.ComponentArgs{
/// 			Kind:              pulumi.String("web"),
/// 			Location:          pulumi.String("South Central US"),
/// 			ResourceGroupName: pulumi.String("my-resource-group"),
/// 			ResourceName:      pulumi.String("my-component"),
/// 			Tags: pulumi.StringMap{
/// 				"ApplicationGatewayType": pulumi.String("Internal-Only"),
/// 				"BillingEntity":          pulumi.String("Self"),
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
/// import com.pulumi.azurenative.applicationinsights.Component;
/// import com.pulumi.azurenative.applicationinsights.ComponentArgs;
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
///         var component = new Component("component", ComponentArgs.builder()
///             .kind("web")
///             .location("South Central US")
///             .resourceGroupName("my-resource-group")
///             .resourceName("my-component")
///             .tags(Map.ofEntries(
///                 Map.entry("ApplicationGatewayType", "Internal-Only"),
///                 Map.entry("BillingEntity", "Self")
///             ))
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
/// const component = new azure_native.applicationinsights.Component("component", {
///     kind: "web",
///     location: "South Central US",
///     resourceGroupName: "my-resource-group",
///     resourceName: "my-component",
///     tags: {
///         ApplicationGatewayType: "Internal-Only",
///         BillingEntity: "Self",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// component = azure_native.applicationinsights.Component("component",
///     kind="web",
///     location="South Central US",
///     resource_group_name="my-resource-group",
///     resource_name_="my-component",
///     tags={
///         "ApplicationGatewayType": "Internal-Only",
///         "BillingEntity": "Self",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   component:
///     type: azure-native:applicationinsights:Component
///     properties:
///       kind: web
///       location: South Central US
///       resourceGroupName: my-resource-group
///       resourceName: my-component
///       tags:
///         ApplicationGatewayType: Internal-Only
///         BillingEntity: Self
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
/// $ pulumi import azure-native:applicationinsights:Component my-component /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Insights/components/{resourceName}
/// ```
class Component extends pulumi.CustomResource {
  /// Application Insights Unique ID for your Application.
  late final pulumi.Output<String> appId;
  /// The unique ID of your application. This field mirrors the 'Name' field and cannot be changed.
  late final pulumi.Output<String> applicationId;
  /// Type of application being monitored.
  late final pulumi.Output<String> applicationType;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Application Insights component connection string.
  late final pulumi.Output<String> connectionString;
  /// Creation Date for the Application Insights component, in ISO 8601 format.
  late final pulumi.Output<String> creationDate;
  /// Disable IP masking.
  late final pulumi.Output<bool?> disableIpMasking;
  /// Disable Non-AAD based Auth.
  late final pulumi.Output<bool?> disableLocalAuth;
  /// Resource etag
  late final pulumi.Output<String?> etag;
  /// Used by the Application Insights system to determine what kind of flow this component was created by. This is to be set to 'Bluefield' when creating/updating a component via the REST API.
  late final pulumi.Output<String?> flowType;
  /// Force users to create their own storage account for profiler and debugger.
  late final pulumi.Output<bool?> forceCustomerStorageForProfiler;
  /// The unique application ID created when a new application is added to HockeyApp, used for communications with HockeyApp.
  late final pulumi.Output<String?> hockeyAppId;
  /// Token used to authenticate communications with between Application Insights and HockeyApp.
  late final pulumi.Output<String> hockeyAppToken;
  /// Purge data immediately after 30 days.
  late final pulumi.Output<bool?> immediatePurgeDataOn30Days;
  /// Indicates the flow of the ingestion.
  late final pulumi.Output<String?> ingestionMode;
  /// Application Insights Instrumentation key. A read-only value that applications can use to identify the destination for all telemetry sent to Azure Application Insights. This value will be supplied upon construction of each new Application Insights component.
  late final pulumi.Output<String> instrumentationKey;
  /// The kind of application that this component refers to, used to customize UI. This value is a freeform string, values should typically be one of the following: web, ios, other, store, java, phone.
  late final pulumi.Output<String> kind;
  /// The date which the component got migrated to LA, in ISO 8601 format.
  late final pulumi.Output<String> laMigrationDate;
  /// Resource location
  late final pulumi.Output<String> location;
  /// Azure resource name
  late final pulumi.Output<String> name;
  /// List of linked private link scope resources.
  late final pulumi.Output<List<PrivateLinkScopedResourceResponse>> privateLinkScopedResources;
  /// Current state of this component: whether or not is has been provisioned within the resource group it is defined. Users cannot change this value but are able to read from it. Values will include Succeeded, Deploying, Canceled, and Failed.
  late final pulumi.Output<String> provisioningState;
  /// The network access type for accessing Application Insights ingestion.
  late final pulumi.Output<String?> publicNetworkAccessForIngestion;
  /// The network access type for accessing Application Insights query.
  late final pulumi.Output<String?> publicNetworkAccessForQuery;
  /// Describes what tool created this Application Insights component. Customers using this API should set this to the default 'rest'.
  late final pulumi.Output<String?> requestSource;
  /// Retention period in days.
  late final pulumi.Output<int?> retentionInDays;
  /// Percentage of the data produced by the application being monitored that is being sampled for Application Insights telemetry.
  late final pulumi.Output<double?> samplingPercentage;
  /// Resource tags
  late final pulumi.Output<Map<String, String>?> tags;
  /// Azure Tenant Id.
  late final pulumi.Output<String> tenantId;
  /// Azure resource type
  late final pulumi.Output<String> type;
  /// Resource Id of the log analytics workspace which the data will be ingested to. This property is required to create an application with this API version. Applications from older versions will not have this property.
  late final pulumi.Output<String?> workspaceResourceId;

  /// Creates a new [Component].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Component]. {@macro pulumi_applicationinsights_component_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Component(
    String name, {
    ComponentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:applicationinsights:Component',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.appId = registerOutput<String>('appId');
    this.applicationId = registerOutput<String>('applicationId');
    this.applicationType = registerOutput<String>('applicationType');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.connectionString = registerOutput<String>('connectionString');
    this.creationDate = registerOutput<String>('creationDate');
    this.disableIpMasking = registerOutput<bool?>('disableIpMasking');
    this.disableLocalAuth = registerOutput<bool?>('disableLocalAuth');
    this.etag = registerOutput<String?>('etag');
    this.flowType = registerOutput<String?>('flowType');
    this.forceCustomerStorageForProfiler = registerOutput<bool?>('forceCustomerStorageForProfiler');
    this.hockeyAppId = registerOutput<String?>('hockeyAppId');
    this.hockeyAppToken = registerOutput<String>('hockeyAppToken');
    this.immediatePurgeDataOn30Days = registerOutput<bool?>('immediatePurgeDataOn30Days');
    this.ingestionMode = registerOutput<String?>('ingestionMode');
    this.instrumentationKey = registerOutput<String>('instrumentationKey');
    this.kind = registerOutput<String>('kind');
    this.laMigrationDate = registerOutput<String>('laMigrationDate');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.privateLinkScopedResources = registerOutput<List<PrivateLinkScopedResourceResponse>>('privateLinkScopedResources');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.publicNetworkAccessForIngestion = registerOutput<String?>('publicNetworkAccessForIngestion');
    this.publicNetworkAccessForQuery = registerOutput<String?>('publicNetworkAccessForQuery');
    this.requestSource = registerOutput<String?>('requestSource');
    this.retentionInDays = registerOutput<int?>('retentionInDays');
    this.samplingPercentage = registerOutput<double?>('samplingPercentage');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tenantId = registerOutput<String>('tenantId');
    this.type = registerOutput<String>('type');
    this.workspaceResourceId = registerOutput<String?>('workspaceResourceId');
  }
}

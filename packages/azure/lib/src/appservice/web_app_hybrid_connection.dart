import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_app_hybrid_connection_args.dart';

/// Manages a Web App Hybrid Connection.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-rg",
///     location: "West Europe",
/// });
/// const exampleServicePlan = new azure.appservice.ServicePlan("example", {
///     name: "example-plan",
///     location: example.location,
///     resourceGroupName: example.name,
///     osType: "Windows",
///     skuName: "S1",
/// });
/// const exampleNamespace = new azure.relay.Namespace("example", {
///     name: "example-relay",
///     location: example.location,
///     resourceGroupName: example.name,
///     skuName: "Standard",
/// });
/// const exampleHybridConnection = new azure.relay.HybridConnection("example", {
///     name: "examplerhc1",
///     resourceGroupName: example.name,
///     relayNamespaceName: exampleNamespace.name,
/// });
/// const exampleWindowsWebApp = new azure.appservice.WindowsWebApp("example", {
///     name: "example-web-app",
///     location: example.location,
///     resourceGroupName: example.name,
///     servicePlanId: exampleServicePlan.id,
///     siteConfig: {},
/// });
/// const exampleWebAppHybridConnection = new azure.appservice.WebAppHybridConnection("example", {
///     webAppId: exampleWindowsWebApp.id,
///     relayId: exampleHybridConnection.id,
///     hostname: "myhostname.example",
///     port: 8081,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-rg",
///     location="West Europe")
/// example_service_plan = azure.appservice.ServicePlan("example",
///     name="example-plan",
///     location=example.location,
///     resource_group_name=example.name,
///     os_type="Windows",
///     sku_name="S1")
/// example_namespace = azure.relay.Namespace("example",
///     name="example-relay",
///     location=example.location,
///     resource_group_name=example.name,
///     sku_name="Standard")
/// example_hybrid_connection = azure.relay.HybridConnection("example",
///     name="examplerhc1",
///     resource_group_name=example.name,
///     relay_namespace_name=example_namespace.name)
/// example_windows_web_app = azure.appservice.WindowsWebApp("example",
///     name="example-web-app",
///     location=example.location,
///     resource_group_name=example.name,
///     service_plan_id=example_service_plan.id,
///     site_config={})
/// example_web_app_hybrid_connection = azure.appservice.WebAppHybridConnection("example",
///     web_app_id=example_windows_web_app.id,
///     relay_id=example_hybrid_connection.id,
///     hostname="myhostname.example",
///     port=8081)
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
///         Name = "example-rg",
///         Location = "West Europe",
///     });
///
///     var exampleServicePlan = new Azure.AppService.ServicePlan("example", new()
///     {
///         Name = "example-plan",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         OsType = "Windows",
///         SkuName = "S1",
///     });
///
///     var exampleNamespace = new Azure.Relay.Namespace("example", new()
///     {
///         Name = "example-relay",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         SkuName = "Standard",
///     });
///
///     var exampleHybridConnection = new Azure.Relay.HybridConnection("example", new()
///     {
///         Name = "examplerhc1",
///         ResourceGroupName = example.Name,
///         RelayNamespaceName = exampleNamespace.Name,
///     });
///
///     var exampleWindowsWebApp = new Azure.AppService.WindowsWebApp("example", new()
///     {
///         Name = "example-web-app",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         ServicePlanId = exampleServicePlan.Id,
///         SiteConfig = null,
///     });
///
///     var exampleWebAppHybridConnection = new Azure.AppService.WebAppHybridConnection("example", new()
///     {
///         WebAppId = exampleWindowsWebApp.Id,
///         RelayId = exampleHybridConnection.Id,
///         Hostname = "myhostname.example",
///         Port = 8081,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/appservice"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/relay"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-rg"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleServicePlan, err := appservice.NewServicePlan(ctx, "example", &appservice.ServicePlanArgs{
/// 			Name:              pulumi.String("example-plan"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			OsType:            pulumi.String("Windows"),
/// 			SkuName:           pulumi.String("S1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleNamespace, err := relay.NewNamespace(ctx, "example", &relay.NamespaceArgs{
/// 			Name:              pulumi.String("example-relay"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			SkuName:           pulumi.String("Standard"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleHybridConnection, err := relay.NewHybridConnection(ctx, "example", &relay.HybridConnectionArgs{
/// 			Name:               pulumi.String("examplerhc1"),
/// 			ResourceGroupName:  example.Name,
/// 			RelayNamespaceName: exampleNamespace.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleWindowsWebApp, err := appservice.NewWindowsWebApp(ctx, "example", &appservice.WindowsWebAppArgs{
/// 			Name:              pulumi.String("example-web-app"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			ServicePlanId:     exampleServicePlan.ID(),
/// 			SiteConfig:        &appservice.WindowsWebAppSiteConfigArgs{},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appservice.NewWebAppHybridConnection(ctx, "example", &appservice.WebAppHybridConnectionArgs{
/// 			WebAppId: exampleWindowsWebApp.ID(),
/// 			RelayId:  exampleHybridConnection.ID(),
/// 			Hostname: pulumi.String("myhostname.example"),
/// 			Port:     pulumi.Int(8081),
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
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.appservice.ServicePlan;
/// import com.pulumi.azure.appservice.ServicePlanArgs;
/// import com.pulumi.azure.relay.Namespace;
/// import com.pulumi.azure.relay.NamespaceArgs;
/// import com.pulumi.azure.relay.HybridConnection;
/// import com.pulumi.azure.relay.HybridConnectionArgs;
/// import com.pulumi.azure.appservice.WindowsWebApp;
/// import com.pulumi.azure.appservice.WindowsWebAppArgs;
/// import com.pulumi.azure.appservice.inputs.WindowsWebAppSiteConfigArgs;
/// import com.pulumi.azure.appservice.WebAppHybridConnection;
/// import com.pulumi.azure.appservice.WebAppHybridConnectionArgs;
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
///             .name("example-rg")
///             .location("West Europe")
///             .build());
///
///         var exampleServicePlan = new ServicePlan("exampleServicePlan", ServicePlanArgs.builder()
///             .name("example-plan")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .osType("Windows")
///             .skuName("S1")
///             .build());
///
///         var exampleNamespace = new Namespace("exampleNamespace", NamespaceArgs.builder()
///             .name("example-relay")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .skuName("Standard")
///             .build());
///
///         var exampleHybridConnection = new HybridConnection("exampleHybridConnection", HybridConnectionArgs.builder()
///             .name("examplerhc1")
///             .resourceGroupName(example.name())
///             .relayNamespaceName(exampleNamespace.name())
///             .build());
///
///         var exampleWindowsWebApp = new WindowsWebApp("exampleWindowsWebApp", WindowsWebAppArgs.builder()
///             .name("example-web-app")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .servicePlanId(exampleServicePlan.id())
///             .siteConfig(WindowsWebAppSiteConfigArgs.builder()
///                 .build())
///             .build());
///
///         var exampleWebAppHybridConnection = new WebAppHybridConnection("exampleWebAppHybridConnection", WebAppHybridConnectionArgs.builder()
///             .webAppId(exampleWindowsWebApp.id())
///             .relayId(exampleHybridConnection.id())
///             .hostname("myhostname.example")
///             .port(8081)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-rg
///       location: West Europe
///   exampleServicePlan:
///     type: azure:appservice:ServicePlan
///     name: example
///     properties:
///       name: example-plan
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       osType: Windows
///       skuName: S1
///   exampleNamespace:
///     type: azure:relay:Namespace
///     name: example
///     properties:
///       name: example-relay
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       skuName: Standard
///   exampleHybridConnection:
///     type: azure:relay:HybridConnection
///     name: example
///     properties:
///       name: examplerhc1
///       resourceGroupName: ${example.name}
///       relayNamespaceName: ${exampleNamespace.name}
///   exampleWindowsWebApp:
///     type: azure:appservice:WindowsWebApp
///     name: example
///     properties:
///       name: example-web-app
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       servicePlanId: ${exampleServicePlan.id}
///       siteConfig: {}
///   exampleWebAppHybridConnection:
///     type: azure:appservice:WebAppHybridConnection
///     name: example
///     properties:
///       webAppId: ${exampleWindowsWebApp.id}
///       relayId: ${exampleHybridConnection.id}
///       hostname: myhostname.example
///       port: 8081
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Relay` - 2021-11-01
///
/// * `Microsoft.Web` - 2023-12-01
///
/// ## Import
///
/// a Web App Hybrid Connection can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:appservice/webAppHybridConnection:WebAppHybridConnection example "/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/resGroup1/providers/Microsoft.Web/sites/site1/hybridConnectionNamespaces/hybridConnectionNamespace1/relays/relay1"
/// ```
class WebAppHybridConnection extends pulumi.CustomResource {
  /// The hostname of the endpoint.
  late final pulumi.Output<String> hostname;
  /// The name of the Relay Namespace.
  late final pulumi.Output<String> namespaceName;
  /// The port to use for the endpoint.
  late final pulumi.Output<int> port;
  /// The ID of the Relay Hybrid Connection to use. Changing this forces a new resource to be created.
  late final pulumi.Output<String> relayId;
  /// The name of the Relay in use.
  late final pulumi.Output<String> relayName;
  /// The name of the Relay key with `Send` permission to use. Defaults to `RootManageSharedAccessKey`
  late final pulumi.Output<String?> sendKeyName;
  /// The Primary Access Key for the `send_key_name`
  late final pulumi.Output<String> sendKeyValue;
  /// The Service Bus Namespace.
  late final pulumi.Output<String> serviceBusNamespace;
  /// The suffix for the endpoint.
  late final pulumi.Output<String> serviceBusSuffix;
  /// The ID of the Web App for this Hybrid Connection. Changing this forces a new resource to be created.
  late final pulumi.Output<String> webAppId;

  /// Creates a new [WebAppHybridConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WebAppHybridConnection]. {@macro pulumi_appservice_web_app_hybrid_connection_web_app_hybrid_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WebAppHybridConnection(
    String name, {
    WebAppHybridConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appservice/webAppHybridConnection:WebAppHybridConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.hostname = registerOutput<String>('hostname');
    this.namespaceName = registerOutput<String>('namespaceName');
    this.port = registerOutput<int>('port');
    this.relayId = registerOutput<String>('relayId');
    this.relayName = registerOutput<String>('relayName');
    this.sendKeyName = registerOutput<String?>('sendKeyName');
    this.sendKeyValue = registerOutput<String>('sendKeyValue');
    this.serviceBusNamespace = registerOutput<String>('serviceBusNamespace');
    this.serviceBusSuffix = registerOutput<String>('serviceBusSuffix');
    this.webAppId = registerOutput<String>('webAppId');
  }
}

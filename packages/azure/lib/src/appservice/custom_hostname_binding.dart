import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_hostname_binding_args.dart';

/// Manages a Hostname Binding within an App Service (or Function App).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
/// import * as random from "@pulumi/random";
///
/// const server = new random.index.Id("server", {
///     keepers: {
///         aziId: 1,
///     },
///     byteLength: 8,
/// });
/// const example = new azure.core.ResourceGroup("example", {
///     name: "some-resource-group",
///     location: "West Europe",
/// });
/// const examplePlan = new azure.appservice.Plan("example", {
///     name: "some-app-service-plan",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: {
///         tier: "Standard",
///         size: "S1",
///     },
/// });
/// const exampleAppService = new azure.appservice.AppService("example", {
///     name: server.hex,
///     location: example.location,
///     resourceGroupName: example.name,
///     appServicePlanId: examplePlan.id,
/// });
/// const exampleCustomHostnameBinding = new azure.appservice.CustomHostnameBinding("example", {
///     hostname: "www.mywebsite.com",
///     appServiceName: exampleAppService.name,
///     resourceGroupName: example.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
/// import pulumi_random as random
///
/// server = random.index.Id("server",
///     keepers={
///         aziId: 1,
///     },
///     byte_length=8)
/// example = azure.core.ResourceGroup("example",
///     name="some-resource-group",
///     location="West Europe")
/// example_plan = azure.appservice.Plan("example",
///     name="some-app-service-plan",
///     location=example.location,
///     resource_group_name=example.name,
///     sku={
///         "tier": "Standard",
///         "size": "S1",
///     })
/// example_app_service = azure.appservice.AppService("example",
///     name=server["hex"],
///     location=example.location,
///     resource_group_name=example.name,
///     app_service_plan_id=example_plan.id)
/// example_custom_hostname_binding = azure.appservice.CustomHostnameBinding("example",
///     hostname="www.mywebsite.com",
///     app_service_name=example_app_service.name,
///     resource_group_name=example.name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var server = new Random.Index.Id("server", new()
///     {
///         Keepers =
///         {
///             { "aziId", 1 },
///         },
///         ByteLength = 8,
///     });
///
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "some-resource-group",
///         Location = "West Europe",
///     });
///
///     var examplePlan = new Azure.AppService.Plan("example", new()
///     {
///         Name = "some-app-service-plan",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = new Azure.AppService.Inputs.PlanSkuArgs
///         {
///             Tier = "Standard",
///             Size = "S1",
///         },
///     });
///
///     var exampleAppService = new Azure.AppService.AppService("example", new()
///     {
///         Name = server.Hex,
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         AppServicePlanId = examplePlan.Id,
///     });
///
///     var exampleCustomHostnameBinding = new Azure.AppService.CustomHostnameBinding("example", new()
///     {
///         Hostname = "www.mywebsite.com",
///         AppServiceName = exampleAppService.Name,
///         ResourceGroupName = example.Name,
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
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		server, err := random.NewId(ctx, "server", &random.IdArgs{
/// 			Keepers: map[string]interface{}{
/// 				"aziId": 1,
/// 			},
/// 			ByteLength: 8,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("some-resource-group"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		examplePlan, err := appservice.NewPlan(ctx, "example", &appservice.PlanArgs{
/// 			Name:              pulumi.String("some-app-service-plan"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Sku: &appservice.PlanSkuArgs{
/// 				Tier: pulumi.String("Standard"),
/// 				Size: pulumi.String("S1"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAppService, err := appservice.NewAppService(ctx, "example", &appservice.AppServiceArgs{
/// 			Name:              server.Hex,
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			AppServicePlanId:  examplePlan.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appservice.NewCustomHostnameBinding(ctx, "example", &appservice.CustomHostnameBindingArgs{
/// 			Hostname:          pulumi.String("www.mywebsite.com"),
/// 			AppServiceName:    exampleAppService.Name,
/// 			ResourceGroupName: example.Name,
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
/// import com.pulumi.random.Id;
/// import com.pulumi.random.IdArgs;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.appservice.Plan;
/// import com.pulumi.azure.appservice.PlanArgs;
/// import com.pulumi.azure.appservice.inputs.PlanSkuArgs;
/// import com.pulumi.azure.appservice.AppService;
/// import com.pulumi.azure.appservice.AppServiceArgs;
/// import com.pulumi.azure.appservice.CustomHostnameBinding;
/// import com.pulumi.azure.appservice.CustomHostnameBindingArgs;
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
///         var server = new Id("server", IdArgs.builder()
///             .keepers(Map.of("aziId", 1))
///             .byteLength(8)
///             .build());
///
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("some-resource-group")
///             .location("West Europe")
///             .build());
///
///         var examplePlan = new Plan("examplePlan", PlanArgs.builder()
///             .name("some-app-service-plan")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku(PlanSkuArgs.builder()
///                 .tier("Standard")
///                 .size("S1")
///                 .build())
///             .build());
///
///         var exampleAppService = new AppService("exampleAppService", AppServiceArgs.builder()
///             .name(server.hex())
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .appServicePlanId(examplePlan.id())
///             .build());
///
///         var exampleCustomHostnameBinding = new CustomHostnameBinding("exampleCustomHostnameBinding", CustomHostnameBindingArgs.builder()
///             .hostname("www.mywebsite.com")
///             .appServiceName(exampleAppService.name())
///             .resourceGroupName(example.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   server:
///     type: random:Id
///     properties:
///       keepers:
///         aziId: 1
///       byteLength: 8
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: some-resource-group
///       location: West Europe
///   examplePlan:
///     type: azure:appservice:Plan
///     name: example
///     properties:
///       name: some-app-service-plan
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku:
///         tier: Standard
///         size: S1
///   exampleAppService:
///     type: azure:appservice:AppService
///     name: example
///     properties:
///       name: ${server.hex}
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       appServicePlanId: ${examplePlan.id}
///   exampleCustomHostnameBinding:
///     type: azure:appservice:CustomHostnameBinding
///     name: example
///     properties:
///       hostname: www.mywebsite.com
///       appServiceName: ${exampleAppService.name}
///       resourceGroupName: ${example.name}
/// ```
///
///
/// ## Import
///
/// App Service Custom Hostname Bindings can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:appservice/customHostnameBinding:CustomHostnameBinding mywebsite /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Web/sites/instance1/hostNameBindings/mywebsite.com
/// ```
class CustomHostnameBinding extends pulumi.CustomResource {
  /// The name of the App Service in which to add the Custom Hostname Binding. Changing this forces a new resource to be created.
  late final pulumi.Output<String> appServiceName;
  /// Specifies the Custom Hostname to use for the App Service, example `www.example.com`. Changing this forces a new resource to be created.
  ///
  /// > **Note:** A CNAME needs to be configured from this Hostname to the Azure Website - otherwise Azure will reject the Hostname Binding.
  late final pulumi.Output<String> hostname;
  /// The name of the resource group in which the App Service exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The SSL type. Possible values are `IpBasedEnabled` and `SniEnabled`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> sslState;
  /// The SSL certificate thumbprint. Changing this forces a new resource to be created.
  ///
  /// > **Note:** `thumbprint` must be specified when `ssl_state` is set.
  late final pulumi.Output<String> thumbprint;
  /// The virtual IP address assigned to the hostname if IP based SSL is enabled.
  late final pulumi.Output<String> virtualIp;

  /// Creates a new [CustomHostnameBinding].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CustomHostnameBinding]. {@macro pulumi_appservice_custom_hostname_binding_custom_hostname_binding_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CustomHostnameBinding(
    String name, {
    CustomHostnameBindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appservice/customHostnameBinding:CustomHostnameBinding',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.appServiceName = registerOutput<String>('appServiceName');
    this.hostname = registerOutput<String>('hostname');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.sslState = registerOutput<String>('sslState');
    this.thumbprint = registerOutput<String>('thumbprint');
    this.virtualIp = registerOutput<String>('virtualIp');
  }
}

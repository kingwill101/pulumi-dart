import 'package:pulumi/pulumi.dart' as pulumi;
import 'spring_cloud_build_pack_binding_args.dart';
import 'spring_cloud_build_pack_binding_launch.dart';

/// Manages a Spring Cloud Build Pack Binding.
///
/// > **Note:** This resource is applicable only for Spring Cloud Service with enterprise tier.
///
/// !> **Note:** Azure Spring Apps is now deprecated and will be retired on 2028-05-31 - as such the `azure.appplatform.SpringCloudBuildPackBinding` resource is deprecated and will be removed in a future major version of the AzureRM Provider. See https://aka.ms/asaretirement for more information.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleSpringCloudService = new azure.appplatform.SpringCloudService("example", {
///     name: "example-springcloud",
///     resourceGroupName: example.name,
///     location: example.location,
///     skuName: "E0",
/// });
/// const exampleSpringCloudBuilder = new azure.appplatform.SpringCloudBuilder("example", {
///     name: "example",
///     springCloudServiceId: exampleSpringCloudService.id,
///     buildPackGroups: [{
///         name: "mix",
///         buildPackIds: ["tanzu-Build Packs/java-azure"],
///     }],
///     stack: {
///         id: "io.Build Packs.stacks.bionic",
///         version: "base",
///     },
/// });
/// const exampleSpringCloudBuildPackBinding = new azure.appplatform.SpringCloudBuildPackBinding("example", {
///     name: "example",
///     springCloudBuilderId: exampleSpringCloudBuilder.id,
///     bindingType: "ApplicationInsights",
///     launch: {
///         properties: {
///             abc: "def",
///             "any-string": "any-string",
///             "sampling-rate": "12.0",
///         },
///         secrets: {
///             "connection-string": "XXXXXXXXXXXXXXXXX=XXXXXXXXXXXXX-XXXXXXXXXXXXXXXXXXX;XXXXXXXXXXXXXXXXX=XXXXXXXXXXXXXXXXXXX",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_spring_cloud_service = azure.appplatform.SpringCloudService("example",
///     name="example-springcloud",
///     resource_group_name=example.name,
///     location=example.location,
///     sku_name="E0")
/// example_spring_cloud_builder = azure.appplatform.SpringCloudBuilder("example",
///     name="example",
///     spring_cloud_service_id=example_spring_cloud_service.id,
///     build_pack_groups=[{
///         "name": "mix",
///         "build_pack_ids": ["tanzu-Build Packs/java-azure"],
///     }],
///     stack={
///         "id": "io.Build Packs.stacks.bionic",
///         "version": "base",
///     })
/// example_spring_cloud_build_pack_binding = azure.appplatform.SpringCloudBuildPackBinding("example",
///     name="example",
///     spring_cloud_builder_id=example_spring_cloud_builder.id,
///     binding_type="ApplicationInsights",
///     launch={
///         "properties": {
///             "abc": "def",
///             "any-string": "any-string",
///             "sampling-rate": "12.0",
///         },
///         "secrets": {
///             "connection-string": "XXXXXXXXXXXXXXXXX=XXXXXXXXXXXXX-XXXXXXXXXXXXXXXXXXX;XXXXXXXXXXXXXXXXX=XXXXXXXXXXXXXXXXXXX",
///         },
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
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleSpringCloudService = new Azure.AppPlatform.SpringCloudService("example", new()
///     {
///         Name = "example-springcloud",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         SkuName = "E0",
///     });
///
///     var exampleSpringCloudBuilder = new Azure.AppPlatform.SpringCloudBuilder("example", new()
///     {
///         Name = "example",
///         SpringCloudServiceId = exampleSpringCloudService.Id,
///         BuildPackGroups = new[]
///         {
///             new Azure.AppPlatform.Inputs.SpringCloudBuilderBuildPackGroupArgs
///             {
///                 Name = "mix",
///                 BuildPackIds = new[]
///                 {
///                     "tanzu-Build Packs/java-azure",
///                 },
///             },
///         },
///         Stack = new Azure.AppPlatform.Inputs.SpringCloudBuilderStackArgs
///         {
///             Id = "io.Build Packs.stacks.bionic",
///             Version = "base",
///         },
///     });
///
///     var exampleSpringCloudBuildPackBinding = new Azure.AppPlatform.SpringCloudBuildPackBinding("example", new()
///     {
///         Name = "example",
///         SpringCloudBuilderId = exampleSpringCloudBuilder.Id,
///         BindingType = "ApplicationInsights",
///         Launch = new Azure.AppPlatform.Inputs.SpringCloudBuildPackBindingLaunchArgs
///         {
///             Properties =
///             {
///                 { "abc", "def" },
///                 { "any-string", "any-string" },
///                 { "sampling-rate", "12.0" },
///             },
///             Secrets =
///             {
///                 { "connection-string", "XXXXXXXXXXXXXXXXX=XXXXXXXXXXXXX-XXXXXXXXXXXXXXXXXXX;XXXXXXXXXXXXXXXXX=XXXXXXXXXXXXXXXXXXX" },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/appplatform"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSpringCloudService, err := appplatform.NewSpringCloudService(ctx, "example", &appplatform.SpringCloudServiceArgs{
/// 			Name:              pulumi.String("example-springcloud"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			SkuName:           pulumi.String("E0"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSpringCloudBuilder, err := appplatform.NewSpringCloudBuilder(ctx, "example", &appplatform.SpringCloudBuilderArgs{
/// 			Name:                 pulumi.String("example"),
/// 			SpringCloudServiceId: exampleSpringCloudService.ID(),
/// 			BuildPackGroups: appplatform.SpringCloudBuilderBuildPackGroupArray{
/// 				&appplatform.SpringCloudBuilderBuildPackGroupArgs{
/// 					Name: pulumi.String("mix"),
/// 					BuildPackIds: pulumi.StringArray{
/// 						pulumi.String("tanzu-Build Packs/java-azure"),
/// 					},
/// 				},
/// 			},
/// 			Stack: &appplatform.SpringCloudBuilderStackArgs{
/// 				Id:      pulumi.String("io.Build Packs.stacks.bionic"),
/// 				Version: pulumi.String("base"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appplatform.NewSpringCloudBuildPackBinding(ctx, "example", &appplatform.SpringCloudBuildPackBindingArgs{
/// 			Name:                 pulumi.String("example"),
/// 			SpringCloudBuilderId: exampleSpringCloudBuilder.ID(),
/// 			BindingType:          pulumi.String("ApplicationInsights"),
/// 			Launch: &appplatform.SpringCloudBuildPackBindingLaunchArgs{
/// 				Properties: pulumi.StringMap{
/// 					"abc":           pulumi.String("def"),
/// 					"any-string":    pulumi.String("any-string"),
/// 					"sampling-rate": pulumi.String("12.0"),
/// 				},
/// 				Secrets: pulumi.StringMap{
/// 					"connection-string": pulumi.String("XXXXXXXXXXXXXXXXX=XXXXXXXXXXXXX-XXXXXXXXXXXXXXXXXXX;XXXXXXXXXXXXXXXXX=XXXXXXXXXXXXXXXXXXX"),
/// 				},
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
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.appplatform.SpringCloudService;
/// import com.pulumi.azure.appplatform.SpringCloudServiceArgs;
/// import com.pulumi.azure.appplatform.SpringCloudBuilder;
/// import com.pulumi.azure.appplatform.SpringCloudBuilderArgs;
/// import com.pulumi.azure.appplatform.inputs.SpringCloudBuilderBuildPackGroupArgs;
/// import com.pulumi.azure.appplatform.inputs.SpringCloudBuilderStackArgs;
/// import com.pulumi.azure.appplatform.SpringCloudBuildPackBinding;
/// import com.pulumi.azure.appplatform.SpringCloudBuildPackBindingArgs;
/// import com.pulumi.azure.appplatform.inputs.SpringCloudBuildPackBindingLaunchArgs;
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
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleSpringCloudService = new SpringCloudService("exampleSpringCloudService", SpringCloudServiceArgs.builder()
///             .name("example-springcloud")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .skuName("E0")
///             .build());
///
///         var exampleSpringCloudBuilder = new SpringCloudBuilder("exampleSpringCloudBuilder", SpringCloudBuilderArgs.builder()
///             .name("example")
///             .springCloudServiceId(exampleSpringCloudService.id())
///             .buildPackGroups(SpringCloudBuilderBuildPackGroupArgs.builder()
///                 .name("mix")
///                 .buildPackIds("tanzu-Build Packs/java-azure")
///                 .build())
///             .stack(SpringCloudBuilderStackArgs.builder()
///                 .id("io.Build Packs.stacks.bionic")
///                 .version("base")
///                 .build())
///             .build());
///
///         var exampleSpringCloudBuildPackBinding = new SpringCloudBuildPackBinding("exampleSpringCloudBuildPackBinding", SpringCloudBuildPackBindingArgs.builder()
///             .name("example")
///             .springCloudBuilderId(exampleSpringCloudBuilder.id())
///             .bindingType("ApplicationInsights")
///             .launch(SpringCloudBuildPackBindingLaunchArgs.builder()
///                 .properties(Map.ofEntries(
///                     Map.entry("abc", "def"),
///                     Map.entry("any-string", "any-string"),
///                     Map.entry("sampling-rate", "12.0")
///                 ))
///                 .secrets(Map.of("connection-string", "XXXXXXXXXXXXXXXXX=XXXXXXXXXXXXX-XXXXXXXXXXXXXXXXXXX;XXXXXXXXXXXXXXXXX=XXXXXXXXXXXXXXXXXXX"))
///                 .build())
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
///       name: example-resources
///       location: West Europe
///   exampleSpringCloudService:
///     type: azure:appplatform:SpringCloudService
///     name: example
///     properties:
///       name: example-springcloud
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       skuName: E0
///   exampleSpringCloudBuilder:
///     type: azure:appplatform:SpringCloudBuilder
///     name: example
///     properties:
///       name: example
///       springCloudServiceId: ${exampleSpringCloudService.id}
///       buildPackGroups:
///         - name: mix
///           buildPackIds:
///             - tanzu-Build Packs/java-azure
///       stack:
///         id: io.Build Packs.stacks.bionic
///         version: base
///   exampleSpringCloudBuildPackBinding:
///     type: azure:appplatform:SpringCloudBuildPackBinding
///     name: example
///     properties:
///       name: example
///       springCloudBuilderId: ${exampleSpringCloudBuilder.id}
///       bindingType: ApplicationInsights
///       launch:
///         properties:
///           abc: def
///           any-string: any-string
///           sampling-rate: '12.0'
///         secrets:
///           connection-string: XXXXXXXXXXXXXXXXX=XXXXXXXXXXXXX-XXXXXXXXXXXXXXXXXXX;XXXXXXXXXXXXXXXXX=XXXXXXXXXXXXXXXXXXX
/// ```
///
///
/// ## Import
///
/// Spring Cloud Build Pack Bindings can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:appplatform/springCloudBuildPackBinding:SpringCloudBuildPackBinding example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup1/providers/Microsoft.AppPlatform/spring/service1/buildServices/buildService1/builders/builder1/buildPackBindings/binding1
/// ```
class SpringCloudBuildPackBinding extends pulumi.CustomResource {
  /// Specifies the Build Pack Binding Type. Allowed values are `ApacheSkyWalking`, `AppDynamics`, `ApplicationInsights`, `Dynatrace`, `ElasticAPM` and `NewRelic`.
  late final pulumi.Output<String?> bindingType;
  /// A `launch` block as defined below.
  late final pulumi.Output<SpringCloudBuildPackBindingLaunch?> launch;
  /// The name which should be used for this Spring Cloud Build Pack Binding. Changing this forces a new Spring Cloud Build Pack Binding to be created.
  late final pulumi.Output<String> name;
  /// The ID of the Spring Cloud Builder. Changing this forces a new Spring Cloud Build Pack Binding to be created.
  late final pulumi.Output<String> springCloudBuilderId;

  /// Creates a new [SpringCloudBuildPackBinding].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SpringCloudBuildPackBinding]. {@macro pulumi_appplatform_spring_cloud_build_pack_binding_spring_cloud_build_pack_binding_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SpringCloudBuildPackBinding(
    String name, {
    SpringCloudBuildPackBindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appplatform/springCloudBuildPackBinding:SpringCloudBuildPackBinding',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bindingType = registerOutput<String?>('bindingType');
    this.launch = registerOutput<SpringCloudBuildPackBindingLaunch?>('launch');
    this.name = registerOutput<String>('name');
    this.springCloudBuilderId = registerOutput<String>('springCloudBuilderId');
  }
}

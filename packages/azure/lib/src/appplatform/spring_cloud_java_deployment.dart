import 'package:pulumi/pulumi.dart' as pulumi;
import 'spring_cloud_java_deployment_args.dart';
import 'spring_cloud_java_deployment_quota.dart';

/// Manages an Azure Spring Cloud Deployment with a Java runtime.
///
/// > **Note:** This resource is applicable only for Spring Cloud Service with basic and standard tier.
///
/// !> **Note:** Azure Spring Apps is now deprecated and will be retired on 2028-05-31 - as such the `azure.appplatform.SpringCloudJavaDeployment` resource is deprecated and will be removed in a future major version of the AzureRM Provider. See https://aka.ms/asaretirement for more information.
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
/// });
/// const exampleSpringCloudApp = new azure.appplatform.SpringCloudApp("example", {
///     name: "example-springcloudapp",
///     resourceGroupName: example.name,
///     serviceName: exampleSpringCloudService.name,
///     identity: {
///         type: "SystemAssigned",
///     },
/// });
/// const exampleSpringCloudJavaDeployment = new azure.appplatform.SpringCloudJavaDeployment("example", {
///     name: "deploy1",
///     springCloudAppId: exampleSpringCloudApp.id,
///     instanceCount: 2,
///     jvmOptions: "-XX:+PrintGC",
///     quota: {
///         cpu: "2",
///         memory: "4Gi",
///     },
///     runtimeVersion: "Java_11",
///     environmentVariables: {
///         Foo: "Bar",
///         Env: "Staging",
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
///     location=example.location)
/// example_spring_cloud_app = azure.appplatform.SpringCloudApp("example",
///     name="example-springcloudapp",
///     resource_group_name=example.name,
///     service_name=example_spring_cloud_service.name,
///     identity={
///         "type": "SystemAssigned",
///     })
/// example_spring_cloud_java_deployment = azure.appplatform.SpringCloudJavaDeployment("example",
///     name="deploy1",
///     spring_cloud_app_id=example_spring_cloud_app.id,
///     instance_count=2,
///     jvm_options="-XX:+PrintGC",
///     quota={
///         "cpu": "2",
///         "memory": "4Gi",
///     },
///     runtime_version="Java_11",
///     environment_variables={
///         "Foo": "Bar",
///         "Env": "Staging",
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
///     });
///
///     var exampleSpringCloudApp = new Azure.AppPlatform.SpringCloudApp("example", new()
///     {
///         Name = "example-springcloudapp",
///         ResourceGroupName = example.Name,
///         ServiceName = exampleSpringCloudService.Name,
///         Identity = new Azure.AppPlatform.Inputs.SpringCloudAppIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
///     });
///
///     var exampleSpringCloudJavaDeployment = new Azure.AppPlatform.SpringCloudJavaDeployment("example", new()
///     {
///         Name = "deploy1",
///         SpringCloudAppId = exampleSpringCloudApp.Id,
///         InstanceCount = 2,
///         JvmOptions = "-XX:+PrintGC",
///         Quota = new Azure.AppPlatform.Inputs.SpringCloudJavaDeploymentQuotaArgs
///         {
///             Cpu = "2",
///             Memory = "4Gi",
///         },
///         RuntimeVersion = "Java_11",
///         EnvironmentVariables =
///         {
///             { "Foo", "Bar" },
///             { "Env", "Staging" },
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
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSpringCloudApp, err := appplatform.NewSpringCloudApp(ctx, "example", &appplatform.SpringCloudAppArgs{
/// 			Name:              pulumi.String("example-springcloudapp"),
/// 			ResourceGroupName: example.Name,
/// 			ServiceName:       exampleSpringCloudService.Name,
/// 			Identity: &appplatform.SpringCloudAppIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appplatform.NewSpringCloudJavaDeployment(ctx, "example", &appplatform.SpringCloudJavaDeploymentArgs{
/// 			Name:             pulumi.String("deploy1"),
/// 			SpringCloudAppId: exampleSpringCloudApp.ID(),
/// 			InstanceCount:    pulumi.Int(2),
/// 			JvmOptions:       pulumi.String("-XX:+PrintGC"),
/// 			Quota: &appplatform.SpringCloudJavaDeploymentQuotaArgs{
/// 				Cpu:    pulumi.String("2"),
/// 				Memory: pulumi.String("4Gi"),
/// 			},
/// 			RuntimeVersion: pulumi.String("Java_11"),
/// 			EnvironmentVariables: pulumi.StringMap{
/// 				"Foo": pulumi.String("Bar"),
/// 				"Env": pulumi.String("Staging"),
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
/// import com.pulumi.azure.appplatform.SpringCloudApp;
/// import com.pulumi.azure.appplatform.SpringCloudAppArgs;
/// import com.pulumi.azure.appplatform.inputs.SpringCloudAppIdentityArgs;
/// import com.pulumi.azure.appplatform.SpringCloudJavaDeployment;
/// import com.pulumi.azure.appplatform.SpringCloudJavaDeploymentArgs;
/// import com.pulumi.azure.appplatform.inputs.SpringCloudJavaDeploymentQuotaArgs;
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
///             .build());
///
///         var exampleSpringCloudApp = new SpringCloudApp("exampleSpringCloudApp", SpringCloudAppArgs.builder()
///             .name("example-springcloudapp")
///             .resourceGroupName(example.name())
///             .serviceName(exampleSpringCloudService.name())
///             .identity(SpringCloudAppIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .build());
///
///         var exampleSpringCloudJavaDeployment = new SpringCloudJavaDeployment("exampleSpringCloudJavaDeployment", SpringCloudJavaDeploymentArgs.builder()
///             .name("deploy1")
///             .springCloudAppId(exampleSpringCloudApp.id())
///             .instanceCount(2)
///             .jvmOptions("-XX:+PrintGC")
///             .quota(SpringCloudJavaDeploymentQuotaArgs.builder()
///                 .cpu("2")
///                 .memory("4Gi")
///                 .build())
///             .runtimeVersion("Java_11")
///             .environmentVariables(Map.ofEntries(
///                 Map.entry("Foo", "Bar"),
///                 Map.entry("Env", "Staging")
///             ))
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
///   exampleSpringCloudApp:
///     type: azure:appplatform:SpringCloudApp
///     name: example
///     properties:
///       name: example-springcloudapp
///       resourceGroupName: ${example.name}
///       serviceName: ${exampleSpringCloudService.name}
///       identity:
///         type: SystemAssigned
///   exampleSpringCloudJavaDeployment:
///     type: azure:appplatform:SpringCloudJavaDeployment
///     name: example
///     properties:
///       name: deploy1
///       springCloudAppId: ${exampleSpringCloudApp.id}
///       instanceCount: 2
///       jvmOptions: -XX:+PrintGC
///       quota:
///         cpu: '2'
///         memory: 4Gi
///       runtimeVersion: Java_11
///       environmentVariables:
///         Foo: Bar
///         Env: Staging
/// ```
///
///
/// ## Import
///
/// Spring Cloud Deployment can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:appplatform/springCloudJavaDeployment:SpringCloudJavaDeployment example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourcegroup1/providers/Microsoft.AppPlatform/spring/service1/apps/app1/deployments/deploy1
/// ```
class SpringCloudJavaDeployment extends pulumi.CustomResource {
  /// Specifies the environment variables of the Spring Cloud Deployment as a map of key-value pairs.
  late final pulumi.Output<Map<String, String>?> environmentVariables;
  /// Specifies the required instance count of the Spring Cloud Deployment. Possible Values are between `1` and `500`. Defaults to `1` if not specified.
  late final pulumi.Output<int?> instanceCount;
  /// Specifies the jvm option of the Spring Cloud Deployment.
  late final pulumi.Output<String?> jvmOptions;
  /// Specifies the name of the Spring Cloud Deployment. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// A `quota` block as defined below.
  late final pulumi.Output<SpringCloudJavaDeploymentQuota> quota;
  /// Specifies the runtime version of the Spring Cloud Deployment. Possible Values are `Java_8`, `Java_11` and `Java_17`. Defaults to `Java_8`.
  late final pulumi.Output<String?> runtimeVersion;
  /// Specifies the id of the Spring Cloud Application in which to create the Deployment. Changing this forces a new resource to be created.
  late final pulumi.Output<String> springCloudAppId;

  /// Creates a new [SpringCloudJavaDeployment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SpringCloudJavaDeployment]. {@macro pulumi_appplatform_spring_cloud_java_deployment_spring_cloud_java_deployment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SpringCloudJavaDeployment(
    String name, {
    SpringCloudJavaDeploymentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appplatform/springCloudJavaDeployment:SpringCloudJavaDeployment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.environmentVariables = registerOutput<Map<String, String>?>('environmentVariables');
    this.instanceCount = registerOutput<int?>('instanceCount');
    this.jvmOptions = registerOutput<String?>('jvmOptions');
    this.name = registerOutput<String>('name');
    this.quota = registerOutput<SpringCloudJavaDeploymentQuota>('quota');
    this.runtimeVersion = registerOutput<String?>('runtimeVersion');
    this.springCloudAppId = registerOutput<String>('springCloudAppId');
  }
}

import 'package:pulumi/pulumi.dart' as pulumi;
import 'spring_cloud_app_dynamics_application_performance_monitoring_args.dart';

/// > **Note:** This resource is only applicable for Spring Cloud Service enterprise tier
///
/// Manages a Spring Cloud Application Performance Monitoring resource for App Dynamics.
///
/// !> **Note:** Azure Spring Apps is now deprecated and will be retired on 2028-05-31 - as such the `azure.appplatform.SpringCloudAppDynamicsApplicationPerformanceMonitoring` resource is deprecated and will be removed in a future major version of the AzureRM Provider. See https://aka.ms/asaretirement for more information.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example",
///     location: "West Europe",
/// });
/// const exampleSpringCloudService = new azure.appplatform.SpringCloudService("example", {
///     name: "example",
///     location: example.location,
///     resourceGroupName: example.name,
///     skuName: "E0",
/// });
/// const exampleSpringCloudAppDynamicsApplicationPerformanceMonitoring = new azure.appplatform.SpringCloudAppDynamicsApplicationPerformanceMonitoring("example", {
///     name: "example",
///     springCloudServiceId: exampleSpringCloudService.id,
///     agentAccountName: "example-agent-account-name",
///     agentAccountAccessKey: "example-agent-account-access-key",
///     controllerHostName: "example-controller-host-name",
///     agentApplicationName: "example-agent-application-name",
///     agentTierName: "example-agent-tier-name",
///     agentNodeName: "example-agent-node-name",
///     agentUniqueHostId: "example-agent-unique-host-id",
///     controllerSslEnabled: true,
///     controllerPort: 8080,
///     globallyEnabled: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example",
///     location="West Europe")
/// example_spring_cloud_service = azure.appplatform.SpringCloudService("example",
///     name="example",
///     location=example.location,
///     resource_group_name=example.name,
///     sku_name="E0")
/// example_spring_cloud_app_dynamics_application_performance_monitoring = azure.appplatform.SpringCloudAppDynamicsApplicationPerformanceMonitoring("example",
///     name="example",
///     spring_cloud_service_id=example_spring_cloud_service.id,
///     agent_account_name="example-agent-account-name",
///     agent_account_access_key="example-agent-account-access-key",
///     controller_host_name="example-controller-host-name",
///     agent_application_name="example-agent-application-name",
///     agent_tier_name="example-agent-tier-name",
///     agent_node_name="example-agent-node-name",
///     agent_unique_host_id="example-agent-unique-host-id",
///     controller_ssl_enabled=True,
///     controller_port=8080,
///     globally_enabled=True)
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
///         Name = "example",
///         Location = "West Europe",
///     });
///
///     var exampleSpringCloudService = new Azure.AppPlatform.SpringCloudService("example", new()
///     {
///         Name = "example",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         SkuName = "E0",
///     });
///
///     var exampleSpringCloudAppDynamicsApplicationPerformanceMonitoring = new Azure.AppPlatform.SpringCloudAppDynamicsApplicationPerformanceMonitoring("example", new()
///     {
///         Name = "example",
///         SpringCloudServiceId = exampleSpringCloudService.Id,
///         AgentAccountName = "example-agent-account-name",
///         AgentAccountAccessKey = "example-agent-account-access-key",
///         ControllerHostName = "example-controller-host-name",
///         AgentApplicationName = "example-agent-application-name",
///         AgentTierName = "example-agent-tier-name",
///         AgentNodeName = "example-agent-node-name",
///         AgentUniqueHostId = "example-agent-unique-host-id",
///         ControllerSslEnabled = true,
///         ControllerPort = 8080,
///         GloballyEnabled = true,
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
/// 			Name:     pulumi.String("example"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSpringCloudService, err := appplatform.NewSpringCloudService(ctx, "example", &appplatform.SpringCloudServiceArgs{
/// 			Name:              pulumi.String("example"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			SkuName:           pulumi.String("E0"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appplatform.NewSpringCloudAppDynamicsApplicationPerformanceMonitoring(ctx, "example", &appplatform.SpringCloudAppDynamicsApplicationPerformanceMonitoringArgs{
/// 			Name:                  pulumi.String("example"),
/// 			SpringCloudServiceId:  exampleSpringCloudService.ID(),
/// 			AgentAccountName:      pulumi.String("example-agent-account-name"),
/// 			AgentAccountAccessKey: pulumi.String("example-agent-account-access-key"),
/// 			ControllerHostName:    pulumi.String("example-controller-host-name"),
/// 			AgentApplicationName:  pulumi.String("example-agent-application-name"),
/// 			AgentTierName:         pulumi.String("example-agent-tier-name"),
/// 			AgentNodeName:         pulumi.String("example-agent-node-name"),
/// 			AgentUniqueHostId:     pulumi.String("example-agent-unique-host-id"),
/// 			ControllerSslEnabled:  pulumi.Bool(true),
/// 			ControllerPort:        pulumi.Int(8080),
/// 			GloballyEnabled:       pulumi.Bool(true),
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
/// import com.pulumi.azure.appplatform.SpringCloudAppDynamicsApplicationPerformanceMonitoring;
/// import com.pulumi.azure.appplatform.SpringCloudAppDynamicsApplicationPerformanceMonitoringArgs;
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
///             .name("example")
///             .location("West Europe")
///             .build());
///
///         var exampleSpringCloudService = new SpringCloudService("exampleSpringCloudService", SpringCloudServiceArgs.builder()
///             .name("example")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .skuName("E0")
///             .build());
///
///         var exampleSpringCloudAppDynamicsApplicationPerformanceMonitoring = new SpringCloudAppDynamicsApplicationPerformanceMonitoring("exampleSpringCloudAppDynamicsApplicationPerformanceMonitoring", SpringCloudAppDynamicsApplicationPerformanceMonitoringArgs.builder()
///             .name("example")
///             .springCloudServiceId(exampleSpringCloudService.id())
///             .agentAccountName("example-agent-account-name")
///             .agentAccountAccessKey("example-agent-account-access-key")
///             .controllerHostName("example-controller-host-name")
///             .agentApplicationName("example-agent-application-name")
///             .agentTierName("example-agent-tier-name")
///             .agentNodeName("example-agent-node-name")
///             .agentUniqueHostId("example-agent-unique-host-id")
///             .controllerSslEnabled(true)
///             .controllerPort(8080)
///             .globallyEnabled(true)
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
///       name: example
///       location: West Europe
///   exampleSpringCloudService:
///     type: azure:appplatform:SpringCloudService
///     name: example
///     properties:
///       name: example
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       skuName: E0
///   exampleSpringCloudAppDynamicsApplicationPerformanceMonitoring:
///     type: azure:appplatform:SpringCloudAppDynamicsApplicationPerformanceMonitoring
///     name: example
///     properties:
///       name: example
///       springCloudServiceId: ${exampleSpringCloudService.id}
///       agentAccountName: example-agent-account-name
///       agentAccountAccessKey: example-agent-account-access-key
///       controllerHostName: example-controller-host-name
///       agentApplicationName: example-agent-application-name
///       agentTierName: example-agent-tier-name
///       agentNodeName: example-agent-node-name
///       agentUniqueHostId: example-agent-unique-host-id
///       controllerSslEnabled: true
///       controllerPort: 8080
///       globallyEnabled: true
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.AppPlatform` - 2024-01-01-preview
///
/// ## Import
///
/// Spring Cloud Application Performance Monitoring resource for App Dynamics can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:appplatform/springCloudAppDynamicsApplicationPerformanceMonitoring:SpringCloudAppDynamicsApplicationPerformanceMonitoring example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.AppPlatform/spring/service1/apms/apm1
/// ```
class SpringCloudAppDynamicsApplicationPerformanceMonitoring extends pulumi.CustomResource {
  /// Specifies the account access key used to authenticate with the Controller.
  late final pulumi.Output<String> agentAccountAccessKey;
  /// Specifies the account name of the App Dynamics account.
  late final pulumi.Output<String> agentAccountName;
  /// Specifies the name of the logical business application that this JVM node belongs to.
  late final pulumi.Output<String?> agentApplicationName;
  /// Specifies the name of the node. Where JVMs are dynamically created.
  late final pulumi.Output<String?> agentNodeName;
  /// Specifies the name of the tier that this JVM node belongs to.
  late final pulumi.Output<String?> agentTierName;
  /// Specifies the unique host ID which is used to Logically partition a single physical host or virtual machine such that it appears to the Controller that the application is running on different machines.
  late final pulumi.Output<String?> agentUniqueHostId;
  /// Specifies the hostname or the IP address of the AppDynamics Controller.
  late final pulumi.Output<String> controllerHostName;
  /// Specifies the HTTP(S) port of the AppDynamics Controller. This is the port used to access the AppDynamics browser-based user interface.
  late final pulumi.Output<int?> controllerPort;
  /// Specifies whether enable use SSL (HTTPS) to connect to the AppDynamics Controller.
  late final pulumi.Output<bool?> controllerSslEnabled;
  /// Specifies whether the Spring Cloud Application Performance Monitoring resource for Application Insights is enabled globally. Defaults to `false`.
  late final pulumi.Output<bool?> globallyEnabled;
  /// The name which should be used for this Spring Cloud Application Performance Monitoring resource for App Dynamics. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The ID of the Spring Cloud Service. Changing this forces a new resource to be created.
  late final pulumi.Output<String> springCloudServiceId;

  /// Creates a new [SpringCloudAppDynamicsApplicationPerformanceMonitoring].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SpringCloudAppDynamicsApplicationPerformanceMonitoring]. {@macro pulumi_appplatform_spring_cloud_app_dynamics_application_performance_monitoring_spring_cloud_app_dynamics_application_performance_monitoring_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SpringCloudAppDynamicsApplicationPerformanceMonitoring(
    String name, {
    SpringCloudAppDynamicsApplicationPerformanceMonitoringArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appplatform/springCloudAppDynamicsApplicationPerformanceMonitoring:SpringCloudAppDynamicsApplicationPerformanceMonitoring',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.agentAccountAccessKey = registerOutput<String>('agentAccountAccessKey');
    this.agentAccountName = registerOutput<String>('agentAccountName');
    this.agentApplicationName = registerOutput<String?>('agentApplicationName');
    this.agentNodeName = registerOutput<String?>('agentNodeName');
    this.agentTierName = registerOutput<String?>('agentTierName');
    this.agentUniqueHostId = registerOutput<String?>('agentUniqueHostId');
    this.controllerHostName = registerOutput<String>('controllerHostName');
    this.controllerPort = registerOutput<int?>('controllerPort');
    this.controllerSslEnabled = registerOutput<bool?>('controllerSslEnabled');
    this.globallyEnabled = registerOutput<bool?>('globallyEnabled');
    this.name = registerOutput<String>('name');
    this.springCloudServiceId = registerOutput<String>('springCloudServiceId');
  }
}

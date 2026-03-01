import 'package:pulumi/pulumi.dart' as pulumi;
import 'lication_load_balancer_frontend_args.dart';

/// Manages an Application Gateway for Containers Frontend.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.appconfiguration.LicationLoadBalancer("example", {
///     name: "example",
///     resourceGroupName: "example",
///     location: "West Europe",
/// });
/// const exampleLicationLoadBalancerFrontend = new azure.appconfiguration.LicationLoadBalancerFrontend("example", {
///     name: "example",
///     applicationLoadBalancerId: example.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.appconfiguration.LicationLoadBalancer("example",
///     name="example",
///     resource_group_name="example",
///     location="West Europe")
/// example_lication_load_balancer_frontend = azure.appconfiguration.LicationLoadBalancerFrontend("example",
///     name="example",
///     application_load_balancer_id=example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.AppConfiguration.LicationLoadBalancer("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = "example",
///         Location = "West Europe",
///     });
///
///     var exampleLicationLoadBalancerFrontend = new Azure.AppConfiguration.LicationLoadBalancerFrontend("example", new()
///     {
///         Name = "example",
///         ApplicationLoadBalancerId = example.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/appconfiguration"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := appconfiguration.NewLicationLoadBalancer(ctx, "example", &appconfiguration.LicationLoadBalancerArgs{
/// 			Name:              pulumi.String("example"),
/// 			ResourceGroupName: pulumi.String("example"),
/// 			Location:          pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appconfiguration.NewLicationLoadBalancerFrontend(ctx, "example", &appconfiguration.LicationLoadBalancerFrontendArgs{
/// 			Name:                      pulumi.String("example"),
/// 			ApplicationLoadBalancerId: example.ID(),
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
/// import com.pulumi.azure.appconfiguration.LicationLoadBalancer;
/// import com.pulumi.azure.appconfiguration.LicationLoadBalancerArgs;
/// import com.pulumi.azure.appconfiguration.LicationLoadBalancerFrontend;
/// import com.pulumi.azure.appconfiguration.LicationLoadBalancerFrontendArgs;
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
///         var example = new LicationLoadBalancer("example", LicationLoadBalancerArgs.builder()
///             .name("example")
///             .resourceGroupName("example")
///             .location("West Europe")
///             .build());
///
///         var exampleLicationLoadBalancerFrontend = new LicationLoadBalancerFrontend("exampleLicationLoadBalancerFrontend", LicationLoadBalancerFrontendArgs.builder()
///             .name("example")
///             .applicationLoadBalancerId(example.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:appconfiguration:LicationLoadBalancer
///     properties:
///       name: example
///       resourceGroupName: example
///       location: West Europe
///   exampleLicationLoadBalancerFrontend:
///     type: azure:appconfiguration:LicationLoadBalancerFrontend
///     name: example
///     properties:
///       name: example
///       applicationLoadBalancerId: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.ServiceNetworking` - 2025-01-01
///
/// ## Import
///
/// Application Gateway for Containers Frontend can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:appconfiguration/licationLoadBalancerFrontend:LicationLoadBalancerFrontend example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.ServiceNetworking/trafficControllers/alb1/frontends/frontend1
/// ```
class LicationLoadBalancerFrontend extends pulumi.CustomResource {
  /// The ID of the Application Gateway for Containers. Changing this forces a new resource to be created.
  late final pulumi.Output<String> applicationLoadBalancerId;
  /// The Fully Qualified Domain Name of the DNS record associated to an Application Gateway for Containers Frontend.
  late final pulumi.Output<String> fullyQualifiedDomainName;
  /// The name which should be used for this Application Gateway for Containers Frontend. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// A mapping of tags which should be assigned to the Application Gateway for Containers Frontend.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [LicationLoadBalancerFrontend].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LicationLoadBalancerFrontend]. {@macro pulumi_appconfiguration_lication_load_balancer_frontend_lication_load_balancer_frontend_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LicationLoadBalancerFrontend(
    String name, {
    LicationLoadBalancerFrontendArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appconfiguration/licationLoadBalancerFrontend:LicationLoadBalancerFrontend',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.applicationLoadBalancerId = registerOutput<String>('applicationLoadBalancerId');
    this.fullyQualifiedDomainName = registerOutput<String>('fullyQualifiedDomainName');
    this.name = registerOutput<String>('name');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }
}

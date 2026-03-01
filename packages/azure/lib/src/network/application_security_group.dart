import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_security_group_args.dart';

/// Manages an Application Security Group.
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
/// const exampleApplicationSecurityGroup = new azure.network.ApplicationSecurityGroup("example", {
///     name: "tf-appsecuritygroup",
///     location: example.location,
///     resourceGroupName: example.name,
///     tags: {
///         Hello: "World",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="tf-test",
///     location="West Europe")
/// example_application_security_group = azure.network.ApplicationSecurityGroup("example",
///     name="tf-appsecuritygroup",
///     location=example.location,
///     resource_group_name=example.name,
///     tags={
///         "Hello": "World",
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
///         Name = "tf-test",
///         Location = "West Europe",
///     });
///
///     var exampleApplicationSecurityGroup = new Azure.Network.ApplicationSecurityGroup("example", new()
///     {
///         Name = "tf-appsecuritygroup",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Tags =
///         {
///             { "Hello", "World" },
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
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
/// 		_, err = network.NewApplicationSecurityGroup(ctx, "example", &network.ApplicationSecurityGroupArgs{
/// 			Name:              pulumi.String("tf-appsecuritygroup"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Tags: pulumi.StringMap{
/// 				"Hello": pulumi.String("World"),
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
/// import com.pulumi.azure.network.ApplicationSecurityGroup;
/// import com.pulumi.azure.network.ApplicationSecurityGroupArgs;
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
///         var exampleApplicationSecurityGroup = new ApplicationSecurityGroup("exampleApplicationSecurityGroup", ApplicationSecurityGroupArgs.builder()
///             .name("tf-appsecuritygroup")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .tags(Map.of("Hello", "World"))
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
///       name: tf-test
///       location: West Europe
///   exampleApplicationSecurityGroup:
///     type: azure:network:ApplicationSecurityGroup
///     name: example
///     properties:
///       name: tf-appsecuritygroup
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       tags:
///         Hello: World
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2025-01-01
///
/// ## Import
///
/// Application Security Groups can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:network/applicationSecurityGroup:ApplicationSecurityGroup securitygroup1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Network/applicationSecurityGroups/securitygroup1
/// ```
class ApplicationSecurityGroup extends pulumi.CustomResource {
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// Specifies the name of the Application Security Group. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The name of the resource group in which to create the Application Security Group. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [ApplicationSecurityGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApplicationSecurityGroup]. {@macro pulumi_network_application_security_group_application_security_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApplicationSecurityGroup(
    String name, {
    ApplicationSecurityGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/applicationSecurityGroup:ApplicationSecurityGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }
}

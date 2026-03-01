import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_args.dart';
import 'project_identity.dart';

/// Manages a Dev Center Project.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const exampleResourceGroup = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const example = new azure.devcenter.DevCenter("example", {
///     name: "example",
///     resourceGroupName: exampleResourceGroup.name,
///     location: exampleResourceGroup.location,
///     identity: {
///         type: "example-value",
///     },
/// });
/// const exampleProject = new azure.devcenter.Project("example", {
///     devCenterId: example.id,
///     location: exampleResourceGroup.location,
///     name: "example",
///     resourceGroupName: exampleResourceGroup.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example_resource_group = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example = azure.devcenter.DevCenter("example",
///     name="example",
///     resource_group_name=example_resource_group.name,
///     location=example_resource_group.location,
///     identity={
///         "type": "example-value",
///     })
/// example_project = azure.devcenter.Project("example",
///     dev_center_id=example.id,
///     location=example_resource_group.location,
///     name="example",
///     resource_group_name=example_resource_group.name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleResourceGroup = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var example = new Azure.DevCenter.DevCenter("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = exampleResourceGroup.Name,
///         Location = exampleResourceGroup.Location,
///         Identity = new Azure.DevCenter.Inputs.DevCenterIdentityArgs
///         {
///             Type = "example-value",
///         },
///     });
///
///     var exampleProject = new Azure.DevCenter.Project("example", new()
///     {
///         DevCenterId = example.Id,
///         Location = exampleResourceGroup.Location,
///         Name = "example",
///         ResourceGroupName = exampleResourceGroup.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/devcenter"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleResourceGroup, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := devcenter.NewDevCenter(ctx, "example", &devcenter.DevCenterArgs{
/// 			Name:              pulumi.String("example"),
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 			Location:          exampleResourceGroup.Location,
/// 			Identity: &devcenter.DevCenterIdentityArgs{
/// 				Type: pulumi.String("example-value"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = devcenter.NewProject(ctx, "example", &devcenter.ProjectArgs{
/// 			DevCenterId:       example.ID(),
/// 			Location:          exampleResourceGroup.Location,
/// 			Name:              pulumi.String("example"),
/// 			ResourceGroupName: exampleResourceGroup.Name,
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
/// import com.pulumi.azure.devcenter.DevCenter;
/// import com.pulumi.azure.devcenter.DevCenterArgs;
/// import com.pulumi.azure.devcenter.inputs.DevCenterIdentityArgs;
/// import com.pulumi.azure.devcenter.Project;
/// import com.pulumi.azure.devcenter.ProjectArgs;
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
///         var exampleResourceGroup = new ResourceGroup("exampleResourceGroup", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var example = new DevCenter("example", DevCenterArgs.builder()
///             .name("example")
///             .resourceGroupName(exampleResourceGroup.name())
///             .location(exampleResourceGroup.location())
///             .identity(DevCenterIdentityArgs.builder()
///                 .type("example-value")
///                 .build())
///             .build());
///
///         var exampleProject = new Project("exampleProject", ProjectArgs.builder()
///             .devCenterId(example.id())
///             .location(exampleResourceGroup.location())
///             .name("example")
///             .resourceGroupName(exampleResourceGroup.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:devcenter:DevCenter
///     properties:
///       name: example
///       resourceGroupName: ${exampleResourceGroup.name}
///       location: ${exampleResourceGroup.location}
///       identity:
///         type: example-value
///   exampleResourceGroup:
///     type: azure:core:ResourceGroup
///     name: example
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleProject:
///     type: azure:devcenter:Project
///     name: example
///     properties:
///       devCenterId: ${example.id}
///       location: ${exampleResourceGroup.location}
///       name: example
///       resourceGroupName: ${exampleResourceGroup.name}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.DevCenter` - 2025-02-01
///
/// ## Import
///
/// An existing Dev Center Project can be imported into Pulumi using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:devcenter/project:Project example /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DevCenter/projects/{projectName}
/// ```
///
/// * Where `{subscriptionId}` is the ID of the Azure Subscription where the Dev Center Project exists. For example `12345678-1234-9876-4563-123456789012`.
/// * Where `{resourceGroupName}` is the name of Resource Group where this Dev Center Project exists. For example `example-resource-group`.
/// * Where `{projectName}` is the name of the Project. For example `projectValue`.
class Project extends pulumi.CustomResource {
  /// Description of the project. Changing this forces a new Dev Center Project to be created.
  late final pulumi.Output<String?> description;
  /// Resource Id of an associated DevCenter. Changing this forces a new Dev Center Project to be created.
  late final pulumi.Output<String> devCenterId;
  /// The URI of the Dev Center resource this project is associated with.
  late final pulumi.Output<String> devCenterUri;
  /// An `identity` block as defined below.
  late final pulumi.Output<ProjectIdentity?> identity;
  /// The Azure Region where the Dev Center Project should exist. Changing this forces a new Dev Center Project to be created.
  late final pulumi.Output<String> location;
  /// When specified, limits the maximum number of Dev Boxes a single user can create across all pools in the project.
  late final pulumi.Output<int?> maximumDevBoxesPerUser;
  /// Specifies the name of this Dev Center Project. Changing this forces a new Dev Center Project to be created.
  late final pulumi.Output<String> name;
  /// Specifies the name of the Resource Group within which this Dev Center Project should exist. Changing this forces a new Dev Center Project to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A mapping of tags which should be assigned to the Dev Center Project.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [Project].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Project]. {@macro pulumi_devcenter_project_project_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Project(
    String name, {
    ProjectArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:devcenter/project:Project',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.devCenterId = registerOutput<String>('devCenterId');
    this.devCenterUri = registerOutput<String>('devCenterUri');
    this.identity = registerOutput<ProjectIdentity?>('identity');
    this.location = registerOutput<String>('location');
    this.maximumDevBoxesPerUser = registerOutput<int?>('maximumDevBoxesPerUser');
    this.name = registerOutput<String>('name');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }
}

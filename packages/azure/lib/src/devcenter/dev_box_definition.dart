import 'package:pulumi/pulumi.dart' as pulumi;
import 'dev_box_definition_args.dart';

/// Manages a Dev Center Dev Box Definition.
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
/// const exampleDevCenter = new azure.devcenter.DevCenter("example", {
///     name: "example-dc",
///     resourceGroupName: example.name,
///     location: example.location,
///     identity: {
///         type: "SystemAssigned",
///     },
/// });
/// const exampleDevBoxDefinition = new azure.devcenter.DevBoxDefinition("example", {
///     name: "example-dcet",
///     location: example.location,
///     devCenterId: exampleDevCenter.id,
///     imageReferenceId: pulumi.interpolate`${exampleDevCenter.id}/galleries/default/images/microsoftvisualstudio_visualstudioplustools_vs-2022-ent-general-win10-m365-gen2`,
///     skuName: "general_i_8c32gb256ssd_v2",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_dev_center = azure.devcenter.DevCenter("example",
///     name="example-dc",
///     resource_group_name=example.name,
///     location=example.location,
///     identity={
///         "type": "SystemAssigned",
///     })
/// example_dev_box_definition = azure.devcenter.DevBoxDefinition("example",
///     name="example-dcet",
///     location=example.location,
///     dev_center_id=example_dev_center.id,
///     image_reference_id=example_dev_center.id.apply(lambda id: f"{id}/galleries/default/images/microsoftvisualstudio_visualstudioplustools_vs-2022-ent-general-win10-m365-gen2"),
///     sku_name="general_i_8c32gb256ssd_v2")
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
///     var exampleDevCenter = new Azure.DevCenter.DevCenter("example", new()
///     {
///         Name = "example-dc",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Identity = new Azure.DevCenter.Inputs.DevCenterIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
///     });
///
///     var exampleDevBoxDefinition = new Azure.DevCenter.DevBoxDefinition("example", new()
///     {
///         Name = "example-dcet",
///         Location = example.Location,
///         DevCenterId = exampleDevCenter.Id,
///         ImageReferenceId = exampleDevCenter.Id.Apply(id => $"{id}/galleries/default/images/microsoftvisualstudio_visualstudioplustools_vs-2022-ent-general-win10-m365-gen2"),
///         SkuName = "general_i_8c32gb256ssd_v2",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/devcenter"
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
/// 		exampleDevCenter, err := devcenter.NewDevCenter(ctx, "example", &devcenter.DevCenterArgs{
/// 			Name:              pulumi.String("example-dc"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			Identity: &devcenter.DevCenterIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = devcenter.NewDevBoxDefinition(ctx, "example", &devcenter.DevBoxDefinitionArgs{
/// 			Name:        pulumi.String("example-dcet"),
/// 			Location:    example.Location,
/// 			DevCenterId: exampleDevCenter.ID(),
/// 			ImageReferenceId: exampleDevCenter.ID().ApplyT(func(id string) (string, error) {
/// 				return fmt.Sprintf("%v/galleries/default/images/microsoftvisualstudio_visualstudioplustools_vs-2022-ent-general-win10-m365-gen2", id), nil
/// 			}).(pulumi.StringOutput),
/// 			SkuName: pulumi.String("general_i_8c32gb256ssd_v2"),
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
/// import com.pulumi.azure.devcenter.DevBoxDefinition;
/// import com.pulumi.azure.devcenter.DevBoxDefinitionArgs;
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
///         var exampleDevCenter = new DevCenter("exampleDevCenter", DevCenterArgs.builder()
///             .name("example-dc")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .identity(DevCenterIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .build());
///
///         var exampleDevBoxDefinition = new DevBoxDefinition("exampleDevBoxDefinition", DevBoxDefinitionArgs.builder()
///             .name("example-dcet")
///             .location(example.location())
///             .devCenterId(exampleDevCenter.id())
///             .imageReferenceId(exampleDevCenter.id().applyValue(_id -> String.format("%s/galleries/default/images/microsoftvisualstudio_visualstudioplustools_vs-2022-ent-general-win10-m365-gen2", _id)))
///             .skuName("general_i_8c32gb256ssd_v2")
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
///   exampleDevCenter:
///     type: azure:devcenter:DevCenter
///     name: example
///     properties:
///       name: example-dc
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       identity:
///         type: SystemAssigned
///   exampleDevBoxDefinition:
///     type: azure:devcenter:DevBoxDefinition
///     name: example
///     properties:
///       name: example-dcet
///       location: ${example.location}
///       devCenterId: ${exampleDevCenter.id}
///       imageReferenceId: ${exampleDevCenter.id}/galleries/default/images/microsoftvisualstudio_visualstudioplustools_vs-2022-ent-general-win10-m365-gen2
///       skuName: general_i_8c32gb256ssd_v2
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
/// An existing Dev Center Dev Box Definition can be imported into Pulumi using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:devcenter/devBoxDefinition:DevBoxDefinition example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.DevCenter/devCenters/dc1/devBoxDefinitions/et1
/// ```
class DevBoxDefinition extends pulumi.CustomResource {
  /// The ID of the associated Dev Center. Changing this forces a new resource to be created.
  late final pulumi.Output<String> devCenterId;
  /// Whether the Dev Boxes created with this definition are capable of hibernation. Defaults to `false`.
  ///
  /// > **Note:** Not all images are capable of supporting hibernation, for more information see https://aka.ms/devbox/hibernate.
  late final pulumi.Output<bool?> hibernateSupportEnabled;
  /// The ID of the image for the Dev Center Dev Box Definition.
  late final pulumi.Output<String> imageReferenceId;
  /// The Azure Region where the Dev Center Dev Box Definition should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// Specifies the name of this Dev Center Dev Box Definition. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The name of the SKU for the Dev Center Dev Box Definition.
  late final pulumi.Output<String> skuName;
  /// A mapping of tags which should be assigned to the Dev Center Dev Box Definition.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [DevBoxDefinition].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DevBoxDefinition]. {@macro pulumi_devcenter_dev_box_definition_dev_box_definition_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DevBoxDefinition(
    String name, {
    DevBoxDefinitionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:devcenter/devBoxDefinition:DevBoxDefinition',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.devCenterId = registerOutput<String>('devCenterId');
    this.hibernateSupportEnabled = registerOutput<bool?>('hibernateSupportEnabled');
    this.imageReferenceId = registerOutput<String>('imageReferenceId');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.skuName = registerOutput<String>('skuName');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }
}

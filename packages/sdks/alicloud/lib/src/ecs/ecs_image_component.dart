import 'package:pulumi/pulumi.dart' as pulumi;
import 'ecs_image_component_args.dart';
import 'ecs_image_component_state.dart';

/// Provides a ECS Image Component resource.
///
///
///
/// For information about ECS Image Component and how to use it, see [What is Image Component](https://www.alibabacloud.com/help/en/doc-detail/200424.htm).
///
/// > **NOTE:** Available since v1.159.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.resourcemanager.getResourceGroups({
///     nameRegex: "default",
/// });
/// const example = new alicloud.ecs.EcsImageComponent("example", {
///     componentType: "Build",
///     content: "RUN yum update -y",
///     description: "example_value",
///     imageComponentName: "example_value",
///     resourceGroupId: _default.then(_default => _default.groups?.[0]?.id),
///     systemType: "Linux",
///     tags: {
///         Created: "TF",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.resourcemanager.get_resource_groups(name_regex="default")
/// example = alicloud.ecs.EcsImageComponent("example",
///     component_type="Build",
///     content="RUN yum update -y",
///     description="example_value",
///     image_component_name="example_value",
///     resource_group_id=default.groups[0].id,
///     system_type="Linux",
///     tags={
///         "Created": "TF",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.ResourceManager.GetResourceGroups.Invoke(new()
///     {
///         NameRegex = "default",
///     });
///
///     var example = new AliCloud.Ecs.EcsImageComponent("example", new()
///     {
///         ComponentType = "Build",
///         Content = "RUN yum update -y",
///         Description = "example_value",
///         ImageComponentName = "example_value",
///         ResourceGroupId = @default.Apply(@default => @default.Apply(getResourceGroupsResult => getResourceGroupsResult.Groups[0]?.Id)),
///         SystemType = "Linux",
///         Tags =
///         {
///             { "Created", "TF" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := resourcemanager.GetResourceGroups(ctx, &resourcemanager.GetResourceGroupsArgs{
/// 			NameRegex: pulumi.StringRef("default"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ecs.NewEcsImageComponent(ctx, "example", &ecs.EcsImageComponentArgs{
/// 			ComponentType:      pulumi.String("Build"),
/// 			Content:            pulumi.String("RUN yum update -y"),
/// 			Description:        pulumi.String("example_value"),
/// 			ImageComponentName: pulumi.String("example_value"),
/// 			ResourceGroupId:    pulumi.String(_default.Groups[0].Id),
/// 			SystemType:         pulumi.String("Linux"),
/// 			Tags: pulumi.StringMap{
/// 				"Created": pulumi.String("TF"),
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
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetResourceGroupsArgs;
/// import com.pulumi.alicloud.ecs.EcsImageComponent;
/// import com.pulumi.alicloud.ecs.EcsImageComponentArgs;
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
///         final var default = ResourcemanagerFunctions.getResourceGroups(GetResourceGroupsArgs.builder()
///             .nameRegex("default")
///             .build());
///
///         var example = new EcsImageComponent("example", EcsImageComponentArgs.builder()
///             .componentType("Build")
///             .content("RUN yum update -y")
///             .description("example_value")
///             .imageComponentName("example_value")
///             .resourceGroupId(default_.groups()[0].id())
///             .systemType("Linux")
///             .tags(Map.of("Created", "TF"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: alicloud:ecs:EcsImageComponent
///     properties:
///       componentType: Build
///       content: RUN yum update -y
///       description: example_value
///       imageComponentName: example_value
///       resourceGroupId: ${default.groups[0].id}
///       systemType: Linux
///       tags:
///         Created: TF
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:resourcemanager:getResourceGroups
///       arguments:
///         nameRegex: default
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ECS Image Component can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ecs/ecsImageComponent:EcsImageComponent example <id>
/// ```
class EcsImageComponent extends pulumi.CustomResource {
  /// The component type. Supports mirrored build components and test components.
  ///
  /// Value range:
  /// - Build
  /// - Test
  ///
  /// Default value: Build.
  ///
  /// > **NOTE:**  Build components can only be used in build templates and test components can only be used in test templates.
  late final pulumi.Output<String> componentType;
  /// The component version number, which is used in conjunction with the component name, is in the format of major.minor.patch and is a non-negative integer.
  ///
  /// Default value:(x +1).0.0, where x is the maximum major version of the current component.
  late final pulumi.Output<String> componentVersion;
  /// Component content. Consists of multiple commands. The maximum number of commands cannot exceed 127. Details of supported commands and command formats,
  late final pulumi.Output<String> content;
  /// Component creation time.
  late final pulumi.Output<String> createTime;
  /// Description information. It must be 2 to 256 characters in length and cannot start with http:// or https.
  late final pulumi.Output<String?> description;
  /// The component name. It must be 2 to 128 characters in length and start with an uppercase letter or a Chinese character. It cannot start with http:// or https. Can contain Chinese, English, numbers, half-length colons (:), underscores (_), half-length periods (.), or dashes (-).
  ///
  /// > **NOTE:**  When 'Name' is not set, the 'ImageComponentId' return value is used by default.
  late final pulumi.Output<String> imageComponentName;
  /// The ID of the enterprise resource group to which the created image component belongs.
  late final pulumi.Output<String> resourceGroupId;
  /// The operating system supported by the component.
  ///
  /// Value range:
  /// - Linux
  /// - Windows
  ///
  /// Default value: Linux.
  late final pulumi.Output<String> systemType;
  /// List of label key-value pairs.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [EcsImageComponent].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EcsImageComponent]. {@macro pulumi_ecs_ecs_image_component_ecs_image_component_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EcsImageComponent(
    String name, {
    EcsImageComponentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ecs/ecsImageComponent:EcsImageComponent',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.componentType = registerOutput<String>('componentType');
    this.componentVersion = registerOutput<String>('componentVersion');
    this.content = registerOutput<String>('content');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.imageComponentName = registerOutput<String>('imageComponentName');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.systemType = registerOutput<String>('systemType');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [EcsImageComponent] resource's state with the given [name] and [id].
  static EcsImageComponent get(
    String name,
    pulumi.Input<String> id, {
    EcsImageComponentState? state,
  }) {
    return EcsImageComponent._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EcsImageComponent._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ecs/ecsImageComponent:EcsImageComponent',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.componentType = registerOutput<String>('componentType');
    this.componentVersion = registerOutput<String>('componentVersion');
    this.content = registerOutput<String>('content');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.imageComponentName = registerOutput<String>('imageComponentName');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.systemType = registerOutput<String>('systemType');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }
}

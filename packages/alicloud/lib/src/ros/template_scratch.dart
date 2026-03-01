import 'package:pulumi/pulumi.dart' as pulumi;
import 'template_scratch_args.dart';
import 'template_scratch_preference_parameter.dart';
import 'template_scratch_source_resource.dart';
import 'template_scratch_source_resource_group.dart';
import 'template_scratch_source_tag.dart';

/// Provides a ROS Template Scratch resource.
///
/// For information about ROS Template Scratch and how to use it, see [What is Template Scratch](https://www.alibabacloud.com/help/zh/doc-detail/352074.html).
///
/// > **NOTE:** Available since v1.151.0.
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
/// const _default = alicloud.resourcemanager.getResourceGroups({});
/// const example = new alicloud.ros.TemplateScratch("example", {
///     description: "tf_testacc",
///     templateScratchType: "ResourceImport",
///     preferenceParameters: [{
///         parameterKey: "DeletionPolicy",
///         parameterValue: "Retain",
///     }],
///     sourceResourceGroup: {
///         resourceGroupId: _default.then(_default => _default.ids?.[0]),
///         resourceTypeFilters: ["ALIYUN::ECS::VPC"],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.resourcemanager.get_resource_groups()
/// example = alicloud.ros.TemplateScratch("example",
///     description="tf_testacc",
///     template_scratch_type="ResourceImport",
///     preference_parameters=[{
///         "parameter_key": "DeletionPolicy",
///         "parameter_value": "Retain",
///     }],
///     source_resource_group={
///         "resource_group_id": default.ids[0],
///         "resource_type_filters": ["ALIYUN::ECS::VPC"],
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
///     var @default = AliCloud.ResourceManager.GetResourceGroups.Invoke();
///
///     var example = new AliCloud.Ros.TemplateScratch("example", new()
///     {
///         Description = "tf_testacc",
///         TemplateScratchType = "ResourceImport",
///         PreferenceParameters = new[]
///         {
///             new AliCloud.Ros.Inputs.TemplateScratchPreferenceParameterArgs
///             {
///                 ParameterKey = "DeletionPolicy",
///                 ParameterValue = "Retain",
///             },
///         },
///         SourceResourceGroup = new AliCloud.Ros.Inputs.TemplateScratchSourceResourceGroupArgs
///         {
///             ResourceGroupId = @default.Apply(@default => @default.Apply(getResourceGroupsResult => getResourceGroupsResult.Ids[0])),
///             ResourceTypeFilters = new[]
///             {
///                 "ALIYUN::ECS::VPC",
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ros"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := resourcemanager.GetResourceGroups(ctx, &resourcemanager.GetResourceGroupsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ros.NewTemplateScratch(ctx, "example", &ros.TemplateScratchArgs{
/// 			Description:         pulumi.String("tf_testacc"),
/// 			TemplateScratchType: pulumi.String("ResourceImport"),
/// 			PreferenceParameters: ros.TemplateScratchPreferenceParameterArray{
/// 				&ros.TemplateScratchPreferenceParameterArgs{
/// 					ParameterKey:   pulumi.String("DeletionPolicy"),
/// 					ParameterValue: pulumi.String("Retain"),
/// 				},
/// 			},
/// 			SourceResourceGroup: &ros.TemplateScratchSourceResourceGroupArgs{
/// 				ResourceGroupId: pulumi.String(_default.Ids[0]),
/// 				ResourceTypeFilters: pulumi.StringArray{
/// 					pulumi.String("ALIYUN::ECS::VPC"),
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
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetResourceGroupsArgs;
/// import com.pulumi.alicloud.ros.TemplateScratch;
/// import com.pulumi.alicloud.ros.TemplateScratchArgs;
/// import com.pulumi.alicloud.ros.inputs.TemplateScratchPreferenceParameterArgs;
/// import com.pulumi.alicloud.ros.inputs.TemplateScratchSourceResourceGroupArgs;
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
///             .build());
///
///         var example = new TemplateScratch("example", TemplateScratchArgs.builder()
///             .description("tf_testacc")
///             .templateScratchType("ResourceImport")
///             .preferenceParameters(TemplateScratchPreferenceParameterArgs.builder()
///                 .parameterKey("DeletionPolicy")
///                 .parameterValue("Retain")
///                 .build())
///             .sourceResourceGroup(TemplateScratchSourceResourceGroupArgs.builder()
///                 .resourceGroupId(default_.ids()[0])
///                 .resourceTypeFilters("ALIYUN::ECS::VPC")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: alicloud:ros:TemplateScratch
///     properties:
///       description: tf_testacc
///       templateScratchType: ResourceImport
///       preferenceParameters:
///         - parameterKey: DeletionPolicy
///           parameterValue: Retain
///       sourceResourceGroup:
///         resourceGroupId: ${default.ids[0]}
///         resourceTypeFilters:
///           - ALIYUN::ECS::VPC
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:resourcemanager:getResourceGroups
///       arguments: {}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ROS Template Scratch can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ros/templateScratch:TemplateScratch example <id>
/// ```
class TemplateScratch extends pulumi.CustomResource {
  /// The Description of the Template Scratch.
  late final pulumi.Output<String?> description;
  /// The execution mode. Valid Values: `Async` or `Sync`.
  late final pulumi.Output<String?> executionMode;
  /// Logical ID generation strategy. Valid Values: `LongTypePrefixAndIndexSuffix`, `LongTypePrefixAndHashSuffix` and `ShortTypePrefixAndHashSuffix`.
  late final pulumi.Output<String> logicalIdStrategy;
  /// Priority parameter. See the following `Block preference_parameters`.
  late final pulumi.Output<List<TemplateScratchPreferenceParameter>> preferenceParameters;
  /// Source resource grouping. See the following `Block source_resource_group`.
  late final pulumi.Output<TemplateScratchSourceResourceGroup?> sourceResourceGroup;
  /// Source resource. See the following `Block source_resources`.
  late final pulumi.Output<List<TemplateScratchSourceResource>?> sourceResources;
  /// Source tag. See the following `Block source_tag`.
  late final pulumi.Output<TemplateScratchSourceTag?> sourceTag;
  /// The status of the resource.
  late final pulumi.Output<String> status;
  /// The type of the Template scan. Valid Values: `ResourceImport` or `ArchitectureReplication`.
  late final pulumi.Output<String> templateScratchType;

  /// Creates a new [TemplateScratch].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TemplateScratch]. {@macro pulumi_ros_template_scratch_template_scratch_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TemplateScratch(
    String name, {
    TemplateScratchArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ros/templateScratch:TemplateScratch',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.executionMode = registerOutput<String?>('executionMode');
    this.logicalIdStrategy = registerOutput<String>('logicalIdStrategy');
    this.preferenceParameters = registerOutput<List<TemplateScratchPreferenceParameter>>('preferenceParameters');
    this.sourceResourceGroup = registerOutput<TemplateScratchSourceResourceGroup?>('sourceResourceGroup');
    this.sourceResources = registerOutput<List<TemplateScratchSourceResource>?>('sourceResources');
    this.sourceTag = registerOutput<TemplateScratchSourceTag?>('sourceTag');
    this.status = registerOutput<String>('status');
    this.templateScratchType = registerOutput<String>('templateScratchType');
  }
}

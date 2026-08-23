import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag_args.dart';
import 'tag_state.dart';
import 'tag_tag.dart';

/// Manages an individual Autoscaling Group (ASG) tag. This resource should only be used in cases where ASGs are created outside the provider (e.g., ASGs implicitly created by EKS Node Groups).
///
/// &gt; **NOTE:** This tagging resource should not be combined with the resource for managing the parent resource. For example, using `aws.autoscaling.Group` and `aws.autoscaling.Tag` to manage tags of the same ASG will cause a perpetual difference where the `aws.autoscaling.Group` resource will try to remove the tag being added by the `aws.autoscaling.Tag` resource.
///
/// &gt; **NOTE:** This tagging resource does not use the provider `ignoreTags` configuration.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const example = new aws.eks.NodeGroup("example", {
///     clusterName: "example",
///     nodeGroupName: "example",
/// });
/// const exampleTag: aws.autoscaling.Tag[] = [];
/// std.tosetOutput({
///     input: std.flattenOutput({
///         input: example.resources.apply(resources => resources.map(resources => (resources.autoscalingGroups))),
///     }).apply(invoke => .map(asg => (asg.name))),
/// }).result.apply(rangeBody => {
///     for (const range of rangeBody.map((v, k) => ({key: k, value: v}))) {
///         exampleTag.push(new aws.autoscaling.Tag(`example-${range.key}`, {
///             autoscalingGroupName: range.value,
///             tag: {
///                 key: "k8s.io/cluster-autoscaler/node-template/label/eks.amazonaws.com/capacityType",
///                 value: "SPOT",
///                 propagateAtLaunch: false,
///             },
///         }));
///     }
/// });
/// ```
/// ```python
/// import pulumi
/// from typing import Any
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// example = aws.eks.NodeGroup("example",
///     cluster_name="example",
///     node_group_name="example")
/// example_tag: list[aws.autoscaling.Tag] = []
/// def create_example(range_body):
///     for example_tag_range in [{"key": k, "value": v} for [k, v] in enumerate(range_body)]:
///         example_tag.append(aws.autoscaling.Tag(f"example-{example_tag_range['key']}",
///             autoscaling_group_name=example_tag_range["value"],
///             tag={
///                 "key": "k8s.io/cluster-autoscaler/node-template/label/eks.amazonaws.com/capacityType",
///                 "value": "SPOT",
///                 "propagate_at_launch": False,
///             }))
///
/// invoke.result.apply(create_example)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Eks.NodeGroup("example", new()
///     {
///         ClusterName = "example",
///         NodeGroupName = "example",
///     });
///
///     var exampleTag = new List<Aws.AutoScaling.Tag>();
///     foreach (var range in )
///     {
///         exampleTag.Add(new Aws.AutoScaling.Tag($"example-{range.Key}", new()
///         {
///             AutoscalingGroupName = range.Value,
///             TagDetails = new Aws.AutoScaling.Inputs.TagTagArgs
///             {
///                 Key = "k8s.io/cluster-autoscaler/node-template/label/eks.amazonaws.com/capacityType",
///                 Value = "SPOT",
///                 PropagateAtLaunch = false,
///             },
///         }));
///     }
/// });
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// resource "aws_eks_nodegroup" "example" {
///   cluster_name    = "example"
///   node_group_name = "example"
/// }
/// resource "aws_autoscaling_tag" "example" {
///   for_each               = toset([for asg in flatten([for resources in aws_eks_nodegroup.example.resources : resources.autoscalingGroups]) : asg.name])
///   autoscaling_group_name = each.value
///   tag = {
///     key                 = "k8s.io/cluster-autoscaler/node-template/label/eks.amazonaws.com/capacityType"
///     value               = "SPOT"
///     propagate_at_launch = false
///   }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:eks:NodeGroup
///     properties:
///       clusterName: example
///       nodeGroupName: example
///   exampleTag:
///     type: aws:autoscaling:Tag
///     name: example
///     properties:
///       autoscalingGroupName: ${range.value}
///       tag:
///         key: k8s.io/cluster-autoscaler/node-template/label/eks.amazonaws.com/capacityType
///         value: SPOT
///         propagateAtLaunch: false
///     options: {}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.autoscaling.Tag` using the ASG name and key, separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:autoscaling/tag:Tag example asg-example,k8s.io/cluster-autoscaler/node-template/label/eks.amazonaws.com/capacityType
/// ```
class Tag extends pulumi.CustomResource {
  /// Name of the Autoscaling Group to apply the tag to.
  late final pulumi.Output<String> autoscalingGroupName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Tag to create. The `tag` block is documented below.
  late final pulumi.Output<TagTag> tag;

  /// Creates a new [Tag].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Tag]. {@macro pulumi_autoscaling_tag_tag_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Tag(
    String name, {
    TagArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:autoscaling/tag:Tag',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    autoscalingGroupName = registerOutput<String>('autoscalingGroupName');
    region = registerOutput<String>('region');
    tag = registerOutput<TagTag>('tag', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TagTag.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [Tag] resource's state with the given [name] and [id].
  static Tag get(
    String name,
    pulumi.Input<String> id, {
    TagState? state,
  }) {
    return Tag._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Tag._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:autoscaling/tag:Tag',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    autoscalingGroupName = registerOutput<String>('autoscalingGroupName');
    region = registerOutput<String>('region');
    tag = registerOutput<TagTag>('tag', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TagTag.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}

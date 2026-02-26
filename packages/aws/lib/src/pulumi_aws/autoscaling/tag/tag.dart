import 'package:pulumi/pulumi.dart';
import '../tag_tag/tag_tag.dart';
import 'tag_args.dart';

/// Manages an individual Autoscaling Group (ASG) tag. This resource should only be used in cases where ASGs are created outside the provider (e.g., ASGs implicitly created by EKS Node Groups).
///
/// > **NOTE:** This tagging resource should not be combined with the resource for managing the parent resource. For example, using <span pulumi-lang-nodejs="`aws.autoscaling.Group`" pulumi-lang-dotnet="`aws.autoscaling.Group`" pulumi-lang-go="`autoscaling.Group`" pulumi-lang-python="`autoscaling.Group`" pulumi-lang-yaml="`aws.autoscaling.Group`" pulumi-lang-java="`aws.autoscaling.Group`">`aws.autoscaling.Group`</span> and <span pulumi-lang-nodejs="`aws.autoscaling.Tag`" pulumi-lang-dotnet="`aws.autoscaling.Tag`" pulumi-lang-go="`autoscaling.Tag`" pulumi-lang-python="`autoscaling.Tag`" pulumi-lang-yaml="`aws.autoscaling.Tag`" pulumi-lang-java="`aws.autoscaling.Tag`">`aws.autoscaling.Tag`</span> to manage tags of the same ASG will cause a perpetual difference where the <span pulumi-lang-nodejs="`aws.autoscaling.Group`" pulumi-lang-dotnet="`aws.autoscaling.Group`" pulumi-lang-go="`autoscaling.Group`" pulumi-lang-python="`autoscaling.Group`" pulumi-lang-yaml="`aws.autoscaling.Group`" pulumi-lang-java="`aws.autoscaling.Group`">`aws.autoscaling.Group`</span> resource will try to remove the tag being added by the <span pulumi-lang-nodejs="`aws.autoscaling.Tag`" pulumi-lang-dotnet="`aws.autoscaling.Tag`" pulumi-lang-go="`autoscaling.Tag`" pulumi-lang-python="`autoscaling.Tag`" pulumi-lang-yaml="`aws.autoscaling.Tag`" pulumi-lang-java="`aws.autoscaling.Tag`">`aws.autoscaling.Tag`</span> resource.
///
/// > **NOTE:** This tagging resource does not use the provider <span pulumi-lang-nodejs="`ignoreTags`" pulumi-lang-dotnet="`IgnoreTags`" pulumi-lang-go="`ignoreTags`" pulumi-lang-python="`ignore_tags`" pulumi-lang-yaml="`ignoreTags`" pulumi-lang-java="`ignoreTags`">`ignore_tags`</span> configuration.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const example = new aws.eks.NodeGroup("example", {
/// clusterName: "example",
/// nodeGroupName: "example",
/// });
/// const exampleTag: aws.autoscaling.Tag[] = [];
/// std.tosetOutput({
/// input: std.flattenOutput({
/// input: example.resources.apply(resources => resources.map(resources => (resources.autoscalingGroups))),
/// }).apply(invoke => .map(asg => (asg.name))),
/// }).apply(invoke => {
/// for (const range of invoke.result.map((v, k) => ({key: k, value: v}))) {
/// exampleTag.push(new aws.autoscaling.Tag(`example-${range.key}`, {
/// autoscalingGroupName: range.value,
/// tag: {
/// key: "k8s.io/cluster-autoscaler/node-template/label/eks.amazonaws.com/capacityType",
/// value: "SPOT",
/// propagateAtLaunch: false,
/// },
/// }));
/// }
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// example = aws.eks.NodeGroup("example",
/// cluster_name="example",
/// node_group_name="example")
/// example_tag = []
/// def create_example(range_body):
/// for range in [{"key": k, "value": v} for [k, v] in enumerate(range_body)]:
/// example_tag.append(aws.autoscaling.Tag(f"example-{range['key']}",
/// autoscaling_group_name=range["value"],
/// tag={
/// "key": "k8s.io/cluster-autoscaler/node-template/label/eks.amazonaws.com/capacityType",
/// "value": "SPOT",
/// "propagate_at_launch": False,
/// }))
///
/// std.toset_output(input=std.flatten_output(input=example.resources.apply(lambda resources: [resources.autoscaling_groups for resources in resources])).apply(lambda invoke: [asg["name"] for asg in invoke.result])).apply(lambda resolved_outputs: create_example(resolved_outputs['invoke'].result))
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
/// var example = new Aws.Eks.NodeGroup("example", new()
/// {
/// ClusterName = "example",
/// NodeGroupName = "example",
/// });
///
/// var exampleTag = new List<Aws.AutoScaling.Tag>();
/// foreach (var range in )
/// {
/// exampleTag.Add(new Aws.AutoScaling.Tag($"example-{range.Key}", new()
/// {
/// AutoscalingGroupName = range.Value,
/// TagDetails = new Aws.AutoScaling.Inputs.TagTagArgs
/// {
/// Key = "k8s.io/cluster-autoscaler/node-template/label/eks.amazonaws.com/capacityType",
/// Value = "SPOT",
/// PropagateAtLaunch = false,
/// },
/// }));
/// }
/// });
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:eks:NodeGroup
/// properties:
/// clusterName: example
/// nodeGroupName: example
/// exampleTag:
/// type: aws:autoscaling:Tag
/// name: example
/// properties:
/// autoscalingGroupName: ${range.value}
/// tag:
/// key: k8s.io/cluster-autoscaler/node-template/label/eks.amazonaws.com/capacityType
/// value: SPOT
/// propagateAtLaunch: false
/// options: {}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.autoscaling.Tag`" pulumi-lang-dotnet="`aws.autoscaling.Tag`" pulumi-lang-go="`autoscaling.Tag`" pulumi-lang-python="`autoscaling.Tag`" pulumi-lang-yaml="`aws.autoscaling.Tag`" pulumi-lang-java="`aws.autoscaling.Tag`">`aws.autoscaling.Tag`</span> using the ASG name and key, separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:autoscaling/tag:Tag example asg-example,k8s.io/cluster-autoscaler/node-template/label/eks.amazonaws.com/capacityType
/// ```
class Tag extends CustomResource {
  /// Name of the Autoscaling Group to apply the tag to.
  late final Output<String> autoscalingGroupName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Tag to create. The <span pulumi-lang-nodejs="`tag`" pulumi-lang-dotnet="`Tag`" pulumi-lang-go="`tag`" pulumi-lang-python="`tag`" pulumi-lang-yaml="`tag`" pulumi-lang-java="`tag`">`tag`</span> block is documented below.
  late final Output<TagTag> tag;

  Tag(
    String name, {
    TagArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:autoscaling/tag:Tag',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.autoscalingGroupName = registerOutput<String>('autoscalingGroupName');
    this.region = registerOutput<String>('region');
    this.tag = registerOutput<TagTag>('tag');
  }
}

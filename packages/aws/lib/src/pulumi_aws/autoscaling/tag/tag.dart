import 'package:pulumi/pulumi.dart' as pulumi;
import '../tag_tag/tag_tag.dart';
import 'tag_args.dart';

/// Manages an individual Autoscaling Group (ASG) tag. This resource should only be used in cases where ASGs are created outside the provider (e.g., ASGs implicitly created by EKS Node Groups).
///
/// > **NOTE:** This tagging resource should not be combined with the resource for managing the parent resource. For example, using `aws.autoscaling.Group` and `aws.autoscaling.Tag` to manage tags of the same ASG will cause a perpetual difference where the `aws.autoscaling.Group` resource will try to remove the tag being added by the `aws.autoscaling.Tag` resource.
///
/// > **NOTE:** This tagging resource does not use the provider `ignore_tags` configuration.
///
/// ## Example Usage
///
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
    this.autoscalingGroupName = registerOutput<String>('autoscalingGroupName');
    this.region = registerOutput<String>('region');
    this.tag = registerOutput<TagTag>('tag');
  }
}

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag_ecs_args.dart';

/// Manages an individual ECS resource tag. This resource should only be used in cases where ECS resources are created outside the provider (e.g., ECS Clusters implicitly created by Batch Compute Environments).
///
/// > **NOTE:** This tagging resource should not be combined with the resource for managing the parent resource. For example, using `aws.ecs.Cluster` and `aws.ecs.Tag` to manage tags of the same ECS Cluster will cause a perpetual difference where the `aws.ecs.Cluster` resource will try to remove the tag being added by the `aws.ecs.Tag` resource.
///
/// > **NOTE:** This tagging resource does not use the provider `ignore_tags` configuration.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.ecs.Tag` using the ECS resource identifier and key, separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:ecs/tag:Tag example arn:aws:ecs:us-east-1:123456789012:cluster/example,Name
/// ```
class TagEcs extends pulumi.CustomResource {
  /// Tag name.
  late final pulumi.Output<String> key;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Amazon Resource Name (ARN) of the ECS resource to tag.
  late final pulumi.Output<String> resourceArn;

  /// Tag value.
  late final pulumi.Output<String> value;

  TagEcs(
    String name, {
    TagEcsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ecs/tag:Tag',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.key = registerOutput<String>('key');
    this.region = registerOutput<String>('region');
    this.resourceArn = registerOutput<String>('resourceArn');
    this.value = registerOutput<String>('value');
  }
}

import 'package:pulumi/pulumi.dart';
import 'group_args6.dart';

/// Provides a Synthetics Group resource.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import CloudWatch Synthetics Group using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:synthetics/group:Group example example
/// ```
class Group6 extends CustomResource {
  /// ARN of the Group.
  late final Output<String> arn;

  /// ID of the Group.
  late final Output<String> groupId;

  /// Name of the group.
  ///
  /// The following arguments are optional:
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  Group6(
    String name, {
    GroupArgs6? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:synthetics/group:Group',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.groupId = registerOutput<String>('groupId');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}

import 'package:pulumi/pulumi.dart' as pulumi;
import '../workgroup_configuration/workgroup_configuration.dart';
import 'workgroup_args.dart';

/// Provides an Athena Workgroup.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Athena Workgroups using their name. For example:
///
/// ```sh
/// $ pulumi import aws:athena/workgroup:Workgroup example example
/// ```
class Workgroup extends pulumi.CustomResource {
  /// ARN of the workgroup
  late final pulumi.Output<String> arn;

  /// Configuration block with various settings for the workgroup. Documented below.
  late final pulumi.Output<WorkgroupConfiguration?> configuration;

  /// Description of the workgroup.
  late final pulumi.Output<String?> description;

  /// Option to delete the workgroup and its contents even if the workgroup contains any named queries.
  late final pulumi.Output<bool?> forceDestroy;

  /// Name of the workgroup.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// State of the workgroup. Valid values are `DISABLED` or `ENABLED`. Defaults to `ENABLED`.
  late final pulumi.Output<String?> state;

  /// Key-value map of resource tags for the workgroup. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  Workgroup(
    String name, {
    WorkgroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:athena/workgroup:Workgroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.configuration =
        registerOutput<WorkgroupConfiguration?>('configuration');
    this.description = registerOutput<String?>('description');
    this.forceDestroy = registerOutput<bool?>('forceDestroy');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.state = registerOutput<String?>('state');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}

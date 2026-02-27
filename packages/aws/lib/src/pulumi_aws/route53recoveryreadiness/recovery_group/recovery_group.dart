import 'package:pulumi/pulumi.dart';
import 'recovery_group_args.dart';

/// Provides an AWS Route 53 Recovery Readiness Recovery Group.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Route53 Recovery Readiness recovery groups using the recovery group name. For example:
///
/// ```sh
/// $ pulumi import aws:route53recoveryreadiness/recoveryGroup:RecoveryGroup my-high-availability-app my-high-availability-app
/// ```
class RecoveryGroup extends CustomResource {
  /// ARN of the recovery group
  late final Output<String> arn;

  /// List of cell arns to add as nested fault domains within this recovery group
  late final Output<List<String>?> cells;

  /// A unique name describing the recovery group.
  ///
  /// The following arguments are optional:
  late final Output<String> recoveryGroupName;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  RecoveryGroup(
    String name, {
    RecoveryGroupArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:route53recoveryreadiness/recoveryGroup:RecoveryGroup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.cells = registerOutput<List<String>?>('cells');
    this.recoveryGroupName = registerOutput<String>('recoveryGroupName');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}

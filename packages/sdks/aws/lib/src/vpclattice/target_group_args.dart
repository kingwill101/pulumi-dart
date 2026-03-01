// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'target_group_config.dart';

/// {@template pulumi_vpclattice_target_group_target_group_args_doc}
/// The set of arguments for TargetGroup.
/// {@endtemplate}
/// {@macro pulumi_vpclattice_target_group_target_group_args_doc}
class TargetGroupArgs {
  /// The target group configuration.
  final pulumi.Input<TargetGroupConfig>? config;
  /// The name of the target group. The name must be unique within the account. The valid characters are a-z, 0-9, and hyphens (-). You can't use a hyphen as the first or last character, or immediately after another hyphen.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// The type of target group. Valid Values are `IP` | `LAMBDA` | `INSTANCE` | `ALB`
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> type;

  /// Creates a new [TargetGroupArgs].
  /// [config] The target group configuration.
  /// [name] The name of the target group. The name must be unique within the account. The valid characters are a-z, 0-9, and hyphens (-). You can't use a hyphen as the first or last character, or immediately after another hyphen.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [type] The type of target group. Valid Values are `IP` | `LAMBDA` | `INSTANCE` | `ALB`
  TargetGroupArgs({
    pulumi.Output<TargetGroupConfig>? config,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> type,
  }) :
      config = pulumi.Input.asOptionalInput<TargetGroupConfig>(config),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      type = pulumi.Input.asInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': ?pulumi.Input.mapOptionalInputValue<TargetGroupConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'type': type,
    };
  }

  factory TargetGroupArgs.fromMap(Map<String, dynamic> map) {
    return TargetGroupArgs(
      config: map['config'] == null ? null : pulumi.Output.create<TargetGroupConfig>(TargetGroupConfig.fromMap((map['config'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      type: pulumi.Output.create<String>(map['type'] as String),
    );
  }
}


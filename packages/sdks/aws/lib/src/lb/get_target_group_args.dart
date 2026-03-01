// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_lb_get_target_group_get_target_group_args_doc}
/// Arguments for getTargetGroup.
/// {@endtemplate}
/// {@macro pulumi_lb_get_target_group_get_target_group_args_doc}
class GetTargetGroupArgs {
  /// Full ARN of the target group.
  final pulumi.Input<String>? arn;
  final pulumi.Input<String>? loadBalancingAnomalyMitigation;
  /// Unique name of the target group.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Mapping of tags, each pair of which must exactly match a pair on the desired target group.
  ///
  /// > **NOTE:** When both `arn` and `name` are specified, `arn` takes precedence. `tags` has the lowest precedence.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetTargetGroupArgs].
  /// [arn] Full ARN of the target group.
  /// [loadBalancingAnomalyMitigation] Optional.
  /// [name] Unique name of the target group.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Mapping of tags, each pair of which must exactly match a pair on the desired target group.
  GetTargetGroupArgs({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? loadBalancingAnomalyMitigation,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      loadBalancingAnomalyMitigation = pulumi.Input.asOptionalInput<String>(loadBalancingAnomalyMitigation),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'loadBalancingAnomalyMitigation': ?loadBalancingAnomalyMitigation,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetTargetGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetTargetGroupArgs(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      loadBalancingAnomalyMitigation: map['loadBalancingAnomalyMitigation'] == null ? null : pulumi.Output.create<String>(map['loadBalancingAnomalyMitigation'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}


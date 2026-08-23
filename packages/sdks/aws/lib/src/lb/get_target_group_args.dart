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
  /// &gt; **NOTE:** When both `arn` and `name` are specified, `arn` takes precedence. `tags` has the lowest precedence.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetTargetGroupArgs].
  /// [arn] Full ARN of the target group.
  /// [loadBalancingAnomalyMitigation] Optional.
  /// [name] Unique name of the target group.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Mapping of tags, each pair of which must exactly match a pair on the desired target group.
  const GetTargetGroupArgs({
    this.arn,
    this.loadBalancingAnomalyMitigation,
    this.name,
    this.region,
    this.tags,
  });

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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loadBalancingAnomalyMitigation: (() { final guardedValue = map['loadBalancingAnomalyMitigation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

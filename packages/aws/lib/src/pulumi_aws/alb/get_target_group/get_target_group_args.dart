// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getTargetGroup.
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

  GetTargetGroupArgs({
    this.arn,
    this.loadBalancingAnomalyMitigation,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final arnValue = arn;
    if (arnValue != null) {
      map['arn'] = arnValue;
    }
    final loadBalancingAnomalyMitigationValue = loadBalancingAnomalyMitigation;
    if (loadBalancingAnomalyMitigationValue != null) {
      map['loadBalancingAnomalyMitigation'] =
          loadBalancingAnomalyMitigationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetTargetGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetTargetGroupArgs(
      arn: pulumi.Input.asOptionalInput<String>(map['arn']),
      loadBalancingAnomalyMitigation: pulumi.Input.asOptionalInput<String>(
          map['loadBalancingAnomalyMitigation']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scaling_plan_application_source_tag_filter.dart';

class ScalingPlanApplicationSource {
  /// ARN of a AWS CloudFormation stack.
  final pulumi.Input<String?>? cloudformationStackArn;
  /// Set of tags.
  final pulumi.Input<List<ScalingPlanApplicationSourceTagFilter>?>? tagFilters;

  /// Creates a new [ScalingPlanApplicationSource].
  /// [cloudformationStackArn] ARN of a AWS CloudFormation stack.
  /// [tagFilters] Set of tags.
  const ScalingPlanApplicationSource({
    this.cloudformationStackArn,
    this.tagFilters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudformationStackArn': ?cloudformationStackArn,
      'tagFilters': ?pulumi.Input.mapOptionalInputValue<List<ScalingPlanApplicationSourceTagFilter>, List<Map<String, dynamic>>>(tagFilters, (value) => pulumi.Input.encodeList<ScalingPlanApplicationSourceTagFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ScalingPlanApplicationSource.fromMap(Map<String, dynamic> map) {
    return ScalingPlanApplicationSource(
      cloudformationStackArn: (() { final guardedValue = map['cloudformationStackArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tagFilters: (() { final guardedValue = map['tagFilters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ScalingPlanApplicationSourceTagFilter>(guardedValue, (value) => ScalingPlanApplicationSourceTagFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scaling_plan_application_source_tag_filter.dart';

class ScalingPlanApplicationSource {
  /// ARN of a AWS CloudFormation stack.
  final pulumi.Input<String>? cloudformationStackArn;
  /// Set of tags.
  final pulumi.Input<List<ScalingPlanApplicationSourceTagFilter>>? tagFilters;

  /// Creates a new [ScalingPlanApplicationSource].
  /// [cloudformationStackArn] ARN of a AWS CloudFormation stack.
  /// [tagFilters] Set of tags.
  ScalingPlanApplicationSource({
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
      cloudformationStackArn: map['cloudformationStackArn'] == null ? null : (map['cloudformationStackArn'] as String).input(),
      tagFilters: map['tagFilters'] == null ? null : (pulumi.Input.decodeList<ScalingPlanApplicationSourceTagFilter>(map['tagFilters'], (value) => ScalingPlanApplicationSourceTagFilter.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}


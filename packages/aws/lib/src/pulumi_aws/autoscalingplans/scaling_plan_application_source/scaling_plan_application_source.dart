// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../scaling_plan_application_source_tag_filter/scaling_plan_application_source_tag_filter.dart';

class ScalingPlanApplicationSource {
  /// ARN of a AWS CloudFormation stack.
  final String? cloudformationStackArn;

  /// Set of tags.
  final List<ScalingPlanApplicationSourceTagFilter>? tagFilters;

  ScalingPlanApplicationSource({
    this.cloudformationStackArn,
    this.tagFilters,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cloudformationStackArnValue = cloudformationStackArn;
    if (cloudformationStackArnValue != null) {
      map['cloudformationStackArn'] = cloudformationStackArnValue;
    }
    final tagFiltersValue = tagFilters;
    if (tagFiltersValue != null) {
      map['tagFilters'] = Input.encodeList<
          ScalingPlanApplicationSourceTagFilter,
          Map<String, dynamic>>(tagFiltersValue, (value) => value.toMap());
    }
    return map;
  }

  factory ScalingPlanApplicationSource.fromMap(Map<String, dynamic> map) {
    return ScalingPlanApplicationSource(
      cloudformationStackArn: map['cloudformationStackArn'] == null
          ? null
          : map['cloudformationStackArn'] as String,
      tagFilters: map['tagFilters'] == null
          ? null
          : Input.decodeList<ScalingPlanApplicationSourceTagFilter>(
              map['tagFilters'],
              (value) => ScalingPlanApplicationSourceTagFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}

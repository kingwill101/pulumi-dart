// ignore_for_file: unused_element, unnecessary_cast

import '../lifecycle_policy_count_type/lifecycle_policy_count_type.dart';
import '../lifecycle_policy_tag_status/lifecycle_policy_tag_status.dart';

/// Represents selection criteria for an ECR lifecycle policy rule.
class LifecyclePolicySelection {
  /// The count number to use with the count type.
  final int countNumber;

  /// The type of count to perform. Either 'imageCountMoreThan' or 'sinceImagePushed'.
  final LifecyclePolicyCountType countType;

  /// The unit of time for sinceImagePushed. Either 'days'.
  final String? countUnit;

  /// A list of image tag prefixes on which to take action.
  final List<String>? tagPrefixList;

  /// The tag status of the image. Either 'tagged', 'untagged', or 'any'.
  final LifecyclePolicyTagStatus tagStatus;

  LifecyclePolicySelection({
    required this.countNumber,
    required this.countType,
    this.countUnit,
    this.tagPrefixList,
    required this.tagStatus,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['countNumber'] = countNumber;
    map['countType'] = countType.value;
    final countUnitValue = countUnit;
    if (countUnitValue != null) {
      map['countUnit'] = countUnitValue;
    }
    final tagPrefixListValue = tagPrefixList;
    if (tagPrefixListValue != null) {
      map['tagPrefixList'] = tagPrefixListValue;
    }
    map['tagStatus'] = tagStatus.value;
    return map;
  }

  factory LifecyclePolicySelection.fromMap(Map<String, dynamic> map) {
    return LifecyclePolicySelection(
      countNumber: map['countNumber'] as int,
      countType: LifecyclePolicyCountType.fromValue(map['countType'] as String),
      countUnit: map['countUnit'] == null ? null : map['countUnit'] as String,
      tagPrefixList: map['tagPrefixList'] == null
          ? null
          : (map['tagPrefixList'] as List).cast<String>(),
      tagStatus: LifecyclePolicyTagStatus.fromValue(map['tagStatus'] as String),
    );
  }
}

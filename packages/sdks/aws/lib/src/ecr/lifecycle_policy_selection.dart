// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'lifecycle_policy_count_type.dart';
import 'lifecycle_policy_tag_status.dart';

/// Represents selection criteria for an ECR lifecycle policy rule.
class LifecyclePolicySelection {
  /// The count number to use with the count type.
  final pulumi.Input<int> countNumber;
  /// The type of count to perform. Either 'imageCountMoreThan' or 'sinceImagePushed'.
  final pulumi.Input<LifecyclePolicyCountType> countType;
  /// The unit of time for sinceImagePushed. Either 'days'.
  final pulumi.Input<String>? countUnit;
  /// A list of image tag prefixes on which to take action.
  final pulumi.Input<List<String>>? tagPrefixList;
  /// The tag status of the image. Either 'tagged', 'untagged', or 'any'.
  final pulumi.Input<LifecyclePolicyTagStatus> tagStatus;

  /// Creates a new [LifecyclePolicySelection].
  /// [countNumber] The count number to use with the count type.
  /// [countType] The type of count to perform. Either 'imageCountMoreThan' or 'sinceImagePushed'.
  /// [countUnit] The unit of time for sinceImagePushed. Either 'days'.
  /// [tagPrefixList] A list of image tag prefixes on which to take action.
  /// [tagStatus] The tag status of the image. Either 'tagged', 'untagged', or 'any'.
  LifecyclePolicySelection({
    required this.countNumber,
    required this.countType,
    this.countUnit,
    this.tagPrefixList,
    required this.tagStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'countNumber': countNumber,
      'countType': pulumi.Input.mapInputValue<LifecyclePolicyCountType, String>(countType, (value) => value.value),
      'countUnit': ?countUnit,
      'tagPrefixList': ?tagPrefixList,
      'tagStatus': pulumi.Input.mapInputValue<LifecyclePolicyTagStatus, String>(tagStatus, (value) => value.value),
    };
  }

  factory LifecyclePolicySelection.fromMap(Map<String, dynamic> map) {
    return LifecyclePolicySelection(
      countNumber: (map['countNumber'] as int).input(),
      countType: (LifecyclePolicyCountType.fromValue(map['countType']! as String)).input(),
      countUnit: map['countUnit'] == null ? null : ((map['countUnit'] as String).input()).input(),
      tagPrefixList: map['tagPrefixList'] == null ? null : (((map['tagPrefixList'] as List).cast<String>()).input()).input(),
      tagStatus: (LifecyclePolicyTagStatus.fromValue(map['tagStatus']! as String)).input(),
    );
  }
}


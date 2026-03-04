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
      'countType': pulumi.Input.mapInputValue<LifecyclePolicyCountType, String>(
        countType,
        (value) => value.wireValue,
      ),
      'countUnit': ?countUnit,
      'tagPrefixList': ?tagPrefixList,
      'tagStatus': pulumi.Input.mapInputValue<LifecyclePolicyTagStatus, String>(
        tagStatus,
        (value) => value.wireValue,
      ),
    };
  }

  factory LifecyclePolicySelection.fromMap(Map<String, dynamic> map) {
    return LifecyclePolicySelection(
      countNumber: pulumi.Input.fromValue(map['countNumber'] as int),
      countType: pulumi.Input.fromValue(
        LifecyclePolicyCountType.fromValue(map['countType']! as String),
      ),
      countUnit: (() {
        final guardedValue = map['countUnit'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tagPrefixList: (() {
        final guardedValue = map['tagPrefixList'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      tagStatus: pulumi.Input.fromValue(
        LifecyclePolicyTagStatus.fromValue(map['tagStatus']! as String),
      ),
    );
  }
}

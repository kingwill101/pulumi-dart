// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents selection criteria for an ECR lifecycle policy rule.
class LifecyclePolicySelection {
  /// The count number to use with the count type.
  final pulumi.Input<int> countNumber;
  /// The type of count to perform. Either 'imageCountMoreThan', 'sinceImagePushed', 'sinceImagePulled', or 'sinceImageTransitioned'.
  final pulumi.Input<dynamic> countType;
  /// The unit of time for count types based on image age. Required when 'countType' is 'sinceImagePushed', 'sinceImagePulled', or 'sinceImageTransitioned'. The only supported value is 'days'.
  final pulumi.Input<String?>? countUnit;
  /// The image storage class to select. Required when 'countType' is 'sinceImageTransitioned' (must be 'archive'). For 'imageCountMoreThan', 'sinceImagePushed', and 'sinceImagePulled', the only supported value is 'standard'. If omitted, ECR uses 'standard'.
  final pulumi.Input<String?>? storageClass;
  /// A list of image tag prefixes on which to take action.
  final pulumi.Input<List<String>?>? tagPrefixList;
  /// The tag status of the image. Either 'tagged', 'untagged', or 'any'.
  final pulumi.Input<dynamic> tagStatus;

  /// Creates a new [LifecyclePolicySelection].
  /// [countNumber] The count number to use with the count type.
  /// [countType] The type of count to perform. Either 'imageCountMoreThan', 'sinceImagePushed', 'sinceImagePulled', or 'sinceImageTransitioned'.
  /// [countUnit] The unit of time for count types based on image age. Required when 'countType' is 'sinceImagePushed', 'sinceImagePulled', or 'sinceImageTransitioned'. The only supported value is 'days'.
  /// [storageClass] The image storage class to select. Required when 'countType' is 'sinceImageTransitioned' (must be 'archive'). For 'imageCountMoreThan', 'sinceImagePushed', and 'sinceImagePulled', the only supported value is 'standard'. If omitted, ECR uses 'standard'.
  /// [tagPrefixList] A list of image tag prefixes on which to take action.
  /// [tagStatus] The tag status of the image. Either 'tagged', 'untagged', or 'any'.
  const LifecyclePolicySelection({
    required this.countNumber,
    required this.countType,
    this.countUnit,
    this.storageClass,
    this.tagPrefixList,
    required this.tagStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'countNumber': countNumber,
      'countType': countType,
      'countUnit': ?countUnit,
      'storageClass': ?storageClass,
      'tagPrefixList': ?tagPrefixList,
      'tagStatus': tagStatus,
    };
  }

  factory LifecyclePolicySelection.fromMap(Map<String, dynamic> map) {
    return LifecyclePolicySelection(
      countNumber: pulumi.Input.fromValue((map['countNumber'] as num).toInt()),
      countType: pulumi.Input.fromValue(map['countType']),
      countUnit: (() { final guardedValue = map['countUnit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageClass: (() { final guardedValue = map['storageClass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tagPrefixList: (() { final guardedValue = map['tagPrefixList']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tagStatus: pulumi.Input.fromValue(map['tagStatus']),
    );
  }
}

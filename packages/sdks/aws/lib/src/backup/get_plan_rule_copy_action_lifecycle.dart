// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPlanRuleCopyActionLifecycle {
  /// Number of days after creation that a recovery point is moved to cold storage.
  final pulumi.Input<int> coldStorageAfter;
  /// Number of days after creation that a recovery point is deleted.
  final pulumi.Input<int> deleteAfter;
  /// Whether the recovery point is transitioned to cold storage for supported resource types.
  final pulumi.Input<bool> optInToArchiveForSupportedResources;

  /// Creates a new [GetPlanRuleCopyActionLifecycle].
  /// [coldStorageAfter] Number of days after creation that a recovery point is moved to cold storage.
  /// [deleteAfter] Number of days after creation that a recovery point is deleted.
  /// [optInToArchiveForSupportedResources] Whether the recovery point is transitioned to cold storage for supported resource types.
  const GetPlanRuleCopyActionLifecycle({
    required this.coldStorageAfter,
    required this.deleteAfter,
    required this.optInToArchiveForSupportedResources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'coldStorageAfter': coldStorageAfter,
      'deleteAfter': deleteAfter,
      'optInToArchiveForSupportedResources': optInToArchiveForSupportedResources,
    };
  }

  factory GetPlanRuleCopyActionLifecycle.fromMap(Map<String, dynamic> map) {
    return GetPlanRuleCopyActionLifecycle(
      coldStorageAfter: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['coldStorageAfter'])),
      deleteAfter: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['deleteAfter'])),
      optInToArchiveForSupportedResources: pulumi.Input.fromValue(map['optInToArchiveForSupportedResources'] as bool),
    );
  }
}

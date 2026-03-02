// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PlanRuleLifecycle {
  /// Specifies the number of days after creation that a recovery point is moved to cold storage.
  final pulumi.Input<int>? coldStorageAfter;
  /// Specifies the number of days after creation that a recovery point is deleted. Must be 90 days greater than `cold_storage_after`.
  final pulumi.Input<int>? deleteAfter;
  /// This setting will instruct your backup plan to transition supported resources to archive (cold) storage tier in accordance with your lifecycle settings.
  final pulumi.Input<bool>? optInToArchiveForSupportedResources;

  /// Creates a new [PlanRuleLifecycle].
  /// [coldStorageAfter] Specifies the number of days after creation that a recovery point is moved to cold storage.
  /// [deleteAfter] Specifies the number of days after creation that a recovery point is deleted. Must be 90 days greater than `cold_storage_after`.
  /// [optInToArchiveForSupportedResources] This setting will instruct your backup plan to transition supported resources to archive (cold) storage tier in accordance with your lifecycle settings.
  PlanRuleLifecycle({
    this.coldStorageAfter,
    this.deleteAfter,
    this.optInToArchiveForSupportedResources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'coldStorageAfter': ?coldStorageAfter,
      'deleteAfter': ?deleteAfter,
      'optInToArchiveForSupportedResources': ?optInToArchiveForSupportedResources,
    };
  }

  factory PlanRuleLifecycle.fromMap(Map<String, dynamic> map) {
    return PlanRuleLifecycle(
      coldStorageAfter: map['coldStorageAfter'] == null ? null : ((map['coldStorageAfter'] as int).input()).input(),
      deleteAfter: map['deleteAfter'] == null ? null : ((map['deleteAfter'] as int).input()).input(),
      optInToArchiveForSupportedResources: map['optInToArchiveForSupportedResources'] == null ? null : ((map['optInToArchiveForSupportedResources'] as bool).input()).input(),
    );
  }
}


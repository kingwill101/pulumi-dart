// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PlanRuleCopyActionLifecycle {
  /// Specifies the number of days after creation that a recovery point is moved to cold storage.
  final pulumi.Input<int>? coldStorageAfter;

  /// Specifies the number of days after creation that a recovery point is deleted. Must be 90 days greater than `cold_storage_after`.
  final pulumi.Input<int>? deleteAfter;

  /// This setting will instruct your backup plan to transition supported resources to archive (cold) storage tier in accordance with your lifecycle settings.
  final pulumi.Input<bool>? optInToArchiveForSupportedResources;

  /// Creates a new [PlanRuleCopyActionLifecycle].
  /// [coldStorageAfter] Specifies the number of days after creation that a recovery point is moved to cold storage.
  /// [deleteAfter] Specifies the number of days after creation that a recovery point is deleted. Must be 90 days greater than `cold_storage_after`.
  /// [optInToArchiveForSupportedResources] This setting will instruct your backup plan to transition supported resources to archive (cold) storage tier in accordance with your lifecycle settings.
  PlanRuleCopyActionLifecycle({
    this.coldStorageAfter,
    this.deleteAfter,
    this.optInToArchiveForSupportedResources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'coldStorageAfter': ?coldStorageAfter,
      'deleteAfter': ?deleteAfter,
      'optInToArchiveForSupportedResources':
          ?optInToArchiveForSupportedResources,
    };
  }

  factory PlanRuleCopyActionLifecycle.fromMap(Map<String, dynamic> map) {
    return PlanRuleCopyActionLifecycle(
      coldStorageAfter: (() {
        final guardedValue = map['coldStorageAfter'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      deleteAfter: (() {
        final guardedValue = map['deleteAfter'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      optInToArchiveForSupportedResources: (() {
        final guardedValue = map['optInToArchiveForSupportedResources'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}

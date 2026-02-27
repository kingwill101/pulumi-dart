// ignore_for_file: unused_element, unnecessary_cast

class PlanRuleLifecycle {
  /// Specifies the number of days after creation that a recovery point is moved to cold storage.
  final int? coldStorageAfter;

  /// Specifies the number of days after creation that a recovery point is deleted. Must be 90 days greater than `cold_storage_after`.
  final int? deleteAfter;

  /// This setting will instruct your backup plan to transition supported resources to archive (cold) storage tier in accordance with your lifecycle settings.
  final bool? optInToArchiveForSupportedResources;

  PlanRuleLifecycle({
    this.coldStorageAfter,
    this.deleteAfter,
    this.optInToArchiveForSupportedResources,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final coldStorageAfterValue = coldStorageAfter;
    if (coldStorageAfterValue != null) {
      map['coldStorageAfter'] = coldStorageAfterValue;
    }
    final deleteAfterValue = deleteAfter;
    if (deleteAfterValue != null) {
      map['deleteAfter'] = deleteAfterValue;
    }
    final optInToArchiveForSupportedResourcesValue =
        optInToArchiveForSupportedResources;
    if (optInToArchiveForSupportedResourcesValue != null) {
      map['optInToArchiveForSupportedResources'] =
          optInToArchiveForSupportedResourcesValue;
    }
    return map;
  }

  factory PlanRuleLifecycle.fromMap(Map<String, dynamic> map) {
    return PlanRuleLifecycle(
      coldStorageAfter: map['coldStorageAfter'] == null
          ? null
          : map['coldStorageAfter'] as int,
      deleteAfter:
          map['deleteAfter'] == null ? null : map['deleteAfter'] as int,
      optInToArchiveForSupportedResources:
          map['optInToArchiveForSupportedResources'] == null
              ? null
              : map['optInToArchiveForSupportedResources'] as bool,
    );
  }
}

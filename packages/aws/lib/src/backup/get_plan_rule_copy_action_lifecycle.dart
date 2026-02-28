// ignore_for_file: unused_element, unnecessary_cast

class GetPlanRuleCopyActionLifecycle {
  final int coldStorageAfter;
  final int deleteAfter;
  final bool optInToArchiveForSupportedResources;

  /// Creates a new [GetPlanRuleCopyActionLifecycle].
  /// [coldStorageAfter] Required.
  /// [deleteAfter] Required.
  /// [optInToArchiveForSupportedResources] Required.
  GetPlanRuleCopyActionLifecycle({
    required this.coldStorageAfter,
    required this.deleteAfter,
    required this.optInToArchiveForSupportedResources,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['coldStorageAfter'] = coldStorageAfter;
    map['deleteAfter'] = deleteAfter;
    map['optInToArchiveForSupportedResources'] =
        optInToArchiveForSupportedResources;
    return map;
  }

  factory GetPlanRuleCopyActionLifecycle.fromMap(Map<String, dynamic> map) {
    return GetPlanRuleCopyActionLifecycle(
      coldStorageAfter: map['coldStorageAfter'] as int,
      deleteAfter: map['deleteAfter'] as int,
      optInToArchiveForSupportedResources:
          map['optInToArchiveForSupportedResources'] as bool,
    );
  }
}

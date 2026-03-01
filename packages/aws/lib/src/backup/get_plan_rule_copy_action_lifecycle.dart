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
    return <String, dynamic>{
      'coldStorageAfter': coldStorageAfter,
      'deleteAfter': deleteAfter,
      'optInToArchiveForSupportedResources':
          optInToArchiveForSupportedResources,
    };
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

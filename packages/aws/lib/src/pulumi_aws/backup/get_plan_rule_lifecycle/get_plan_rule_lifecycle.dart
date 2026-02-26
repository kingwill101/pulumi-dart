// ignore_for_file: unused_element, unnecessary_cast

class GetPlanRuleLifecycle {
  final int coldStorageAfter;
  final int deleteAfter;
  final bool optInToArchiveForSupportedResources;

  GetPlanRuleLifecycle({
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

  factory GetPlanRuleLifecycle.fromMap(Map<String, dynamic> map) {
    return GetPlanRuleLifecycle(
      coldStorageAfter: map['coldStorageAfter'] as int,
      deleteAfter: map['deleteAfter'] as int,
      optInToArchiveForSupportedResources:
          map['optInToArchiveForSupportedResources'] as bool,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast


class GetPlanRuleLifecycle {
  final int coldStorageAfter;
  final int deleteAfter;
  final bool optInToArchiveForSupportedResources;

  /// Creates a new [GetPlanRuleLifecycle].
  /// [coldStorageAfter] Required.
  /// [deleteAfter] Required.
  /// [optInToArchiveForSupportedResources] Required.
  GetPlanRuleLifecycle({
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

  factory GetPlanRuleLifecycle.fromMap(Map<String, dynamic> map) {
    return GetPlanRuleLifecycle(
      coldStorageAfter: map['coldStorageAfter'] as int,
      deleteAfter: map['deleteAfter'] as int,
      optInToArchiveForSupportedResources: map['optInToArchiveForSupportedResources'] as bool,
    );
  }
}


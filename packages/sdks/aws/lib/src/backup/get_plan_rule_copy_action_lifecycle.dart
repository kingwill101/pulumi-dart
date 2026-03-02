// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPlanRuleCopyActionLifecycle {
  final pulumi.Input<int> coldStorageAfter;
  final pulumi.Input<int> deleteAfter;
  final pulumi.Input<bool> optInToArchiveForSupportedResources;

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
      'optInToArchiveForSupportedResources': optInToArchiveForSupportedResources,
    };
  }

  factory GetPlanRuleCopyActionLifecycle.fromMap(Map<String, dynamic> map) {
    return GetPlanRuleCopyActionLifecycle(
      coldStorageAfter: (map['coldStorageAfter'] as int).input(),
      deleteAfter: (map['deleteAfter'] as int).input(),
      optInToArchiveForSupportedResources: (map['optInToArchiveForSupportedResources'] as bool).input(),
    );
  }
}


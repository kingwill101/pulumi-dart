// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPlanRuleLifecycle {
  final pulumi.Input<int> coldStorageAfter;
  final pulumi.Input<int> deleteAfter;
  final pulumi.Input<bool> optInToArchiveForSupportedResources;

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
      'optInToArchiveForSupportedResources':
          optInToArchiveForSupportedResources,
    };
  }

  factory GetPlanRuleLifecycle.fromMap(Map<String, dynamic> map) {
    return GetPlanRuleLifecycle(
      coldStorageAfter: pulumi.Input.fromValue(map['coldStorageAfter'] as int),
      deleteAfter: pulumi.Input.fromValue(map['deleteAfter'] as int),
      optInToArchiveForSupportedResources: pulumi.Input.fromValue(
        map['optInToArchiveForSupportedResources'] as bool,
      ),
    );
  }
}

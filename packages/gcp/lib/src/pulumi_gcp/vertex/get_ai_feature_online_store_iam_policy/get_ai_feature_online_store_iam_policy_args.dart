// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getAiFeatureOnlineStoreIamPolicy.
class GetAiFeatureOnlineStoreIamPolicyArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final Input<String> featureOnlineStore;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final Input<String>? project;

  /// The region of feature online store. eg us-central1 Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no region is provided in the parent identifier and no
  /// region is specified, it is taken from the provider configuration.
  final Input<String>? region;

  GetAiFeatureOnlineStoreIamPolicyArgs({
    required this.featureOnlineStore,
    this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['featureOnlineStore'] = featureOnlineStore;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetAiFeatureOnlineStoreIamPolicyArgs.fromMap(
      Map<String, dynamic> map) {
    return GetAiFeatureOnlineStoreIamPolicyArgs(
      featureOnlineStore: Input.asInput<String>(map['featureOnlineStore']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}

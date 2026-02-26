// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getAiFeatureOnlineStoreFeatureviewIamPolicy.
class GetAiFeatureOnlineStoreFeatureviewIamPolicyArgs {
  /// The name of the FeatureOnlineStore to use for the featureview. Used to find the parent resource to bind the IAM policy to
  final Input<String> featureOnlineStore;

  /// Used to find the parent resource to bind the IAM policy to
  final Input<String> featureView;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final Input<String>? project;

  /// The region for the resource. It should be the same as the featureonlinestore region. Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no region is provided in the parent identifier and no
  /// region is specified, it is taken from the provider configuration.
  final Input<String>? region;

  GetAiFeatureOnlineStoreFeatureviewIamPolicyArgs({
    required this.featureOnlineStore,
    required this.featureView,
    this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['featureOnlineStore'] = featureOnlineStore;
    map['featureView'] = featureView;
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

  factory GetAiFeatureOnlineStoreFeatureviewIamPolicyArgs.fromMap(
      Map<String, dynamic> map) {
    return GetAiFeatureOnlineStoreFeatureviewIamPolicyArgs(
      featureOnlineStore: Input.asInput<String>(map['featureOnlineStore']),
      featureView: Input.asInput<String>(map['featureView']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}

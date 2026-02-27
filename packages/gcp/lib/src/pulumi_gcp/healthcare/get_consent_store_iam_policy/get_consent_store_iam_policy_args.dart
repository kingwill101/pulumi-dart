// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getConsentStoreIamPolicy.
class GetConsentStoreIamPolicyArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> consentStoreId;

  /// Identifies the dataset addressed by this request. Must be in the format
  /// 'projects/{project}/locations/{location}/datasets/{dataset}'
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> dataset;

  GetConsentStoreIamPolicyArgs({
    required this.consentStoreId,
    required this.dataset,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['consentStoreId'] = consentStoreId;
    map['dataset'] = dataset;
    return map;
  }

  factory GetConsentStoreIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetConsentStoreIamPolicyArgs(
      consentStoreId: pulumi.Input.asInput<String>(map['consentStoreId']),
      dataset: pulumi.Input.asInput<String>(map['dataset']),
    );
  }
}

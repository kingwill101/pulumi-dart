// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getAiFeaturestoreEntitytypeIamPolicy.
class GetAiFeaturestoreEntitytypeIamPolicyArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final Input<String> entitytype;

  /// The name of the Featurestore to use, in the format projects/{project}/locations/{location}/featurestores/{featurestore}. Used to find the parent resource to bind the IAM policy to
  final Input<String> featurestore;

  GetAiFeaturestoreEntitytypeIamPolicyArgs({
    required this.entitytype,
    required this.featurestore,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['entitytype'] = entitytype;
    map['featurestore'] = featurestore;
    return map;
  }

  factory GetAiFeaturestoreEntitytypeIamPolicyArgs.fromMap(
      Map<String, dynamic> map) {
    return GetAiFeaturestoreEntitytypeIamPolicyArgs(
      entitytype: Input.asInput<String>(map['entitytype']),
      featurestore: Input.asInput<String>(map['featurestore']),
    );
  }
}

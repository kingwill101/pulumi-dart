// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getFeaturestoreEntityTypeIamPolicy.
class GetFeaturestoreEntityTypeIamPolicyAiplatformV1beta1Args {
  final pulumi.Input<String> entityTypeId;
  final pulumi.Input<String> featurestoreId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  GetFeaturestoreEntityTypeIamPolicyAiplatformV1beta1Args({
    required this.entityTypeId,
    required this.featurestoreId,
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['entityTypeId'] = entityTypeId;
    map['featurestoreId'] = featurestoreId;
    map['location'] = location;
    final optionsRequestedPolicyVersionValue = optionsRequestedPolicyVersion;
    if (optionsRequestedPolicyVersionValue != null) {
      map['optionsRequestedPolicyVersion'] = optionsRequestedPolicyVersionValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetFeaturestoreEntityTypeIamPolicyAiplatformV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return GetFeaturestoreEntityTypeIamPolicyAiplatformV1beta1Args(
      entityTypeId: pulumi.Input.asInput<String>(map['entityTypeId']),
      featurestoreId: pulumi.Input.asInput<String>(map['featurestoreId']),
      location: pulumi.Input.asInput<String>(map['location']),
      optionsRequestedPolicyVersion: pulumi.Input.asOptionalInput<int>(
          map['optionsRequestedPolicyVersion']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}

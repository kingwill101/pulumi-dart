// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getFeaturestoreEntityTypeIamPolicy.
class GetFeaturestoreEntityTypeIamPolicyArgs {
  final Input<String> entityTypeId;
  final Input<String> featurestoreId;
  final Input<String> location;
  final Input<int>? optionsRequestedPolicyVersion;
  final Input<String>? project;

  GetFeaturestoreEntityTypeIamPolicyArgs({
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

  factory GetFeaturestoreEntityTypeIamPolicyArgs.fromMap(
      Map<String, dynamic> map) {
    return GetFeaturestoreEntityTypeIamPolicyArgs(
      entityTypeId: Input.asInput<String>(map['entityTypeId']),
      featurestoreId: Input.asInput<String>(map['featurestoreId']),
      location: Input.asInput<String>(map['location']),
      optionsRequestedPolicyVersion:
          Input.asOptionalInput<int>(map['optionsRequestedPolicyVersion']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}

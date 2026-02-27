// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getConnectionProfileIamPolicy.
class GetConnectionProfileIamPolicyDatamigrationV1beta1Args {
  final pulumi.Input<String> connectionProfileId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  GetConnectionProfileIamPolicyDatamigrationV1beta1Args({
    required this.connectionProfileId,
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['connectionProfileId'] = connectionProfileId;
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

  factory GetConnectionProfileIamPolicyDatamigrationV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return GetConnectionProfileIamPolicyDatamigrationV1beta1Args(
      connectionProfileId:
          pulumi.Input.asInput<String>(map['connectionProfileId']),
      location: pulumi.Input.asInput<String>(map['location']),
      optionsRequestedPolicyVersion: pulumi.Input.asOptionalInput<int>(
          map['optionsRequestedPolicyVersion']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}

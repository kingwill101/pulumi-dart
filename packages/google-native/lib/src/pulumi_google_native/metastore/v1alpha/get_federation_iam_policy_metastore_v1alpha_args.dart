// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getFederationIamPolicy.
class GetFederationIamPolicyMetastoreV1alphaArgs {
  final pulumi.Input<String> federationId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  GetFederationIamPolicyMetastoreV1alphaArgs({
    required this.federationId,
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['federationId'] = federationId;
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

  factory GetFederationIamPolicyMetastoreV1alphaArgs.fromMap(
      Map<String, dynamic> map) {
    return GetFederationIamPolicyMetastoreV1alphaArgs(
      federationId: pulumi.Input.asInput<String>(map['federationId']),
      location: pulumi.Input.asInput<String>(map['location']),
      optionsRequestedPolicyVersion: pulumi.Input.asOptionalInput<int>(
          map['optionsRequestedPolicyVersion']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getConnectionIamPolicy.
class GetConnectionIamPolicyConnectorsV1Args {
  final pulumi.Input<String> connectionId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  GetConnectionIamPolicyConnectorsV1Args({
    required this.connectionId,
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['connectionId'] = connectionId;
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

  factory GetConnectionIamPolicyConnectorsV1Args.fromMap(
      Map<String, dynamic> map) {
    return GetConnectionIamPolicyConnectorsV1Args(
      connectionId: pulumi.Input.asInput<String>(map['connectionId']),
      location: pulumi.Input.asInput<String>(map['location']),
      optionsRequestedPolicyVersion: pulumi.Input.asOptionalInput<int>(
          map['optionsRequestedPolicyVersion']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}

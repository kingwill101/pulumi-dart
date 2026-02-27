// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getClientConnectorServiceIamPolicy.
class GetClientConnectorServiceIamPolicyBeyondcorpV1alphaArgs {
  final pulumi.Input<String> clientConnectorServiceId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  GetClientConnectorServiceIamPolicyBeyondcorpV1alphaArgs({
    required this.clientConnectorServiceId,
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clientConnectorServiceId'] = clientConnectorServiceId;
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

  factory GetClientConnectorServiceIamPolicyBeyondcorpV1alphaArgs.fromMap(
      Map<String, dynamic> map) {
    return GetClientConnectorServiceIamPolicyBeyondcorpV1alphaArgs(
      clientConnectorServiceId:
          pulumi.Input.asInput<String>(map['clientConnectorServiceId']),
      location: pulumi.Input.asInput<String>(map['location']),
      optionsRequestedPolicyVersion: pulumi.Input.asOptionalInput<int>(
          map['optionsRequestedPolicyVersion']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}

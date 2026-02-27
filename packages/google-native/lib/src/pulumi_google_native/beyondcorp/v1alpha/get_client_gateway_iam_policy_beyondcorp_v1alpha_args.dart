// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getClientGatewayIamPolicy.
class GetClientGatewayIamPolicyBeyondcorpV1alphaArgs {
  final pulumi.Input<String> clientGatewayId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  GetClientGatewayIamPolicyBeyondcorpV1alphaArgs({
    required this.clientGatewayId,
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clientGatewayId'] = clientGatewayId;
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

  factory GetClientGatewayIamPolicyBeyondcorpV1alphaArgs.fromMap(
      Map<String, dynamic> map) {
    return GetClientGatewayIamPolicyBeyondcorpV1alphaArgs(
      clientGatewayId: pulumi.Input.asInput<String>(map['clientGatewayId']),
      location: pulumi.Input.asInput<String>(map['location']),
      optionsRequestedPolicyVersion: pulumi.Input.asOptionalInput<int>(
          map['optionsRequestedPolicyVersion']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}

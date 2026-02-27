// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getAppGatewayIamPolicy.
class GetAppGatewayIamPolicyBeyondcorpV1alphaArgs {
  final pulumi.Input<String> appGatewayId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  GetAppGatewayIamPolicyBeyondcorpV1alphaArgs({
    required this.appGatewayId,
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['appGatewayId'] = appGatewayId;
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

  factory GetAppGatewayIamPolicyBeyondcorpV1alphaArgs.fromMap(
      Map<String, dynamic> map) {
    return GetAppGatewayIamPolicyBeyondcorpV1alphaArgs(
      appGatewayId: pulumi.Input.asInput<String>(map['appGatewayId']),
      location: pulumi.Input.asInput<String>(map['location']),
      optionsRequestedPolicyVersion: pulumi.Input.asOptionalInput<int>(
          map['optionsRequestedPolicyVersion']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}

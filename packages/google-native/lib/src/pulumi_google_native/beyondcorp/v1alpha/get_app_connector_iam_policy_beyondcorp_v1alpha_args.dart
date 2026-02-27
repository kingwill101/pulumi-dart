// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getAppConnectorIamPolicy.
class GetAppConnectorIamPolicyBeyondcorpV1alphaArgs {
  final pulumi.Input<String> appConnectorId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  GetAppConnectorIamPolicyBeyondcorpV1alphaArgs({
    required this.appConnectorId,
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['appConnectorId'] = appConnectorId;
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

  factory GetAppConnectorIamPolicyBeyondcorpV1alphaArgs.fromMap(
      Map<String, dynamic> map) {
    return GetAppConnectorIamPolicyBeyondcorpV1alphaArgs(
      appConnectorId: pulumi.Input.asInput<String>(map['appConnectorId']),
      location: pulumi.Input.asInput<String>(map['location']),
      optionsRequestedPolicyVersion: pulumi.Input.asOptionalInput<int>(
          map['optionsRequestedPolicyVersion']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}

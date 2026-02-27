// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getApiConfigIamPolicy.
class GetApiConfigIamPolicyApigatewayV1betaArgs {
  final pulumi.Input<String> apiId;
  final pulumi.Input<String> configId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  GetApiConfigIamPolicyApigatewayV1betaArgs({
    required this.apiId,
    required this.configId,
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['apiId'] = apiId;
    map['configId'] = configId;
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

  factory GetApiConfigIamPolicyApigatewayV1betaArgs.fromMap(
      Map<String, dynamic> map) {
    return GetApiConfigIamPolicyApigatewayV1betaArgs(
      apiId: pulumi.Input.asInput<String>(map['apiId']),
      configId: pulumi.Input.asInput<String>(map['configId']),
      location: pulumi.Input.asInput<String>(map['location']),
      optionsRequestedPolicyVersion: pulumi.Input.asOptionalInput<int>(
          map['optionsRequestedPolicyVersion']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}

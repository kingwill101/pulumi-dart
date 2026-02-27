// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getConnectivityTestIamPolicy.
class GetConnectivityTestIamPolicyNetworkmanagementV1beta1Args {
  final pulumi.Input<String> connectivityTestId;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  GetConnectivityTestIamPolicyNetworkmanagementV1beta1Args({
    required this.connectivityTestId,
    this.optionsRequestedPolicyVersion,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['connectivityTestId'] = connectivityTestId;
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

  factory GetConnectivityTestIamPolicyNetworkmanagementV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return GetConnectivityTestIamPolicyNetworkmanagementV1beta1Args(
      connectivityTestId:
          pulumi.Input.asInput<String>(map['connectivityTestId']),
      optionsRequestedPolicyVersion: pulumi.Input.asOptionalInput<int>(
          map['optionsRequestedPolicyVersion']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}

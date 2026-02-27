// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getHubIamPolicy.
class GetHubIamPolicyNetworkconnectivityV1alpha1Args {
  final pulumi.Input<String> hubId;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  GetHubIamPolicyNetworkconnectivityV1alpha1Args({
    required this.hubId,
    this.optionsRequestedPolicyVersion,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['hubId'] = hubId;
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

  factory GetHubIamPolicyNetworkconnectivityV1alpha1Args.fromMap(
      Map<String, dynamic> map) {
    return GetHubIamPolicyNetworkconnectivityV1alpha1Args(
      hubId: pulumi.Input.asInput<String>(map['hubId']),
      optionsRequestedPolicyVersion: pulumi.Input.asOptionalInput<int>(
          map['optionsRequestedPolicyVersion']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}

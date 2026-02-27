// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getClientTlsPolicyIamPolicy.
class GetClientTlsPolicyIamPolicyNetworksecurityV1beta1Args {
  final pulumi.Input<String> clientTlsPolicyId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  GetClientTlsPolicyIamPolicyNetworksecurityV1beta1Args({
    required this.clientTlsPolicyId,
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clientTlsPolicyId'] = clientTlsPolicyId;
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

  factory GetClientTlsPolicyIamPolicyNetworksecurityV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return GetClientTlsPolicyIamPolicyNetworksecurityV1beta1Args(
      clientTlsPolicyId: pulumi.Input.asInput<String>(map['clientTlsPolicyId']),
      location: pulumi.Input.asInput<String>(map['location']),
      optionsRequestedPolicyVersion: pulumi.Input.asOptionalInput<int>(
          map['optionsRequestedPolicyVersion']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getFirewallPolicyIamPolicy.
class GetFirewallPolicyIamPolicyComputeV1Args {
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String> resource;

  GetFirewallPolicyIamPolicyComputeV1Args({
    this.optionsRequestedPolicyVersion,
    required this.resource,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final optionsRequestedPolicyVersionValue = optionsRequestedPolicyVersion;
    if (optionsRequestedPolicyVersionValue != null) {
      map['optionsRequestedPolicyVersion'] = optionsRequestedPolicyVersionValue;
    }
    map['resource'] = resource;
    return map;
  }

  factory GetFirewallPolicyIamPolicyComputeV1Args.fromMap(
      Map<String, dynamic> map) {
    return GetFirewallPolicyIamPolicyComputeV1Args(
      optionsRequestedPolicyVersion: pulumi.Input.asOptionalInput<int>(
          map['optionsRequestedPolicyVersion']),
      resource: pulumi.Input.asInput<String>(map['resource']),
    );
  }
}

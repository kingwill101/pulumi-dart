// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getFirewallPolicyIamPolicy.
class GetFirewallPolicyIamPolicyArgs3 {
  final Input<int>? optionsRequestedPolicyVersion;
  final Input<String> resource;

  GetFirewallPolicyIamPolicyArgs3({
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

  factory GetFirewallPolicyIamPolicyArgs3.fromMap(Map<String, dynamic> map) {
    return GetFirewallPolicyIamPolicyArgs3(
      optionsRequestedPolicyVersion:
          Input.asOptionalInput<int>(map['optionsRequestedPolicyVersion']),
      resource: Input.asInput<String>(map['resource']),
    );
  }
}

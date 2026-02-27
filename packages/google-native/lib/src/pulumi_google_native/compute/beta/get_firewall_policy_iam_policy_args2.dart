// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getFirewallPolicyIamPolicy.
class GetFirewallPolicyIamPolicyArgs2 {
  final Input<int>? optionsRequestedPolicyVersion;
  final Input<String> resource;

  GetFirewallPolicyIamPolicyArgs2({
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

  factory GetFirewallPolicyIamPolicyArgs2.fromMap(Map<String, dynamic> map) {
    return GetFirewallPolicyIamPolicyArgs2(
      optionsRequestedPolicyVersion:
          Input.asOptionalInput<int>(map['optionsRequestedPolicyVersion']),
      resource: Input.asInput<String>(map['resource']),
    );
  }
}

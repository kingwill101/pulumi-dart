// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getNetworkFirewallPolicyIamPolicy.
class GetNetworkFirewallPolicyIamPolicyArgs3 {
  final Input<int>? optionsRequestedPolicyVersion;
  final Input<String>? project;
  final Input<String> resource;

  GetNetworkFirewallPolicyIamPolicyArgs3({
    this.optionsRequestedPolicyVersion,
    this.project,
    required this.resource,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final optionsRequestedPolicyVersionValue = optionsRequestedPolicyVersion;
    if (optionsRequestedPolicyVersionValue != null) {
      map['optionsRequestedPolicyVersion'] = optionsRequestedPolicyVersionValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['resource'] = resource;
    return map;
  }

  factory GetNetworkFirewallPolicyIamPolicyArgs3.fromMap(
      Map<String, dynamic> map) {
    return GetNetworkFirewallPolicyIamPolicyArgs3(
      optionsRequestedPolicyVersion:
          Input.asOptionalInput<int>(map['optionsRequestedPolicyVersion']),
      project: Input.asOptionalInput<String>(map['project']),
      resource: Input.asInput<String>(map['resource']),
    );
  }
}

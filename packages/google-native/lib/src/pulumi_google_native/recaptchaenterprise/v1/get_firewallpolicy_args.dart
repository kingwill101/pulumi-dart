// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getFirewallpolicy.
class GetFirewallpolicyArgs {
  final pulumi.Input<String> firewallpolicyId;
  final pulumi.Input<String>? project;

  GetFirewallpolicyArgs({
    required this.firewallpolicyId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['firewallpolicyId'] = firewallpolicyId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetFirewallpolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetFirewallpolicyArgs(
      firewallpolicyId: pulumi.Input.asInput<String>(map['firewallpolicyId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}

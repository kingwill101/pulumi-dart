// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getFirewall.
class GetFirewallArgs {
  final pulumi.Input<String> firewall;
  final pulumi.Input<String>? project;

  GetFirewallArgs({
    required this.firewall,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['firewall'] = firewall;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetFirewallArgs.fromMap(Map<String, dynamic> map) {
    return GetFirewallArgs(
      firewall: pulumi.Input.asInput<String>(map['firewall']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}

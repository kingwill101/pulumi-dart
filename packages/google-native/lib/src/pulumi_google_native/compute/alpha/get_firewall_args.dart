// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getFirewall.
class GetFirewallArgs {
  final Input<String> firewall;
  final Input<String>? project;

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
      firewall: Input.asInput<String>(map['firewall']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}

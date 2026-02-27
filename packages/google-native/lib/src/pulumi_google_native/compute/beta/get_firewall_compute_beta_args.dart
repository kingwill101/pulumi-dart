// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getFirewall.
class GetFirewallComputeBetaArgs {
  final pulumi.Input<String> firewall;
  final pulumi.Input<String>? project;

  GetFirewallComputeBetaArgs({
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

  factory GetFirewallComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetFirewallComputeBetaArgs(
      firewall: pulumi.Input.asInput<String>(map['firewall']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getFirewall.
class GetFirewallComputeV1Args {
  final pulumi.Input<String> firewall;
  final pulumi.Input<String>? project;

  GetFirewallComputeV1Args({
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

  factory GetFirewallComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetFirewallComputeV1Args(
      firewall: pulumi.Input.asInput<String>(map['firewall']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}

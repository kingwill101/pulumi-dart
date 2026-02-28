// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_firewall_args_doc}
/// Arguments for getFirewall.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_firewall_args_doc}
class GetFirewallArgs {
  final pulumi.Input<String> firewall;
  final pulumi.Input<String>? project;

  /// Creates a new [GetFirewallArgs].
  /// [firewall] Required.
  /// [project] Optional.
  GetFirewallArgs({
    required String firewall,
    String? project,
  }) :
      firewall = pulumi.Input.asInput<String>(firewall),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firewall': firewall,
      'project': ?project,
    };
  }

  factory GetFirewallArgs.fromMap(Map<String, dynamic> map) {
    return GetFirewallArgs(
      firewall: map['firewall'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}


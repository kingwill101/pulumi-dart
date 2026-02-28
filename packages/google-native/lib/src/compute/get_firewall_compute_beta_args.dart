// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_firewall_compute_beta_args_doc}
/// Arguments for getFirewall.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_firewall_compute_beta_args_doc}
class GetFirewallComputeBetaArgs {
  final pulumi.Input<String> firewall;
  final pulumi.Input<String>? project;

  /// Creates a new [GetFirewallComputeBetaArgs].
  /// [firewall] Required.
  /// [project] Optional.
  GetFirewallComputeBetaArgs({
    required String firewall,
    String? project,
  })  : firewall = pulumi.Input.asInput<String>(firewall),
        project = pulumi.Input.asOptionalInput<String>(project);

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
      firewall: map['firewall'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

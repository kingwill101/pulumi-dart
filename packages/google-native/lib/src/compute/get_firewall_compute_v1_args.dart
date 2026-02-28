// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_firewall_compute_v1_args_doc}
/// Arguments for getFirewall.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_firewall_compute_v1_args_doc}
class GetFirewallComputeV1Args {
  final pulumi.Input<String> firewall;
  final pulumi.Input<String>? project;

  /// Creates a new [GetFirewallComputeV1Args].
  /// [firewall] Required.
  /// [project] Optional.
  GetFirewallComputeV1Args({
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

  factory GetFirewallComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetFirewallComputeV1Args(
      firewall: map['firewall'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}


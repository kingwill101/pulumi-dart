// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_simpleapplicationserver_get_server_firewall_rules_get_server_firewall_rules_args_doc}
/// Arguments for getServerFirewallRules.
/// {@endtemplate}
/// {@macro pulumi_simpleapplicationserver_get_server_firewall_rules_get_server_firewall_rules_args_doc}
class GetServerFirewallRulesArgs {
  /// A list of Firewall Rule IDs.
  final pulumi.Input<List<String>>? ids;
  /// Alibaba Cloud simple application server instance ID.
  final pulumi.Input<String> instanceId;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetServerFirewallRulesArgs].
  /// [ids] A list of Firewall Rule IDs.
  /// [instanceId] Alibaba Cloud simple application server instance ID.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  const GetServerFirewallRulesArgs({
    this.ids,
    required this.instanceId,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'instanceId': instanceId,
      'outputFile': ?outputFile,
    };
  }

  factory GetServerFirewallRulesArgs.fromMap(Map<String, dynamic> map) {
    return GetServerFirewallRulesArgs(
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


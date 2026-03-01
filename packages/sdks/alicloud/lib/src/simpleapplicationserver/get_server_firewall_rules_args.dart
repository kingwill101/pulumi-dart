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
  GetServerFirewallRulesArgs({
    pulumi.Output<List<String>>? ids,
    required pulumi.Output<String> instanceId,
    pulumi.Output<String>? outputFile,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'instanceId': instanceId,
      'outputFile': ?outputFile,
    };
  }

  factory GetServerFirewallRulesArgs.fromMap(Map<String, dynamic> map) {
    return GetServerFirewallRulesArgs(
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
    );
  }
}


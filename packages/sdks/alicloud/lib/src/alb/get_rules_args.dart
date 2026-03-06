// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_alb_get_rules_get_rules_args_doc}
/// Arguments for getRules.
/// {@endtemplate}
/// {@macro pulumi_alb_get_rules_get_rules_args_doc}
class GetRulesArgs {
  /// A list of Rule IDs.
  final pulumi.Input<List<String>>? ids;
  /// The listener ids.
  final pulumi.Input<List<String>>? listenerIds;
  /// The load balancer ids.
  final pulumi.Input<List<String>>? loadBalancerIds;
  /// A regex string to filter results by Rule name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The rule ids.
  final pulumi.Input<List<String>>? ruleIds;
  /// The status of the forwarding rule. Valid values: `Provisioning`, `Configuring`, `Available`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetRulesArgs].
  /// [ids] A list of Rule IDs.
  /// [listenerIds] The listener ids.
  /// [loadBalancerIds] The load balancer ids.
  /// [nameRegex] A regex string to filter results by Rule name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [ruleIds] The rule ids.
  /// [status] The status of the forwarding rule. Valid values: `Provisioning`, `Configuring`, `Available`.
  const GetRulesArgs({
    this.ids,
    this.listenerIds,
    this.loadBalancerIds,
    this.nameRegex,
    this.outputFile,
    this.ruleIds,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'listenerIds': ?listenerIds,
      'loadBalancerIds': ?loadBalancerIds,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'ruleIds': ?ruleIds,
      'status': ?status,
    };
  }

  factory GetRulesArgs.fromMap(Map<String, dynamic> map) {
    return GetRulesArgs(
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      listenerIds: (() { final guardedValue = map['listenerIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      loadBalancerIds: (() { final guardedValue = map['loadBalancerIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleIds: (() { final guardedValue = map['ruleIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


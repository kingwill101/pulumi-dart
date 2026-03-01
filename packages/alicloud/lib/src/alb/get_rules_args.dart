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
  GetRulesArgs({
    List<String>? ids,
    List<String>? listenerIds,
    List<String>? loadBalancerIds,
    String? nameRegex,
    String? outputFile,
    List<String>? ruleIds,
    String? status,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      listenerIds = pulumi.Input.asOptionalInput<List<String>>(listenerIds),
      loadBalancerIds = pulumi.Input.asOptionalInput<List<String>>(loadBalancerIds),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      ruleIds = pulumi.Input.asOptionalInput<List<String>>(ruleIds),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      listenerIds: map['listenerIds'] == null ? null : (map['listenerIds'] as List).cast<String>(),
      loadBalancerIds: map['loadBalancerIds'] == null ? null : (map['loadBalancerIds'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      ruleIds: map['ruleIds'] == null ? null : (map['ruleIds'] as List).cast<String>(),
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}


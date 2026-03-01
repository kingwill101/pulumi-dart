// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_firewall_apply_to.dart';
import 'get_firewall_rule.dart';

/// {@template pulumi_index_get_firewall_get_firewall_args_doc}
/// Arguments for getFirewall.
/// {@endtemplate}
/// {@macro pulumi_index_get_firewall_get_firewall_args_doc}
class GetFirewallArgs {
  /// Configuration of the Applied Resources
  final pulumi.Input<List<GetFirewallApplyTo>>? applyTos;
  /// ID of the firewall.
  final pulumi.Input<int>? id;
  /// (map) User-defined labels (key-value pairs)
  final pulumi.Input<Map<String, String>>? labels;
  /// Return most recent firewall if multiple are found.
  final pulumi.Input<bool>? mostRecent;
  /// Name of the firewall.
  final pulumi.Input<String>? name;
  /// (string) Configuration of a Rule from this Firewall.
  final pulumi.Input<List<GetFirewallRule>>? rules;
  /// [Label selector](https://docs.hetzner.cloud/reference/cloud#label-selector)
  final pulumi.Input<String>? withSelector;

  /// Creates a new [GetFirewallArgs].
  /// [applyTos] Configuration of the Applied Resources
  /// [id] ID of the firewall.
  /// [labels] (map) User-defined labels (key-value pairs)
  /// [mostRecent] Return most recent firewall if multiple are found.
  /// [name] Name of the firewall.
  /// [rules] (string) Configuration of a Rule from this Firewall.
  /// [withSelector] [Label selector](https://docs.hetzner.cloud/reference/cloud#label-selector)
  GetFirewallArgs({
    List<GetFirewallApplyTo>? applyTos,
    int? id,
    Map<String, String>? labels,
    bool? mostRecent,
    String? name,
    List<GetFirewallRule>? rules,
    String? withSelector,
  }) :
      applyTos = pulumi.Input.asOptionalInput<List<GetFirewallApplyTo>>(applyTos),
      id = pulumi.Input.asOptionalInput<int>(id),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      mostRecent = pulumi.Input.asOptionalInput<bool>(mostRecent),
      name = pulumi.Input.asOptionalInput<String>(name),
      rules = pulumi.Input.asOptionalInput<List<GetFirewallRule>>(rules),
      withSelector = pulumi.Input.asOptionalInput<String>(withSelector);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applyTos': ?pulumi.Input.mapOptionalInputValue<List<GetFirewallApplyTo>, List<Map<String, dynamic>>>(applyTos, (value) => pulumi.Input.encodeList<GetFirewallApplyTo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': ?id,
      'labels': ?labels,
      'mostRecent': ?mostRecent,
      'name': ?name,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<GetFirewallRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<GetFirewallRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'withSelector': ?withSelector,
    };
  }

  factory GetFirewallArgs.fromMap(Map<String, dynamic> map) {
    return GetFirewallArgs(
      applyTos: map['applyTos'] == null ? null : pulumi.Input.decodeList<GetFirewallApplyTo>(map['applyTos'], (value) => GetFirewallApplyTo.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] == null ? null : map['id'] as int,
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      mostRecent: map['mostRecent'] == null ? null : map['mostRecent'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
      rules: map['rules'] == null ? null : pulumi.Input.decodeList<GetFirewallRule>(map['rules'], (value) => GetFirewallRule.fromMap((value as Map).cast<String, dynamic>())),
      withSelector: map['withSelector'] == null ? null : map['withSelector'] as String,
    );
  }
}


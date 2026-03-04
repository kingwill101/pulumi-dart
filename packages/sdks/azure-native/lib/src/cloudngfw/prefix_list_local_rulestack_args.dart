// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudngfw_prefix_list_local_rulestack_args_doc}
/// The set of arguments for PrefixListLocalRulestack.
/// {@endtemplate}
/// {@macro pulumi_cloudngfw_prefix_list_local_rulestack_args_doc}
class PrefixListLocalRulestackArgs {
  /// comment for this object
  final pulumi.Input<String>? auditComment;

  /// prefix description
  final pulumi.Input<String>? description;

  /// LocalRulestack resource name
  final pulumi.Input<String> localRulestackName;

  /// Local Rule priority
  final pulumi.Input<String>? name;

  /// prefix list
  final pulumi.Input<List<String>> prefixList;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [PrefixListLocalRulestackArgs].
  /// [auditComment] comment for this object
  /// [description] prefix description
  /// [localRulestackName] LocalRulestack resource name
  /// [name] Local Rule priority
  /// [prefixList] prefix list
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  PrefixListLocalRulestackArgs({
    this.auditComment,
    this.description,
    required this.localRulestackName,
    this.name,
    required this.prefixList,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auditComment': ?auditComment,
      'description': ?description,
      'localRulestackName': localRulestackName,
      'name': ?name,
      'prefixList': prefixList,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory PrefixListLocalRulestackArgs.fromMap(Map<String, dynamic> map) {
    return PrefixListLocalRulestackArgs(
      auditComment: (() {
        final guardedValue = map['auditComment'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      localRulestackName: pulumi.Input.fromValue(
        map['localRulestackName'] as String,
      ),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      prefixList: pulumi.Input.fromValue(
        (map['prefixList'] as List).cast<String>(),
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}

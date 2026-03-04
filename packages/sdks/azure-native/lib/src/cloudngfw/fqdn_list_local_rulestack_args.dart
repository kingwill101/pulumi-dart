// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudngfw_fqdn_list_local_rulestack_args_doc}
/// The set of arguments for FqdnListLocalRulestack.
/// {@endtemplate}
/// {@macro pulumi_cloudngfw_fqdn_list_local_rulestack_args_doc}
class FqdnListLocalRulestackArgs {
  /// comment for this object
  final pulumi.Input<String>? auditComment;

  /// fqdn object description
  final pulumi.Input<String>? description;

  /// fqdn list
  final pulumi.Input<List<String>> fqdnList;

  /// LocalRulestack resource name
  final pulumi.Input<String> localRulestackName;

  /// fqdn list name
  final pulumi.Input<String>? name;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [FqdnListLocalRulestackArgs].
  /// [auditComment] comment for this object
  /// [description] fqdn object description
  /// [fqdnList] fqdn list
  /// [localRulestackName] LocalRulestack resource name
  /// [name] fqdn list name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  FqdnListLocalRulestackArgs({
    this.auditComment,
    this.description,
    required this.fqdnList,
    required this.localRulestackName,
    this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auditComment': ?auditComment,
      'description': ?description,
      'fqdnList': fqdnList,
      'localRulestackName': localRulestackName,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory FqdnListLocalRulestackArgs.fromMap(Map<String, dynamic> map) {
    return FqdnListLocalRulestackArgs(
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
      fqdnList: pulumi.Input.fromValue(
        (map['fqdnList'] as List).cast<String>(),
      ),
      localRulestackName: pulumi.Input.fromValue(
        map['localRulestackName'] as String,
      ),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}

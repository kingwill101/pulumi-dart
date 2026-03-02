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
      auditComment: map['auditComment'] == null ? null : (map['auditComment'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      fqdnList: ((map['fqdnList'] as List).cast<String>()).input(),
      localRulestackName: (map['localRulestackName'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}


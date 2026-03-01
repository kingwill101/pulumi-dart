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
    String? auditComment,
    String? description,
    required List<String> fqdnList,
    required String localRulestackName,
    String? name,
    required String resourceGroupName,
  }) :
      auditComment = pulumi.Input.asOptionalInput<String>(auditComment),
      description = pulumi.Input.asOptionalInput<String>(description),
      fqdnList = pulumi.Input.asInput<List<String>>(fqdnList),
      localRulestackName = pulumi.Input.asInput<String>(localRulestackName),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      auditComment: map['auditComment'] == null ? null : map['auditComment'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      fqdnList: (map['fqdnList'] as List).cast<String>(),
      localRulestackName: map['localRulestackName'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}


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
    String? auditComment,
    String? description,
    required String localRulestackName,
    String? name,
    required List<String> prefixList,
    required String resourceGroupName,
  }) :
      auditComment = pulumi.Input.asOptionalInput<String>(auditComment),
      description = pulumi.Input.asOptionalInput<String>(description),
      localRulestackName = pulumi.Input.asInput<String>(localRulestackName),
      name = pulumi.Input.asOptionalInput<String>(name),
      prefixList = pulumi.Input.asInput<List<String>>(prefixList),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      auditComment: map['auditComment'] == null ? null : map['auditComment'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      localRulestackName: map['localRulestackName'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      prefixList: (map['prefixList'] as List).cast<String>(),
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}


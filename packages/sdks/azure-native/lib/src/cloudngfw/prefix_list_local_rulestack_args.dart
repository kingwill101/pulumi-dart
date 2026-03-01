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
    pulumi.Output<String>? auditComment,
    pulumi.Output<String>? description,
    required pulumi.Output<String> localRulestackName,
    pulumi.Output<String>? name,
    required pulumi.Output<List<String>> prefixList,
    required pulumi.Output<String> resourceGroupName,
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
      auditComment: map['auditComment'] == null ? null : pulumi.Output.create<String>(map['auditComment'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      localRulestackName: pulumi.Output.create<String>(map['localRulestackName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      prefixList: pulumi.Output.create<List<String>>((map['prefixList'] as List).cast<String>()),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}


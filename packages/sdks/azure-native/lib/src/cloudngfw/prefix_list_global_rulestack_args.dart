// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudngfw_prefix_list_global_rulestack_args_doc}
/// The set of arguments for PrefixListGlobalRulestack.
/// {@endtemplate}
/// {@macro pulumi_cloudngfw_prefix_list_global_rulestack_args_doc}
class PrefixListGlobalRulestackArgs {
  /// comment for this object
  final pulumi.Input<String>? auditComment;
  /// prefix description
  final pulumi.Input<String>? description;
  /// GlobalRulestack resource name
  final pulumi.Input<String> globalRulestackName;
  /// Local Rule priority
  final pulumi.Input<String>? name;
  /// prefix list
  final pulumi.Input<List<String>> prefixList;

  /// Creates a new [PrefixListGlobalRulestackArgs].
  /// [auditComment] comment for this object
  /// [description] prefix description
  /// [globalRulestackName] GlobalRulestack resource name
  /// [name] Local Rule priority
  /// [prefixList] prefix list
  PrefixListGlobalRulestackArgs({
    pulumi.Output<String>? auditComment,
    pulumi.Output<String>? description,
    required pulumi.Output<String> globalRulestackName,
    pulumi.Output<String>? name,
    required pulumi.Output<List<String>> prefixList,
  }) :
      auditComment = pulumi.Input.asOptionalInput<String>(auditComment),
      description = pulumi.Input.asOptionalInput<String>(description),
      globalRulestackName = pulumi.Input.asInput<String>(globalRulestackName),
      name = pulumi.Input.asOptionalInput<String>(name),
      prefixList = pulumi.Input.asInput<List<String>>(prefixList);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auditComment': ?auditComment,
      'description': ?description,
      'globalRulestackName': globalRulestackName,
      'name': ?name,
      'prefixList': prefixList,
    };
  }

  factory PrefixListGlobalRulestackArgs.fromMap(Map<String, dynamic> map) {
    return PrefixListGlobalRulestackArgs(
      auditComment: map['auditComment'] == null ? null : pulumi.Output.create<String>(map['auditComment'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      globalRulestackName: pulumi.Output.create<String>(map['globalRulestackName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      prefixList: pulumi.Output.create<List<String>>((map['prefixList'] as List).cast<String>()),
    );
  }
}


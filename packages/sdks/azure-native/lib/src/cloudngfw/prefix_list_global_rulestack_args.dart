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
  const PrefixListGlobalRulestackArgs({
    this.auditComment,
    this.description,
    required this.globalRulestackName,
    this.name,
    required this.prefixList,
  });

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
      auditComment: (() { final guardedValue = map['auditComment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      globalRulestackName: pulumi.Input.fromValue(map['globalRulestackName'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      prefixList: pulumi.Input.fromValue((map['prefixList'] as List).cast<String>()),
    );
  }
}

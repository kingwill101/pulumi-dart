// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudngfw_fqdn_list_global_rulestack_args_doc}
/// The set of arguments for FqdnListGlobalRulestack.
/// {@endtemplate}
/// {@macro pulumi_cloudngfw_fqdn_list_global_rulestack_args_doc}
class FqdnListGlobalRulestackArgs {
  /// comment for this object
  final pulumi.Input<String>? auditComment;
  /// fqdn object description
  final pulumi.Input<String>? description;
  /// fqdn list
  final pulumi.Input<List<String>> fqdnList;
  /// GlobalRulestack resource name
  final pulumi.Input<String> globalRulestackName;
  /// fqdn list name
  final pulumi.Input<String>? name;

  /// Creates a new [FqdnListGlobalRulestackArgs].
  /// [auditComment] comment for this object
  /// [description] fqdn object description
  /// [fqdnList] fqdn list
  /// [globalRulestackName] GlobalRulestack resource name
  /// [name] fqdn list name
  FqdnListGlobalRulestackArgs({
    pulumi.Output<String>? auditComment,
    pulumi.Output<String>? description,
    required pulumi.Output<List<String>> fqdnList,
    required pulumi.Output<String> globalRulestackName,
    pulumi.Output<String>? name,
  }) :
      auditComment = pulumi.Input.asOptionalInput<String>(auditComment),
      description = pulumi.Input.asOptionalInput<String>(description),
      fqdnList = pulumi.Input.asInput<List<String>>(fqdnList),
      globalRulestackName = pulumi.Input.asInput<String>(globalRulestackName),
      name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auditComment': ?auditComment,
      'description': ?description,
      'fqdnList': fqdnList,
      'globalRulestackName': globalRulestackName,
      'name': ?name,
    };
  }

  factory FqdnListGlobalRulestackArgs.fromMap(Map<String, dynamic> map) {
    return FqdnListGlobalRulestackArgs(
      auditComment: map['auditComment'] == null ? null : pulumi.Output.create<String>(map['auditComment'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      fqdnList: pulumi.Output.create<List<String>>((map['fqdnList'] as List).cast<String>()),
      globalRulestackName: pulumi.Output.create<String>(map['globalRulestackName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
    );
  }
}


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
    this.auditComment,
    this.description,
    required this.fqdnList,
    required this.globalRulestackName,
    this.name,
  });

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
      globalRulestackName: pulumi.Input.fromValue(
        map['globalRulestackName'] as String,
      ),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

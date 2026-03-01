// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudngfw_get_certificate_object_global_rulestack_args_doc}
/// Arguments for getCertificateObjectGlobalRulestack.
/// {@endtemplate}
/// {@macro pulumi_cloudngfw_get_certificate_object_global_rulestack_args_doc}
class GetCertificateObjectGlobalRulestackArgs {
  /// GlobalRulestack resource name
  final pulumi.Input<String> globalRulestackName;
  /// certificate name
  final pulumi.Input<String> name;

  /// Creates a new [GetCertificateObjectGlobalRulestackArgs].
  /// [globalRulestackName] GlobalRulestack resource name
  /// [name] certificate name
  GetCertificateObjectGlobalRulestackArgs({
    required pulumi.Output<String> globalRulestackName,
    required pulumi.Output<String> name,
  }) :
      globalRulestackName = pulumi.Input.asInput<String>(globalRulestackName),
      name = pulumi.Input.asInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'globalRulestackName': globalRulestackName,
      'name': name,
    };
  }

  factory GetCertificateObjectGlobalRulestackArgs.fromMap(Map<String, dynamic> map) {
    return GetCertificateObjectGlobalRulestackArgs(
      globalRulestackName: pulumi.Output.create<String>(map['globalRulestackName'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
    );
  }
}


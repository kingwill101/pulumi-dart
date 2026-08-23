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
  const GetCertificateObjectGlobalRulestackArgs({
    required this.globalRulestackName,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'globalRulestackName': globalRulestackName,
      'name': name,
    };
  }

  factory GetCertificateObjectGlobalRulestackArgs.fromMap(Map<String, dynamic> map) {
    return GetCertificateObjectGlobalRulestackArgs(
      globalRulestackName: pulumi.Input.fromValue(map['globalRulestackName'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

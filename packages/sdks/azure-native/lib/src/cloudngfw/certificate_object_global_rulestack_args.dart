// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudngfw_certificate_object_global_rulestack_args_doc}
/// The set of arguments for CertificateObjectGlobalRulestack.
/// {@endtemplate}
/// {@macro pulumi_cloudngfw_certificate_object_global_rulestack_args_doc}
class CertificateObjectGlobalRulestackArgs {
  /// comment for this object
  final pulumi.Input<String?>? auditComment;
  /// use certificate self signed
  final pulumi.Input<dynamic> certificateSelfSigned;
  /// Resource Id of certificate signer, to be populated only when certificateSelfSigned is false
  final pulumi.Input<String?>? certificateSignerResourceId;
  /// user description for this object
  final pulumi.Input<String?>? description;
  /// GlobalRulestack resource name
  final pulumi.Input<String> globalRulestackName;
  /// certificate name
  final pulumi.Input<String?>? name;

  /// Creates a new [CertificateObjectGlobalRulestackArgs].
  /// [auditComment] comment for this object
  /// [certificateSelfSigned] use certificate self signed
  /// [certificateSignerResourceId] Resource Id of certificate signer, to be populated only when certificateSelfSigned is false
  /// [description] user description for this object
  /// [globalRulestackName] GlobalRulestack resource name
  /// [name] certificate name
  const CertificateObjectGlobalRulestackArgs({
    this.auditComment,
    required this.certificateSelfSigned,
    this.certificateSignerResourceId,
    this.description,
    required this.globalRulestackName,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auditComment': ?auditComment,
      'certificateSelfSigned': certificateSelfSigned,
      'certificateSignerResourceId': ?certificateSignerResourceId,
      'description': ?description,
      'globalRulestackName': globalRulestackName,
      'name': ?name,
    };
  }

  factory CertificateObjectGlobalRulestackArgs.fromMap(Map<String, dynamic> map) {
    return CertificateObjectGlobalRulestackArgs(
      auditComment: (() { final guardedValue = map['auditComment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certificateSelfSigned: pulumi.Input.fromValue(map['certificateSelfSigned']),
      certificateSignerResourceId: (() { final guardedValue = map['certificateSignerResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      globalRulestackName: pulumi.Input.fromValue(map['globalRulestackName'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

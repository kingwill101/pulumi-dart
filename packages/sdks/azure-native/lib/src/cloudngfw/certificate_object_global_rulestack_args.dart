// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudngfw_certificate_object_global_rulestack_args_doc}
/// The set of arguments for CertificateObjectGlobalRulestack.
/// {@endtemplate}
/// {@macro pulumi_cloudngfw_certificate_object_global_rulestack_args_doc}
class CertificateObjectGlobalRulestackArgs {
  /// comment for this object
  final pulumi.Input<String>? auditComment;
  /// use certificate self signed
  final pulumi.Input<String> certificateSelfSigned;
  /// Resource Id of certificate signer, to be populated only when certificateSelfSigned is false
  final pulumi.Input<String>? certificateSignerResourceId;
  /// user description for this object
  final pulumi.Input<String>? description;
  /// GlobalRulestack resource name
  final pulumi.Input<String> globalRulestackName;
  /// certificate name
  final pulumi.Input<String>? name;

  /// Creates a new [CertificateObjectGlobalRulestackArgs].
  /// [auditComment] comment for this object
  /// [certificateSelfSigned] use certificate self signed
  /// [certificateSignerResourceId] Resource Id of certificate signer, to be populated only when certificateSelfSigned is false
  /// [description] user description for this object
  /// [globalRulestackName] GlobalRulestack resource name
  /// [name] certificate name
  CertificateObjectGlobalRulestackArgs({
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
      auditComment: map['auditComment'] == null ? null : (map['auditComment']! as String).input(),
      certificateSelfSigned: (map['certificateSelfSigned'] as String).input(),
      certificateSignerResourceId: map['certificateSignerResourceId'] == null ? null : (map['certificateSignerResourceId']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      globalRulestackName: (map['globalRulestackName'] as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
    );
  }
}


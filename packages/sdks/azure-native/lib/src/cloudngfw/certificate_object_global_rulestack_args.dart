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
    pulumi.Output<String>? auditComment,
    required pulumi.Output<String> certificateSelfSigned,
    pulumi.Output<String>? certificateSignerResourceId,
    pulumi.Output<String>? description,
    required pulumi.Output<String> globalRulestackName,
    pulumi.Output<String>? name,
  }) :
      auditComment = pulumi.Input.asOptionalInput<String>(auditComment),
      certificateSelfSigned = pulumi.Input.asInput<String>(certificateSelfSigned),
      certificateSignerResourceId = pulumi.Input.asOptionalInput<String>(certificateSignerResourceId),
      description = pulumi.Input.asOptionalInput<String>(description),
      globalRulestackName = pulumi.Input.asInput<String>(globalRulestackName),
      name = pulumi.Input.asOptionalInput<String>(name);

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
      auditComment: map['auditComment'] == null ? null : pulumi.Output.create<String>(map['auditComment'] as String),
      certificateSelfSigned: pulumi.Output.create<String>(map['certificateSelfSigned'] as String),
      certificateSignerResourceId: map['certificateSignerResourceId'] == null ? null : pulumi.Output.create<String>(map['certificateSignerResourceId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      globalRulestackName: pulumi.Output.create<String>(map['globalRulestackName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
    );
  }
}


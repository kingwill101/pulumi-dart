// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudngfw_certificate_object_local_rulestack_args_doc}
/// The set of arguments for CertificateObjectLocalRulestack.
/// {@endtemplate}
/// {@macro pulumi_cloudngfw_certificate_object_local_rulestack_args_doc}
class CertificateObjectLocalRulestackArgs {
  /// comment for this object
  final pulumi.Input<String>? auditComment;
  /// use certificate self signed
  final pulumi.Input<String> certificateSelfSigned;
  /// Resource Id of certificate signer, to be populated only when certificateSelfSigned is false
  final pulumi.Input<String>? certificateSignerResourceId;
  /// user description for this object
  final pulumi.Input<String>? description;
  /// LocalRulestack resource name
  final pulumi.Input<String> localRulestackName;
  /// certificate name
  final pulumi.Input<String>? name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [CertificateObjectLocalRulestackArgs].
  /// [auditComment] comment for this object
  /// [certificateSelfSigned] use certificate self signed
  /// [certificateSignerResourceId] Resource Id of certificate signer, to be populated only when certificateSelfSigned is false
  /// [description] user description for this object
  /// [localRulestackName] LocalRulestack resource name
  /// [name] certificate name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  CertificateObjectLocalRulestackArgs({
    String? auditComment,
    required String certificateSelfSigned,
    String? certificateSignerResourceId,
    String? description,
    required String localRulestackName,
    String? name,
    required String resourceGroupName,
  }) :
      auditComment = pulumi.Input.asOptionalInput<String>(auditComment),
      certificateSelfSigned = pulumi.Input.asInput<String>(certificateSelfSigned),
      certificateSignerResourceId = pulumi.Input.asOptionalInput<String>(certificateSignerResourceId),
      description = pulumi.Input.asOptionalInput<String>(description),
      localRulestackName = pulumi.Input.asInput<String>(localRulestackName),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auditComment': ?auditComment,
      'certificateSelfSigned': certificateSelfSigned,
      'certificateSignerResourceId': ?certificateSignerResourceId,
      'description': ?description,
      'localRulestackName': localRulestackName,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory CertificateObjectLocalRulestackArgs.fromMap(Map<String, dynamic> map) {
    return CertificateObjectLocalRulestackArgs(
      auditComment: map['auditComment'] == null ? null : map['auditComment'] as String,
      certificateSelfSigned: map['certificateSelfSigned'] as String,
      certificateSignerResourceId: map['certificateSignerResourceId'] == null ? null : map['certificateSignerResourceId'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      localRulestackName: map['localRulestackName'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}


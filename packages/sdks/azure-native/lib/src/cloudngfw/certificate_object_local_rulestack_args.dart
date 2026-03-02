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
    this.auditComment,
    required this.certificateSelfSigned,
    this.certificateSignerResourceId,
    this.description,
    required this.localRulestackName,
    this.name,
    required this.resourceGroupName,
  });

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
      auditComment: map['auditComment'] == null ? null : (map['auditComment']! as String).input(),
      certificateSelfSigned: (map['certificateSelfSigned'] as String).input(),
      certificateSignerResourceId: map['certificateSignerResourceId'] == null ? null : (map['certificateSignerResourceId']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      localRulestackName: (map['localRulestackName'] as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}


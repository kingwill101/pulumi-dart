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
    pulumi.Output<String>? auditComment,
    required pulumi.Output<String> certificateSelfSigned,
    pulumi.Output<String>? certificateSignerResourceId,
    pulumi.Output<String>? description,
    required pulumi.Output<String> localRulestackName,
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
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
      auditComment: map['auditComment'] == null ? null : pulumi.Output.create<String>(map['auditComment'] as String),
      certificateSelfSigned: pulumi.Output.create<String>(map['certificateSelfSigned'] as String),
      certificateSignerResourceId: map['certificateSignerResourceId'] == null ? null : pulumi.Output.create<String>(map['certificateSignerResourceId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      localRulestackName: pulumi.Output.create<String>(map['localRulestackName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}


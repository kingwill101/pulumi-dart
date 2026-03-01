// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_privateca_v1_get_certificate_authority_args_doc}
/// Arguments for getCertificateAuthority.
/// {@endtemplate}
/// {@macro pulumi_privateca_v1_get_certificate_authority_args_doc}
class GetCertificateAuthorityArgs {
  final pulumi.Input<String> caPoolId;
  final pulumi.Input<String> certificateAuthorityId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetCertificateAuthorityArgs].
  /// [caPoolId] Required.
  /// [certificateAuthorityId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetCertificateAuthorityArgs({
    required String caPoolId,
    required String certificateAuthorityId,
    required String location,
    String? project,
  }) : caPoolId = pulumi.Input.asInput<String>(caPoolId),
       certificateAuthorityId = pulumi.Input.asInput<String>(
         certificateAuthorityId,
       ),
       location = pulumi.Input.asInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caPoolId': caPoolId,
      'certificateAuthorityId': certificateAuthorityId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetCertificateAuthorityArgs.fromMap(Map<String, dynamic> map) {
    return GetCertificateAuthorityArgs(
      caPoolId: map['caPoolId'] as String,
      certificateAuthorityId: map['certificateAuthorityId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

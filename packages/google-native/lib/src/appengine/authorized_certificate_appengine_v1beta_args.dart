// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_raw_data_appengine_v1beta.dart';

/// {@template pulumi_appengine_v1beta_authorized_certificate_appengine_v1beta_args_doc}
/// The set of arguments for AuthorizedCertificate.
/// {@endtemplate}
/// {@macro pulumi_appengine_v1beta_authorized_certificate_appengine_v1beta_args_doc}
class AuthorizedCertificateAppengineV1betaArgs {
  final pulumi.Input<String> appId;
  /// The SSL certificate serving the AuthorizedCertificate resource. This must be obtained independently from a certificate authority.
  final pulumi.Input<CertificateRawDataAppengineV1beta>? certificateRawData;
  /// The user-specified display name of the certificate. This is not guaranteed to be unique. Example: My Certificate.
  final pulumi.Input<String>? displayName;

  /// Creates a new [AuthorizedCertificateAppengineV1betaArgs].
  /// [appId] Required.
  /// [certificateRawData] The SSL certificate serving the AuthorizedCertificate resource. This must be obtained independently from a certificate authority.
  /// [displayName] The user-specified display name of the certificate. This is not guaranteed to be unique. Example: My Certificate.
  AuthorizedCertificateAppengineV1betaArgs({
    required String appId,
    CertificateRawDataAppengineV1beta? certificateRawData,
    String? displayName,
  }) :
      appId = pulumi.Input.asInput<String>(appId),
      certificateRawData = pulumi.Input.asOptionalInput<CertificateRawDataAppengineV1beta>(certificateRawData),
      displayName = pulumi.Input.asOptionalInput<String>(displayName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'certificateRawData': ?pulumi.Input.mapOptionalInputValue<CertificateRawDataAppengineV1beta, Map<String, dynamic>>(certificateRawData, (value) => value.toMap()),
      'displayName': ?displayName,
    };
  }

  factory AuthorizedCertificateAppengineV1betaArgs.fromMap(Map<String, dynamic> map) {
    return AuthorizedCertificateAppengineV1betaArgs(
      appId: map['appId'] as String,
      certificateRawData: map['certificateRawData'] == null ? null : CertificateRawDataAppengineV1beta.fromMap((map['certificateRawData'] as Map).cast<String, dynamic>()),
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
    );
  }
}


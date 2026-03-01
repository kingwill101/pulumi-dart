// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_raw_data.dart';

/// {@template pulumi_appengine_v1_authorized_certificate_args_doc}
/// The set of arguments for AuthorizedCertificate.
/// {@endtemplate}
/// {@macro pulumi_appengine_v1_authorized_certificate_args_doc}
class AuthorizedCertificateArgs {
  final pulumi.Input<String> appId;

  /// The SSL certificate serving the AuthorizedCertificate resource. This must be obtained independently from a certificate authority.
  final pulumi.Input<CertificateRawData>? certificateRawData;

  /// The user-specified display name of the certificate. This is not guaranteed to be unique. Example: My Certificate.
  final pulumi.Input<String>? displayName;

  /// Creates a new [AuthorizedCertificateArgs].
  /// [appId] Required.
  /// [certificateRawData] The SSL certificate serving the AuthorizedCertificate resource. This must be obtained independently from a certificate authority.
  /// [displayName] The user-specified display name of the certificate. This is not guaranteed to be unique. Example: My Certificate.
  AuthorizedCertificateArgs({
    required String appId,
    CertificateRawData? certificateRawData,
    String? displayName,
  }) : appId = pulumi.Input.asInput<String>(appId),
       certificateRawData = pulumi.Input.asOptionalInput<CertificateRawData>(
         certificateRawData,
       ),
       displayName = pulumi.Input.asOptionalInput<String>(displayName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'certificateRawData':
          ?pulumi.Input.mapOptionalInputValue<
            CertificateRawData,
            Map<String, dynamic>
          >(certificateRawData, (value) => value.toMap()),
      'displayName': ?displayName,
    };
  }

  factory AuthorizedCertificateArgs.fromMap(Map<String, dynamic> map) {
    return AuthorizedCertificateArgs(
      appId: map['appId'] as String,
      certificateRawData: map['certificateRawData'] == null
          ? null
          : CertificateRawData.fromMap(
              (map['certificateRawData'] as Map).cast<String, dynamic>(),
            ),
      displayName: map['displayName'] == null
          ? null
          : map['displayName'] as String,
    );
  }
}

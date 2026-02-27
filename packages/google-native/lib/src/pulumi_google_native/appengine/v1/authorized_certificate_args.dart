// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_raw_data.dart';

/// The set of arguments for AuthorizedCertificate.
class AuthorizedCertificateArgs {
  final pulumi.Input<String> appId;

  /// The SSL certificate serving the AuthorizedCertificate resource. This must be obtained independently from a certificate authority.
  final pulumi.Input<CertificateRawData>? certificateRawData;

  /// The user-specified display name of the certificate. This is not guaranteed to be unique. Example: My Certificate.
  final pulumi.Input<String>? displayName;

  AuthorizedCertificateArgs({
    required this.appId,
    this.certificateRawData,
    this.displayName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['appId'] = appId;
    final certificateRawDataValue = certificateRawData;
    if (certificateRawDataValue != null) {
      map['certificateRawData'] = pulumi.Input.mapOptionalInputValue<
              CertificateRawData, Map<String, dynamic>>(
          certificateRawDataValue, (value) => value.toMap());
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    return map;
  }

  factory AuthorizedCertificateArgs.fromMap(Map<String, dynamic> map) {
    return AuthorizedCertificateArgs(
      appId: pulumi.Input.asInput<String>(map['appId']),
      certificateRawData: pulumi.Input.asOptionalInput<CertificateRawData>(
          map['certificateRawData']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'certificate_raw_data3.dart';

/// The set of arguments for AuthorizedCertificate.
class AuthorizedCertificateArgs3 {
  final Input<String> appId;

  /// The SSL certificate serving the AuthorizedCertificate resource. This must be obtained independently from a certificate authority.
  final Input<CertificateRawData3>? certificateRawData;

  /// The user-specified display name of the certificate. This is not guaranteed to be unique. Example: My Certificate.
  final Input<String>? displayName;

  AuthorizedCertificateArgs3({
    required this.appId,
    this.certificateRawData,
    this.displayName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['appId'] = appId;
    final certificateRawDataValue = certificateRawData;
    if (certificateRawDataValue != null) {
      map['certificateRawData'] = Input.mapOptionalInputValue<
              CertificateRawData3, Map<String, dynamic>>(
          certificateRawDataValue, (value) => value.toMap());
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    return map;
  }

  factory AuthorizedCertificateArgs3.fromMap(Map<String, dynamic> map) {
    return AuthorizedCertificateArgs3(
      appId: Input.asInput<String>(map['appId']),
      certificateRawData:
          Input.asOptionalInput<CertificateRawData3>(map['certificateRawData']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
    );
  }
}

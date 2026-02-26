// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'certificate_raw_data2.dart';

/// The set of arguments for AuthorizedCertificate.
class AuthorizedCertificateArgs2 {
  final Input<String> appId;

  /// The SSL certificate serving the AuthorizedCertificate resource. This must be obtained independently from a certificate authority.
  final Input<CertificateRawData2>? certificateRawData;

  /// The user-specified display name of the certificate. This is not guaranteed to be unique. Example: My Certificate.
  final Input<String>? displayName;

  AuthorizedCertificateArgs2({
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
              CertificateRawData2, Map<String, dynamic>>(
          certificateRawDataValue, (value) => value.toMap());
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    return map;
  }

  factory AuthorizedCertificateArgs2.fromMap(Map<String, dynamic> map) {
    return AuthorizedCertificateArgs2(
      appId: Input.asInput<String>(map['appId']),
      certificateRawData:
          Input.asOptionalInput<CertificateRawData2>(map['certificateRawData']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
    );
  }
}

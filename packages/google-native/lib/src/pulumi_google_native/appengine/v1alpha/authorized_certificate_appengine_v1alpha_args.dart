// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_raw_data_appengine_v1alpha.dart';

/// The set of arguments for AuthorizedCertificate.
class AuthorizedCertificateAppengineV1alphaArgs {
  final pulumi.Input<String> appId;

  /// The SSL certificate serving the AuthorizedCertificate resource. This must be obtained independently from a certificate authority.
  final pulumi.Input<CertificateRawDataAppengineV1alpha>? certificateRawData;

  /// The user-specified display name of the certificate. This is not guaranteed to be unique. Example: My Certificate.
  final pulumi.Input<String>? displayName;

  AuthorizedCertificateAppengineV1alphaArgs({
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
              CertificateRawDataAppengineV1alpha, Map<String, dynamic>>(
          certificateRawDataValue, (value) => value.toMap());
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    return map;
  }

  factory AuthorizedCertificateAppengineV1alphaArgs.fromMap(
      Map<String, dynamic> map) {
    return AuthorizedCertificateAppengineV1alphaArgs(
      appId: pulumi.Input.asInput<String>(map['appId']),
      certificateRawData:
          pulumi.Input.asOptionalInput<CertificateRawDataAppengineV1alpha>(
              map['certificateRawData']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
    );
  }
}

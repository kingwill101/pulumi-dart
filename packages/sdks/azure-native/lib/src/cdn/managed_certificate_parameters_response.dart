// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Managed Certificate used for https
class ManagedCertificateParametersResponse {
  /// Certificate expiration date.
  final pulumi.Input<String> expirationDate;
  /// Subject name in the certificate.
  final pulumi.Input<String> subject;
  /// The type of the secret resource.
  /// Expected value is 'ManagedCertificate'.
  final pulumi.Input<String> type;

  /// Creates a new [ManagedCertificateParametersResponse].
  /// [expirationDate] Certificate expiration date.
  /// [subject] Subject name in the certificate.
  /// [type] The type of the secret resource.
  const ManagedCertificateParametersResponse({
    required this.expirationDate,
    required this.subject,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expirationDate': expirationDate,
      'subject': subject,
      'type': type,
    };
  }

  factory ManagedCertificateParametersResponse.fromMap(Map<String, dynamic> map) {
    return ManagedCertificateParametersResponse(
      expirationDate: pulumi.Input.fromValue(map['expirationDate'] as String),
      subject: pulumi.Input.fromValue(map['subject'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}


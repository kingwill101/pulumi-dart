// ignore_for_file: unused_element, unnecessary_cast

import 'certificate_config_x509_config_additional_extension_object_id.dart';

class CertificateConfigX509ConfigAdditionalExtension {
  /// Indicates whether or not this extension is critical (i.e., if the client does not know how to
  /// handle this extension, the client should consider this to be an error).
  final bool critical;
  /// Describes values that are relevant in a CA certificate.
  /// Structure is documented below.
  final CertificateConfigX509ConfigAdditionalExtensionObjectId objectId;
  /// The value of this X.509 extension. A base64-encoded string.
  final String value;

  /// Creates a new [CertificateConfigX509ConfigAdditionalExtension].
  /// [critical] Indicates whether or not this extension is critical (i.e., if the client does not know how to
  /// [objectId] Describes values that are relevant in a CA certificate.
  /// [value] The value of this X.509 extension. A base64-encoded string.
  CertificateConfigX509ConfigAdditionalExtension({
    required this.critical,
    required this.objectId,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'critical': critical,
      'objectId': objectId.toMap(),
      'value': value,
    };
  }

  factory CertificateConfigX509ConfigAdditionalExtension.fromMap(Map<String, dynamic> map) {
    return CertificateConfigX509ConfigAdditionalExtension(
      critical: map['critical'] as bool,
      objectId: CertificateConfigX509ConfigAdditionalExtensionObjectId.fromMap((map['objectId'] as Map).cast<String, dynamic>()),
      value: map['value'] as String,
    );
  }
}


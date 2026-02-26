// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../certificate_certificate_description_x509_description_additional_extension_object_id/certificate_certificate_description_x509_description_additional_extension_object_id.dart';

class CertificateCertificateDescriptionX509DescriptionAdditionalExtension {
  /// Indicates whether or not this extension is critical (i.e., if the client does not know how to
  /// handle this extension, the client should consider this to be an error).
  final bool? critical;

  /// Describes values that are relevant in a CA certificate.
  /// Structure is documented below.
  final List<
          CertificateCertificateDescriptionX509DescriptionAdditionalExtensionObjectId>?
      objectIds;

  /// The value of this X.509 extension. A base64-encoded string.
  final String? value;

  CertificateCertificateDescriptionX509DescriptionAdditionalExtension({
    this.critical,
    this.objectIds,
    this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final criticalValue = critical;
    if (criticalValue != null) {
      map['critical'] = criticalValue;
    }
    final objectIdsValue = objectIds;
    if (objectIdsValue != null) {
      map['objectIds'] = Input.encodeList<
          CertificateCertificateDescriptionX509DescriptionAdditionalExtensionObjectId,
          Map<String, dynamic>>(objectIdsValue, (value) => value.toMap());
    }
    final valueValue = value;
    if (valueValue != null) {
      map['value'] = valueValue;
    }
    return map;
  }

  factory CertificateCertificateDescriptionX509DescriptionAdditionalExtension.fromMap(
      Map<String, dynamic> map) {
    return CertificateCertificateDescriptionX509DescriptionAdditionalExtension(
      critical: map['critical'] == null ? null : map['critical'] as bool,
      objectIds: map['objectIds'] == null
          ? null
          : Input.decodeList<
                  CertificateCertificateDescriptionX509DescriptionAdditionalExtensionObjectId>(
              map['objectIds'],
              (value) =>
                  CertificateCertificateDescriptionX509DescriptionAdditionalExtensionObjectId
                      .fromMap((value as Map).cast<String, dynamic>())),
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

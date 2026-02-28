// ignore_for_file: unused_element, unnecessary_cast

import 'certificate_template_predefined_values_additional_extension_object_id.dart';

class CertificateTemplatePredefinedValuesAdditionalExtension {
  /// Optional. Indicates whether or not this extension is critical (i.e., if the client does not know how to handle this extension, the client should consider this to be an error).
  final bool? critical;

  /// Required. The OID for this X.509 extension.
  /// Structure is documented below.
  final CertificateTemplatePredefinedValuesAdditionalExtensionObjectId objectId;

  /// Required. The value of this X.509 extension.
  final String value;

  /// Creates a new [CertificateTemplatePredefinedValuesAdditionalExtension].
  /// [critical] Optional. Indicates whether or not this extension is critical (i.e., if the client does not know how to handle this extension, the client should consider this to be an error).
  /// [objectId] Required. The OID for this X.509 extension.
  /// [value] Required. The value of this X.509 extension.
  CertificateTemplatePredefinedValuesAdditionalExtension({
    this.critical,
    required this.objectId,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final criticalValue = critical;
    if (criticalValue != null) {
      map['critical'] = criticalValue;
    }
    map['objectId'] = objectId.toMap();
    map['value'] = value;
    return map;
  }

  factory CertificateTemplatePredefinedValuesAdditionalExtension.fromMap(
      Map<String, dynamic> map) {
    return CertificateTemplatePredefinedValuesAdditionalExtension(
      critical: map['critical'] == null ? null : map['critical'] as bool,
      objectId: CertificateTemplatePredefinedValuesAdditionalExtensionObjectId
          .fromMap((map['objectId'] as Map).cast<String, dynamic>()),
      value: map['value'] as String,
    );
  }
}

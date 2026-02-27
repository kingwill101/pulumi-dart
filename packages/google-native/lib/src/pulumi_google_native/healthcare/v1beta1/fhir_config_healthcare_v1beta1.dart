// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'field_metadata_healthcare_v1beta1.dart';

/// Specifies how to handle de-identification of a FHIR store.
class FhirConfigHealthcareV1beta1 {
  /// The behaviour for handling FHIR extensions that aren't otherwise specified for de-identification. If true, all extensions are preserved during de-identification by default. If false or unspecified, all extensions are removed during de-identification by default.
  final bool? defaultKeepExtensions;

  /// Specifies FHIR paths to match and how to transform them. Any field that is not matched by a FieldMetadata is passed through to the output dataset unmodified. All extensions will be processed according to `default_keep_extensions`. If a field can be matched by more than one FieldMetadata, the first FieldMetadata.Action is applied.
  final List<FieldMetadataHealthcareV1beta1>? fieldMetadataList;

  FhirConfigHealthcareV1beta1({
    this.defaultKeepExtensions,
    this.fieldMetadataList,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final defaultKeepExtensionsValue = defaultKeepExtensions;
    if (defaultKeepExtensionsValue != null) {
      map['defaultKeepExtensions'] = defaultKeepExtensionsValue;
    }
    final fieldMetadataListValue = fieldMetadataList;
    if (fieldMetadataListValue != null) {
      map['fieldMetadataList'] = pulumi.Input.encodeList<
              FieldMetadataHealthcareV1beta1, Map<String, dynamic>>(
          fieldMetadataListValue, (value) => value.toMap());
    }
    return map;
  }

  factory FhirConfigHealthcareV1beta1.fromMap(Map<String, dynamic> map) {
    return FhirConfigHealthcareV1beta1(
      defaultKeepExtensions: map['defaultKeepExtensions'] == null
          ? null
          : map['defaultKeepExtensions'] as bool,
      fieldMetadataList: map['fieldMetadataList'] == null
          ? null
          : pulumi.Input.decodeList<FieldMetadataHealthcareV1beta1>(
              map['fieldMetadataList'],
              (value) => FieldMetadataHealthcareV1beta1.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}

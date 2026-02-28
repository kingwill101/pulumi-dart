// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'field_metadata.dart';

/// Specifies how to handle de-identification of a FHIR store.
class FhirConfig {
  /// The behaviour for handling FHIR extensions that aren't otherwise specified for de-identification. If true, all extensions are preserved during de-identification by default. If false or unspecified, all extensions are removed during de-identification by default.
  final bool? defaultKeepExtensions;

  /// Specifies FHIR paths to match and how to transform them. Any field that is not matched by a FieldMetadata is passed through to the output dataset unmodified. All extensions will be processed according to `default_keep_extensions`.
  final List<FieldMetadata>? fieldMetadataList;

  /// Creates a new [FhirConfig].
  /// [defaultKeepExtensions] The behaviour for handling FHIR extensions that aren't otherwise specified for de-identification. If true, all extensions are preserved during de-identification by default. If false or unspecified, all extensions are removed during de-identification by default.
  /// [fieldMetadataList] Specifies FHIR paths to match and how to transform them. Any field that is not matched by a FieldMetadata is passed through to the output dataset unmodified. All extensions will be processed according to `default_keep_extensions`.
  FhirConfig({
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
      map['fieldMetadataList'] =
          pulumi.Input.encodeList<FieldMetadata, Map<String, dynamic>>(
              fieldMetadataListValue, (value) => value.toMap());
    }
    return map;
  }

  factory FhirConfig.fromMap(Map<String, dynamic> map) {
    return FhirConfig(
      defaultKeepExtensions: map['defaultKeepExtensions'] == null
          ? null
          : map['defaultKeepExtensions'] as bool,
      fieldMetadataList: map['fieldMetadataList'] == null
          ? null
          : pulumi.Input.decodeList<FieldMetadata>(
              map['fieldMetadataList'],
              (value) => FieldMetadata.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}

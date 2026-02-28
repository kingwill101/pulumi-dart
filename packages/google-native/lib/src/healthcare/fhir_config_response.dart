// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'field_metadata_response.dart';

/// Specifies how to handle de-identification of a FHIR store.
class FhirConfigResponse {
  /// The behaviour for handling FHIR extensions that aren't otherwise specified for de-identification. If true, all extensions are preserved during de-identification by default. If false or unspecified, all extensions are removed during de-identification by default.
  final bool defaultKeepExtensions;

  /// Specifies FHIR paths to match and how to transform them. Any field that is not matched by a FieldMetadata is passed through to the output dataset unmodified. All extensions will be processed according to `default_keep_extensions`.
  final List<FieldMetadataResponse> fieldMetadataList;

  /// Creates a new [FhirConfigResponse].
  /// [defaultKeepExtensions] The behaviour for handling FHIR extensions that aren't otherwise specified for de-identification. If true, all extensions are preserved during de-identification by default. If false or unspecified, all extensions are removed during de-identification by default.
  /// [fieldMetadataList] Specifies FHIR paths to match and how to transform them. Any field that is not matched by a FieldMetadata is passed through to the output dataset unmodified. All extensions will be processed according to `default_keep_extensions`.
  FhirConfigResponse({
    required this.defaultKeepExtensions,
    required this.fieldMetadataList,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['defaultKeepExtensions'] = defaultKeepExtensions;
    map['fieldMetadataList'] =
        pulumi.Input.encodeList<FieldMetadataResponse, Map<String, dynamic>>(
            fieldMetadataList, (value) => value.toMap());
    return map;
  }

  factory FhirConfigResponse.fromMap(Map<String, dynamic> map) {
    return FhirConfigResponse(
      defaultKeepExtensions: map['defaultKeepExtensions'] as bool,
      fieldMetadataList: pulumi.Input.decodeList<FieldMetadataResponse>(
          map['fieldMetadataList'],
          (value) => FieldMetadataResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}

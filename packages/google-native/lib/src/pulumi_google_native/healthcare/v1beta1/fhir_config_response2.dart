// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'field_metadata_response2.dart';

/// Specifies how to handle de-identification of a FHIR store.
class FhirConfigResponse2 {
  /// The behaviour for handling FHIR extensions that aren't otherwise specified for de-identification. If true, all extensions are preserved during de-identification by default. If false or unspecified, all extensions are removed during de-identification by default.
  final bool defaultKeepExtensions;

  /// Specifies FHIR paths to match and how to transform them. Any field that is not matched by a FieldMetadata is passed through to the output dataset unmodified. All extensions will be processed according to `default_keep_extensions`. If a field can be matched by more than one FieldMetadata, the first FieldMetadata.Action is applied.
  final List<FieldMetadataResponse2> fieldMetadataList;

  FhirConfigResponse2({
    required this.defaultKeepExtensions,
    required this.fieldMetadataList,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['defaultKeepExtensions'] = defaultKeepExtensions;
    map['fieldMetadataList'] =
        Input.encodeList<FieldMetadataResponse2, Map<String, dynamic>>(
            fieldMetadataList, (value) => value.toMap());
    return map;
  }

  factory FhirConfigResponse2.fromMap(Map<String, dynamic> map) {
    return FhirConfigResponse2(
      defaultKeepExtensions: map['defaultKeepExtensions'] as bool,
      fieldMetadataList: Input.decodeList<FieldMetadataResponse2>(
          map['fieldMetadataList'],
          (value) => FieldMetadataResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}

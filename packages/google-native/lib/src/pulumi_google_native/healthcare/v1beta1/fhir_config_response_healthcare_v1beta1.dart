// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'field_metadata_response_healthcare_v1beta1.dart';

/// Specifies how to handle de-identification of a FHIR store.
class FhirConfigResponseHealthcareV1beta1 {
  /// The behaviour for handling FHIR extensions that aren't otherwise specified for de-identification. If true, all extensions are preserved during de-identification by default. If false or unspecified, all extensions are removed during de-identification by default.
  final bool defaultKeepExtensions;

  /// Specifies FHIR paths to match and how to transform them. Any field that is not matched by a FieldMetadata is passed through to the output dataset unmodified. All extensions will be processed according to `default_keep_extensions`. If a field can be matched by more than one FieldMetadata, the first FieldMetadata.Action is applied.
  final List<FieldMetadataResponseHealthcareV1beta1> fieldMetadataList;

  FhirConfigResponseHealthcareV1beta1({
    required this.defaultKeepExtensions,
    required this.fieldMetadataList,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['defaultKeepExtensions'] = defaultKeepExtensions;
    map['fieldMetadataList'] = pulumi.Input.encodeList<
        FieldMetadataResponseHealthcareV1beta1,
        Map<String, dynamic>>(fieldMetadataList, (value) => value.toMap());
    return map;
  }

  factory FhirConfigResponseHealthcareV1beta1.fromMap(
      Map<String, dynamic> map) {
    return FhirConfigResponseHealthcareV1beta1(
      defaultKeepExtensions: map['defaultKeepExtensions'] as bool,
      fieldMetadataList:
          pulumi.Input.decodeList<FieldMetadataResponseHealthcareV1beta1>(
              map['fieldMetadataList'],
              (value) => FieldMetadataResponseHealthcareV1beta1.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}

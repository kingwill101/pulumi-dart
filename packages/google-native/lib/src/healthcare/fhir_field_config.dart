// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fhir_field_config_profile_type.dart';
import 'google_cloud_healthcare_v1beta1_deidentify_field_metadata.dart';
import 'google_cloud_healthcare_v1beta1_deidentify_options.dart';

/// Specifies how to handle the de-identification of a FHIR store.
class FhirFieldConfig {
  /// Specifies FHIR paths to match and how to transform them. Any field that is not matched by a FieldMetadata `action` is passed through to the output dataset unmodified. All extensions will be processed according to keep_extensions. If a field can be matched by more than one FieldMetadata `action`, the first `action` option is applied. Overrides options and the union field `profile` in FhirFieldConfig.
  final List<GoogleCloudHealthcareV1beta1DeidentifyFieldMetadata>?
      fieldMetadataList;

  /// Specifies additional options, overriding the base ProfileType.
  final GoogleCloudHealthcareV1beta1DeidentifyOptions? options;

  /// Base profile type for handling FHIR fields.
  final FhirFieldConfigProfileType? profileType;

  /// Creates a new [FhirFieldConfig].
  /// [fieldMetadataList] Specifies FHIR paths to match and how to transform them. Any field that is not matched by a FieldMetadata `action` is passed through to the output dataset unmodified. All extensions will be processed according to keep_extensions. If a field can be matched by more than one FieldMetadata `action`, the first `action` option is applied. Overrides options and the union field `profile` in FhirFieldConfig.
  /// [options] Specifies additional options, overriding the base ProfileType.
  /// [profileType] Base profile type for handling FHIR fields.
  FhirFieldConfig({
    this.fieldMetadataList,
    this.options,
    this.profileType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final fieldMetadataListValue = fieldMetadataList;
    if (fieldMetadataListValue != null) {
      map['fieldMetadataList'] = pulumi.Input.encodeList<
              GoogleCloudHealthcareV1beta1DeidentifyFieldMetadata,
              Map<String, dynamic>>(
          fieldMetadataListValue, (value) => value.toMap());
    }
    final optionsValue = options;
    if (optionsValue != null) {
      map['options'] = optionsValue.toMap();
    }
    final profileTypeValue = profileType;
    if (profileTypeValue != null) {
      map['profileType'] = profileTypeValue.value;
    }
    return map;
  }

  factory FhirFieldConfig.fromMap(Map<String, dynamic> map) {
    return FhirFieldConfig(
      fieldMetadataList: map['fieldMetadataList'] == null
          ? null
          : pulumi.Input.decodeList<
                  GoogleCloudHealthcareV1beta1DeidentifyFieldMetadata>(
              map['fieldMetadataList'],
              (value) =>
                  GoogleCloudHealthcareV1beta1DeidentifyFieldMetadata.fromMap(
                      (value as Map).cast<String, dynamic>())),
      options: map['options'] == null
          ? null
          : GoogleCloudHealthcareV1beta1DeidentifyOptions.fromMap(
              (map['options'] as Map).cast<String, dynamic>()),
      profileType: map['profileType'] == null
          ? null
          : FhirFieldConfigProfileType.fromValue(map['profileType'] as String),
    );
  }
}

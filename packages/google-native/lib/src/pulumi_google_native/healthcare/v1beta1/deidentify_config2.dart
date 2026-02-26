// ignore_for_file: unused_element, unnecessary_cast

import 'annotation_config.dart';
import 'deidentify_operation_metadata.dart';
import 'dicom_config2.dart';
import 'dicom_tag_config.dart';
import 'fhir_config2.dart';
import 'fhir_field_config.dart';
import 'image_config2.dart';
import 'text_config2.dart';

/// Configures de-id options specific to different types of content. Each submessage customizes the handling of an https://tools.ietf.org/html/rfc6838 media type or subtype. Configs are applied in a nested manner at runtime.
class DeidentifyConfig2 {
  /// Configures how annotations, meaning that the location and infoType of sensitive information findings, are created during de-identification. If unspecified, no annotations are created.
  final AnnotationConfig? annotation;

  /// Configures de-id of application/DICOM content. Deprecated. Use `dicom_tag_config` instead.
  final DicomConfig2? dicom;

  /// Configures de-id of application/DICOM content.
  final DicomTagConfig? dicomTagConfig;

  /// Configures de-id of application/FHIR content. Deprecated. Use `fhir_field_config` instead.
  final FhirConfig2? fhir;

  /// Configures de-id of application/FHIR content.
  final FhirFieldConfig? fhirFieldConfig;

  /// Configures the de-identification of image pixels in the source_dataset. Deprecated. Use `dicom_tag_config.options.clean_image` instead.
  final ImageConfig2? image;

  /// Details about the work the de-identify operation performed.
  final DeidentifyOperationMetadata? operationMetadata;

  /// Configures de-identification of text wherever it is found in the source_dataset.
  final TextConfig2? text;

  /// Ensures in-flight data remains in the region of origin during de-identification. Using this option results in a significant reduction of throughput, and is not compatible with `LOCATION` or `ORGANIZATION_NAME` infoTypes. If the deprecated DicomConfig or FhirConfig are used, then `LOCATION` must be excluded within TextConfig, and must also be excluded within ImageConfig if image redaction is required.
  final bool? useRegionalDataProcessing;

  DeidentifyConfig2({
    this.annotation,
    this.dicom,
    this.dicomTagConfig,
    this.fhir,
    this.fhirFieldConfig,
    this.image,
    this.operationMetadata,
    this.text,
    this.useRegionalDataProcessing,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final annotationValue = annotation;
    if (annotationValue != null) {
      map['annotation'] = annotationValue.toMap();
    }
    final dicomValue = dicom;
    if (dicomValue != null) {
      map['dicom'] = dicomValue.toMap();
    }
    final dicomTagConfigValue = dicomTagConfig;
    if (dicomTagConfigValue != null) {
      map['dicomTagConfig'] = dicomTagConfigValue.toMap();
    }
    final fhirValue = fhir;
    if (fhirValue != null) {
      map['fhir'] = fhirValue.toMap();
    }
    final fhirFieldConfigValue = fhirFieldConfig;
    if (fhirFieldConfigValue != null) {
      map['fhirFieldConfig'] = fhirFieldConfigValue.toMap();
    }
    final imageValue = image;
    if (imageValue != null) {
      map['image'] = imageValue.toMap();
    }
    final operationMetadataValue = operationMetadata;
    if (operationMetadataValue != null) {
      map['operationMetadata'] = operationMetadataValue.toMap();
    }
    final textValue = text;
    if (textValue != null) {
      map['text'] = textValue.toMap();
    }
    final useRegionalDataProcessingValue = useRegionalDataProcessing;
    if (useRegionalDataProcessingValue != null) {
      map['useRegionalDataProcessing'] = useRegionalDataProcessingValue;
    }
    return map;
  }

  factory DeidentifyConfig2.fromMap(Map<String, dynamic> map) {
    return DeidentifyConfig2(
      annotation: map['annotation'] == null
          ? null
          : AnnotationConfig.fromMap(
              (map['annotation'] as Map).cast<String, dynamic>()),
      dicom: map['dicom'] == null
          ? null
          : DicomConfig2.fromMap((map['dicom'] as Map).cast<String, dynamic>()),
      dicomTagConfig: map['dicomTagConfig'] == null
          ? null
          : DicomTagConfig.fromMap(
              (map['dicomTagConfig'] as Map).cast<String, dynamic>()),
      fhir: map['fhir'] == null
          ? null
          : FhirConfig2.fromMap((map['fhir'] as Map).cast<String, dynamic>()),
      fhirFieldConfig: map['fhirFieldConfig'] == null
          ? null
          : FhirFieldConfig.fromMap(
              (map['fhirFieldConfig'] as Map).cast<String, dynamic>()),
      image: map['image'] == null
          ? null
          : ImageConfig2.fromMap((map['image'] as Map).cast<String, dynamic>()),
      operationMetadata: map['operationMetadata'] == null
          ? null
          : DeidentifyOperationMetadata.fromMap(
              (map['operationMetadata'] as Map).cast<String, dynamic>()),
      text: map['text'] == null
          ? null
          : TextConfig2.fromMap((map['text'] as Map).cast<String, dynamic>()),
      useRegionalDataProcessing: map['useRegionalDataProcessing'] == null
          ? null
          : map['useRegionalDataProcessing'] as bool,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'annotation_config_response.dart';
import 'deidentify_operation_metadata_response.dart';
import 'dicom_config_response2.dart';
import 'dicom_tag_config_response.dart';
import 'fhir_config_response2.dart';
import 'fhir_field_config_response.dart';
import 'image_config_response2.dart';
import 'text_config_response2.dart';

/// Configures de-id options specific to different types of content. Each submessage customizes the handling of an https://tools.ietf.org/html/rfc6838 media type or subtype. Configs are applied in a nested manner at runtime.
class DeidentifyConfigResponse2 {
  /// Configures how annotations, meaning that the location and infoType of sensitive information findings, are created during de-identification. If unspecified, no annotations are created.
  final AnnotationConfigResponse annotation;

  /// Configures de-id of application/DICOM content. Deprecated. Use `dicom_tag_config` instead.
  final DicomConfigResponse2 dicom;

  /// Configures de-id of application/DICOM content.
  final DicomTagConfigResponse dicomTagConfig;

  /// Configures de-id of application/FHIR content. Deprecated. Use `fhir_field_config` instead.
  final FhirConfigResponse2 fhir;

  /// Configures de-id of application/FHIR content.
  final FhirFieldConfigResponse fhirFieldConfig;

  /// Configures the de-identification of image pixels in the source_dataset. Deprecated. Use `dicom_tag_config.options.clean_image` instead.
  final ImageConfigResponse2 image;

  /// Details about the work the de-identify operation performed.
  final DeidentifyOperationMetadataResponse operationMetadata;

  /// Configures de-identification of text wherever it is found in the source_dataset.
  final TextConfigResponse2 text;

  /// Ensures in-flight data remains in the region of origin during de-identification. Using this option results in a significant reduction of throughput, and is not compatible with `LOCATION` or `ORGANIZATION_NAME` infoTypes. If the deprecated DicomConfig or FhirConfig are used, then `LOCATION` must be excluded within TextConfig, and must also be excluded within ImageConfig if image redaction is required.
  final bool useRegionalDataProcessing;

  DeidentifyConfigResponse2({
    required this.annotation,
    required this.dicom,
    required this.dicomTagConfig,
    required this.fhir,
    required this.fhirFieldConfig,
    required this.image,
    required this.operationMetadata,
    required this.text,
    required this.useRegionalDataProcessing,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['annotation'] = annotation.toMap();
    map['dicom'] = dicom.toMap();
    map['dicomTagConfig'] = dicomTagConfig.toMap();
    map['fhir'] = fhir.toMap();
    map['fhirFieldConfig'] = fhirFieldConfig.toMap();
    map['image'] = image.toMap();
    map['operationMetadata'] = operationMetadata.toMap();
    map['text'] = text.toMap();
    map['useRegionalDataProcessing'] = useRegionalDataProcessing;
    return map;
  }

  factory DeidentifyConfigResponse2.fromMap(Map<String, dynamic> map) {
    return DeidentifyConfigResponse2(
      annotation: AnnotationConfigResponse.fromMap(
          (map['annotation'] as Map).cast<String, dynamic>()),
      dicom: DicomConfigResponse2.fromMap(
          (map['dicom'] as Map).cast<String, dynamic>()),
      dicomTagConfig: DicomTagConfigResponse.fromMap(
          (map['dicomTagConfig'] as Map).cast<String, dynamic>()),
      fhir: FhirConfigResponse2.fromMap(
          (map['fhir'] as Map).cast<String, dynamic>()),
      fhirFieldConfig: FhirFieldConfigResponse.fromMap(
          (map['fhirFieldConfig'] as Map).cast<String, dynamic>()),
      image: ImageConfigResponse2.fromMap(
          (map['image'] as Map).cast<String, dynamic>()),
      operationMetadata: DeidentifyOperationMetadataResponse.fromMap(
          (map['operationMetadata'] as Map).cast<String, dynamic>()),
      text: TextConfigResponse2.fromMap(
          (map['text'] as Map).cast<String, dynamic>()),
      useRegionalDataProcessing: map['useRegionalDataProcessing'] as bool,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_documentai_v1_document_page_detected_language_response.dart';
import 'google_cloud_documentai_v1_document_page_layout_response.dart';
import 'google_cloud_documentai_v1_document_provenance_response.dart';

/// A form field detected on the page.
class GoogleCloudDocumentaiV1DocumentPageFormFieldResponse {
  /// Created for Labeling UI to export key text. If corrections were made to the text identified by the `field_name.text_anchor`, this field will contain the correction.
  final String correctedKeyText;

  /// Created for Labeling UI to export value text. If corrections were made to the text identified by the `field_value.text_anchor`, this field will contain the correction.
  final String correctedValueText;

  /// Layout for the FormField name. e.g. `Address`, `Email`, `Grand total`, `Phone number`, etc.
  final GoogleCloudDocumentaiV1DocumentPageLayoutResponse fieldName;

  /// Layout for the FormField value.
  final GoogleCloudDocumentaiV1DocumentPageLayoutResponse fieldValue;

  /// A list of detected languages for name together with confidence.
  final List<GoogleCloudDocumentaiV1DocumentPageDetectedLanguageResponse>
      nameDetectedLanguages;

  /// The history of this annotation.
  final GoogleCloudDocumentaiV1DocumentProvenanceResponse provenance;

  /// A list of detected languages for value together with confidence.
  final List<GoogleCloudDocumentaiV1DocumentPageDetectedLanguageResponse>
      valueDetectedLanguages;

  /// If the value is non-textual, this field represents the type. Current valid values are: - blank (this indicates the `field_value` is normal text) - `unfilled_checkbox` - `filled_checkbox`
  final String valueType;

  GoogleCloudDocumentaiV1DocumentPageFormFieldResponse({
    required this.correctedKeyText,
    required this.correctedValueText,
    required this.fieldName,
    required this.fieldValue,
    required this.nameDetectedLanguages,
    required this.provenance,
    required this.valueDetectedLanguages,
    required this.valueType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['correctedKeyText'] = correctedKeyText;
    map['correctedValueText'] = correctedValueText;
    map['fieldName'] = fieldName.toMap();
    map['fieldValue'] = fieldValue.toMap();
    map['nameDetectedLanguages'] = Input.encodeList<
        GoogleCloudDocumentaiV1DocumentPageDetectedLanguageResponse,
        Map<String, dynamic>>(nameDetectedLanguages, (value) => value.toMap());
    map['provenance'] = provenance.toMap();
    map['valueDetectedLanguages'] = Input.encodeList<
        GoogleCloudDocumentaiV1DocumentPageDetectedLanguageResponse,
        Map<String, dynamic>>(valueDetectedLanguages, (value) => value.toMap());
    map['valueType'] = valueType;
    return map;
  }

  factory GoogleCloudDocumentaiV1DocumentPageFormFieldResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentPageFormFieldResponse(
      correctedKeyText: map['correctedKeyText'] as String,
      correctedValueText: map['correctedValueText'] as String,
      fieldName: GoogleCloudDocumentaiV1DocumentPageLayoutResponse.fromMap(
          (map['fieldName'] as Map).cast<String, dynamic>()),
      fieldValue: GoogleCloudDocumentaiV1DocumentPageLayoutResponse.fromMap(
          (map['fieldValue'] as Map).cast<String, dynamic>()),
      nameDetectedLanguages: Input.decodeList<
              GoogleCloudDocumentaiV1DocumentPageDetectedLanguageResponse>(
          map['nameDetectedLanguages'],
          (value) => GoogleCloudDocumentaiV1DocumentPageDetectedLanguageResponse
              .fromMap((value as Map).cast<String, dynamic>())),
      provenance: GoogleCloudDocumentaiV1DocumentProvenanceResponse.fromMap(
          (map['provenance'] as Map).cast<String, dynamic>()),
      valueDetectedLanguages: Input.decodeList<
              GoogleCloudDocumentaiV1DocumentPageDetectedLanguageResponse>(
          map['valueDetectedLanguages'],
          (value) => GoogleCloudDocumentaiV1DocumentPageDetectedLanguageResponse
              .fromMap((value as Map).cast<String, dynamic>())),
      valueType: map['valueType'] as String,
    );
  }
}

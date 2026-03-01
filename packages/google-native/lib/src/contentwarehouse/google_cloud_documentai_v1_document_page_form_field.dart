// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_documentai_v1_document_page_detected_language.dart';
import 'google_cloud_documentai_v1_document_page_layout.dart';
import 'google_cloud_documentai_v1_document_provenance.dart';

/// A form field detected on the page.
class GoogleCloudDocumentaiV1DocumentPageFormField {
  /// Created for Labeling UI to export key text. If corrections were made to the text identified by the `field_name.text_anchor`, this field will contain the correction.
  final String? correctedKeyText;

  /// Created for Labeling UI to export value text. If corrections were made to the text identified by the `field_value.text_anchor`, this field will contain the correction.
  final String? correctedValueText;

  /// Layout for the FormField name. e.g. `Address`, `Email`, `Grand total`, `Phone number`, etc.
  final GoogleCloudDocumentaiV1DocumentPageLayout? fieldName;

  /// Layout for the FormField value.
  final GoogleCloudDocumentaiV1DocumentPageLayout? fieldValue;

  /// A list of detected languages for name together with confidence.
  final List<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>?
  nameDetectedLanguages;

  /// The history of this annotation.
  final GoogleCloudDocumentaiV1DocumentProvenance? provenance;

  /// A list of detected languages for value together with confidence.
  final List<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>?
  valueDetectedLanguages;

  /// If the value is non-textual, this field represents the type. Current valid values are: - blank (this indicates the `field_value` is normal text) - `unfilled_checkbox` - `filled_checkbox`
  final String? valueType;

  /// Creates a new [GoogleCloudDocumentaiV1DocumentPageFormField].
  /// [correctedKeyText] Created for Labeling UI to export key text. If corrections were made to the text identified by the `field_name.text_anchor`, this field will contain the correction.
  /// [correctedValueText] Created for Labeling UI to export value text. If corrections were made to the text identified by the `field_value.text_anchor`, this field will contain the correction.
  /// [fieldName] Layout for the FormField name. e.g. `Address`, `Email`, `Grand total`, `Phone number`, etc.
  /// [fieldValue] Layout for the FormField value.
  /// [nameDetectedLanguages] A list of detected languages for name together with confidence.
  /// [provenance] The history of this annotation.
  /// [valueDetectedLanguages] A list of detected languages for value together with confidence.
  /// [valueType] If the value is non-textual, this field represents the type. Current valid values are: - blank (this indicates the `field_value` is normal text) - `unfilled_checkbox` - `filled_checkbox`
  GoogleCloudDocumentaiV1DocumentPageFormField({
    this.correctedKeyText,
    this.correctedValueText,
    this.fieldName,
    this.fieldValue,
    this.nameDetectedLanguages,
    this.provenance,
    this.valueDetectedLanguages,
    this.valueType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'correctedKeyText': ?correctedKeyText,
      'correctedValueText': ?correctedValueText,
      'fieldName': ?fieldName == null ? null : fieldName!.toMap(),
      'fieldValue': ?fieldValue == null ? null : fieldValue!.toMap(),
      'nameDetectedLanguages': ?nameDetectedLanguages == null
          ? null
          : pulumi.Input.encodeList<
              GoogleCloudDocumentaiV1DocumentPageDetectedLanguage,
              Map<String, dynamic>
            >(nameDetectedLanguages!, (value) => value.toMap()),
      'provenance': ?provenance == null ? null : provenance!.toMap(),
      'valueDetectedLanguages': ?valueDetectedLanguages == null
          ? null
          : pulumi.Input.encodeList<
              GoogleCloudDocumentaiV1DocumentPageDetectedLanguage,
              Map<String, dynamic>
            >(valueDetectedLanguages!, (value) => value.toMap()),
      'valueType': ?valueType,
    };
  }

  factory GoogleCloudDocumentaiV1DocumentPageFormField.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDocumentaiV1DocumentPageFormField(
      correctedKeyText: map['correctedKeyText'] == null
          ? null
          : map['correctedKeyText'] as String,
      correctedValueText: map['correctedValueText'] == null
          ? null
          : map['correctedValueText'] as String,
      fieldName: map['fieldName'] == null
          ? null
          : GoogleCloudDocumentaiV1DocumentPageLayout.fromMap(
              (map['fieldName'] as Map).cast<String, dynamic>(),
            ),
      fieldValue: map['fieldValue'] == null
          ? null
          : GoogleCloudDocumentaiV1DocumentPageLayout.fromMap(
              (map['fieldValue'] as Map).cast<String, dynamic>(),
            ),
      nameDetectedLanguages: map['nameDetectedLanguages'] == null
          ? null
          : pulumi.Input.decodeList<
              GoogleCloudDocumentaiV1DocumentPageDetectedLanguage
            >(
              map['nameDetectedLanguages'],
              (value) =>
                  GoogleCloudDocumentaiV1DocumentPageDetectedLanguage.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      provenance: map['provenance'] == null
          ? null
          : GoogleCloudDocumentaiV1DocumentProvenance.fromMap(
              (map['provenance'] as Map).cast<String, dynamic>(),
            ),
      valueDetectedLanguages: map['valueDetectedLanguages'] == null
          ? null
          : pulumi.Input.decodeList<
              GoogleCloudDocumentaiV1DocumentPageDetectedLanguage
            >(
              map['valueDetectedLanguages'],
              (value) =>
                  GoogleCloudDocumentaiV1DocumentPageDetectedLanguage.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      valueType: map['valueType'] == null ? null : map['valueType'] as String,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_contentwarehouse_v1_property_response.dart';
import 'google_cloud_documentai_v1_document_response.dart';

/// Result data returned by getDocument.
class GetDocumentResult {
  /// Document AI format to save the structured content, including OCR.
  final GoogleCloudDocumentaiV1DocumentResponse cloudAiDocument;

  /// Indicates the category (image, audio, video etc.) of the original content.
  final String contentCategory;

  /// The time when the document is created.
  final String createTime;

  /// The user who creates the document.
  final String creator;

  /// Display name of the document given by the user. This name will be displayed in the UI. Customer can populate this field with the name of the document. This differs from the 'title' field as 'title' is optional and stores the top heading in the document.
  final String displayName;

  /// Uri to display the document, for example, in the UI.
  final String displayUri;

  /// If linked to a Collection with RetentionPolicy, the date when the document becomes mutable.
  final String dispositionTime;

  /// The Document schema name. Format: projects/{project_number}/locations/{location}/documentSchemas/{document_schema_id}.
  final String documentSchemaName;

  /// Raw document content.
  final String inlineRawDocument;

  /// Indicates if the document has a legal hold on it.
  final bool legalHold;

  /// The resource name of the document. Format: projects/{project_number}/locations/{location}/documents/{document_id}. The name is ignored when creating a document.
  final String name;

  /// Other document format, such as PPTX, XLXS
  final String plainText;

  /// List of values that are user supplied metadata.
  final List<GoogleCloudContentwarehouseV1PropertyResponse> properties;

  /// This is used when DocAI was not used to load the document and parsing/ extracting is needed for the inline_raw_document. For example, if inline_raw_document is the byte representation of a PDF file, then this should be set to: RAW_DOCUMENT_FILE_TYPE_PDF.
  final String rawDocumentFileType;

  /// Raw document file in Cloud Storage path.
  final String rawDocumentPath;

  /// The reference ID set by customers. Must be unique per project and location.
  final String referenceId;

  /// If true, text extraction will not be performed.
  final bool textExtractionDisabled;

  /// If true, text extraction will be performed.
  final bool textExtractionEnabled;

  /// Title that describes the document. This can be the top heading or text that describes the document.
  final String title;

  /// The time when the document is last updated.
  final String updateTime;

  /// The user who lastly updates the document.
  final String updater;

  GetDocumentResult({
    required this.cloudAiDocument,
    required this.contentCategory,
    required this.createTime,
    required this.creator,
    required this.displayName,
    required this.displayUri,
    required this.dispositionTime,
    required this.documentSchemaName,
    required this.inlineRawDocument,
    required this.legalHold,
    required this.name,
    required this.plainText,
    required this.properties,
    required this.rawDocumentFileType,
    required this.rawDocumentPath,
    required this.referenceId,
    required this.textExtractionDisabled,
    required this.textExtractionEnabled,
    required this.title,
    required this.updateTime,
    required this.updater,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cloudAiDocument'] = cloudAiDocument.toMap();
    map['contentCategory'] = contentCategory;
    map['createTime'] = createTime;
    map['creator'] = creator;
    map['displayName'] = displayName;
    map['displayUri'] = displayUri;
    map['dispositionTime'] = dispositionTime;
    map['documentSchemaName'] = documentSchemaName;
    map['inlineRawDocument'] = inlineRawDocument;
    map['legalHold'] = legalHold;
    map['name'] = name;
    map['plainText'] = plainText;
    map['properties'] = pulumi.Input.encodeList<
        GoogleCloudContentwarehouseV1PropertyResponse,
        Map<String, dynamic>>(properties, (value) => value.toMap());
    map['rawDocumentFileType'] = rawDocumentFileType;
    map['rawDocumentPath'] = rawDocumentPath;
    map['referenceId'] = referenceId;
    map['textExtractionDisabled'] = textExtractionDisabled;
    map['textExtractionEnabled'] = textExtractionEnabled;
    map['title'] = title;
    map['updateTime'] = updateTime;
    map['updater'] = updater;
    return map;
  }

  factory GetDocumentResult.fromMap(Map<String, dynamic> map) {
    return GetDocumentResult(
      cloudAiDocument: GoogleCloudDocumentaiV1DocumentResponse.fromMap(
          (map['cloudAiDocument'] as Map).cast<String, dynamic>()),
      contentCategory: map['contentCategory'] as String,
      createTime: map['createTime'] as String,
      creator: map['creator'] as String,
      displayName: map['displayName'] as String,
      displayUri: map['displayUri'] as String,
      dispositionTime: map['dispositionTime'] as String,
      documentSchemaName: map['documentSchemaName'] as String,
      inlineRawDocument: map['inlineRawDocument'] as String,
      legalHold: map['legalHold'] as bool,
      name: map['name'] as String,
      plainText: map['plainText'] as String,
      properties: pulumi.Input.decodeList<
              GoogleCloudContentwarehouseV1PropertyResponse>(
          map['properties'],
          (value) => GoogleCloudContentwarehouseV1PropertyResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      rawDocumentFileType: map['rawDocumentFileType'] as String,
      rawDocumentPath: map['rawDocumentPath'] as String,
      referenceId: map['referenceId'] as String,
      textExtractionDisabled: map['textExtractionDisabled'] as bool,
      textExtractionEnabled: map['textExtractionEnabled'] as bool,
      title: map['title'] as String,
      updateTime: map['updateTime'] as String,
      updater: map['updater'] as String,
    );
  }
}

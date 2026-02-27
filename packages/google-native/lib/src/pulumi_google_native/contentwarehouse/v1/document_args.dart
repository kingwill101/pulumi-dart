// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'document_content_category.dart';
import 'document_raw_document_file_type.dart';
import 'google_cloud_contentwarehouse_v1_cloud_aidocument_option.dart';
import 'google_cloud_contentwarehouse_v1_property.dart';
import 'google_cloud_contentwarehouse_v1_request_metadata.dart';
import 'google_cloud_documentai_v1_document.dart';
import 'google_iam_v1_policy.dart';

/// The set of arguments for Document.
class DocumentArgs {
  /// Document AI format to save the structured content, including OCR.
  final Input<GoogleCloudDocumentaiV1Document>? cloudAiDocument;

  /// Request Option for processing Cloud AI Document in Document Warehouse. This field offers limited support for mapping entities from Cloud AI Document to Warehouse Document. Please consult with product team before using this field and other available options.
  final Input<GoogleCloudContentwarehouseV1CloudAIDocumentOption>?
      cloudAiDocumentOption;

  /// Indicates the category (image, audio, video etc.) of the original content.
  final Input<DocumentContentCategory>? contentCategory;

  /// Field mask for creating Document fields. If mask path is empty, it means all fields are masked. For the `FieldMask` definition, see https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask.
  final Input<String>? createMask;

  /// The user who creates the document.
  final Input<String>? creator;

  /// Display name of the document given by the user. This name will be displayed in the UI. Customer can populate this field with the name of the document. This differs from the 'title' field as 'title' is optional and stores the top heading in the document.
  final Input<String> displayName;

  /// Uri to display the document, for example, in the UI.
  final Input<String>? displayUri;

  /// The Document schema name. Format: projects/{project_number}/locations/{location}/documentSchemas/{document_schema_id}.
  final Input<String>? documentSchemaName;

  /// Raw document content.
  final Input<String>? inlineRawDocument;
  final Input<String>? location;

  /// The resource name of the document. Format: projects/{project_number}/locations/{location}/documents/{document_id}. The name is ignored when creating a document.
  final Input<String>? name;

  /// Other document format, such as PPTX, XLXS
  final Input<String>? plainText;

  /// Default document policy during creation. This refers to an Identity and Access (IAM) policy, which specifies access controls for the Document. Conditions defined in the policy will be ignored.
  final Input<GoogleIamV1Policy>? policy;
  final Input<String>? project;

  /// List of values that are user supplied metadata.
  final Input<List<GoogleCloudContentwarehouseV1Property>>? properties;

  /// This is used when DocAI was not used to load the document and parsing/ extracting is needed for the inline_raw_document. For example, if inline_raw_document is the byte representation of a PDF file, then this should be set to: RAW_DOCUMENT_FILE_TYPE_PDF.
  final Input<DocumentRawDocumentFileType>? rawDocumentFileType;

  /// Raw document file in Cloud Storage path.
  final Input<String>? rawDocumentPath;

  /// The reference ID set by customers. Must be unique per project and location.
  final Input<String>? referenceId;

  /// The meta information collected about the end user, used to enforce access control for the service.
  final Input<GoogleCloudContentwarehouseV1RequestMetadata>? requestMetadata;

  /// If true, text extraction will not be performed.
  final Input<bool>? textExtractionDisabled;

  /// If true, text extraction will be performed.
  final Input<bool>? textExtractionEnabled;

  /// Title that describes the document. This can be the top heading or text that describes the document.
  final Input<String>? title;

  /// The user who lastly updates the document.
  final Input<String>? updater;

  DocumentArgs({
    this.cloudAiDocument,
    this.cloudAiDocumentOption,
    this.contentCategory,
    this.createMask,
    this.creator,
    required this.displayName,
    this.displayUri,
    this.documentSchemaName,
    this.inlineRawDocument,
    this.location,
    this.name,
    this.plainText,
    this.policy,
    this.project,
    this.properties,
    this.rawDocumentFileType,
    this.rawDocumentPath,
    this.referenceId,
    this.requestMetadata,
    this.textExtractionDisabled,
    this.textExtractionEnabled,
    this.title,
    this.updater,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cloudAiDocumentValue = cloudAiDocument;
    if (cloudAiDocumentValue != null) {
      map['cloudAiDocument'] = Input.mapOptionalInputValue<
          GoogleCloudDocumentaiV1Document,
          Map<String, dynamic>>(cloudAiDocumentValue, (value) => value.toMap());
    }
    final cloudAiDocumentOptionValue = cloudAiDocumentOption;
    if (cloudAiDocumentOptionValue != null) {
      map['cloudAiDocumentOption'] = Input.mapOptionalInputValue<
              GoogleCloudContentwarehouseV1CloudAIDocumentOption,
              Map<String, dynamic>>(
          cloudAiDocumentOptionValue, (value) => value.toMap());
    }
    final contentCategoryValue = contentCategory;
    if (contentCategoryValue != null) {
      map['contentCategory'] =
          Input.mapOptionalInputValue<DocumentContentCategory, String>(
              contentCategoryValue, (value) => value.value);
    }
    final createMaskValue = createMask;
    if (createMaskValue != null) {
      map['createMask'] = createMaskValue;
    }
    final creatorValue = creator;
    if (creatorValue != null) {
      map['creator'] = creatorValue;
    }
    map['displayName'] = displayName;
    final displayUriValue = displayUri;
    if (displayUriValue != null) {
      map['displayUri'] = displayUriValue;
    }
    final documentSchemaNameValue = documentSchemaName;
    if (documentSchemaNameValue != null) {
      map['documentSchemaName'] = documentSchemaNameValue;
    }
    final inlineRawDocumentValue = inlineRawDocument;
    if (inlineRawDocumentValue != null) {
      map['inlineRawDocument'] = inlineRawDocumentValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final plainTextValue = plainText;
    if (plainTextValue != null) {
      map['plainText'] = plainTextValue;
    }
    final policyValue = policy;
    if (policyValue != null) {
      map['policy'] =
          Input.mapOptionalInputValue<GoogleIamV1Policy, Map<String, dynamic>>(
              policyValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final propertiesValue = properties;
    if (propertiesValue != null) {
      map['properties'] = Input.mapOptionalInputValue<
              List<GoogleCloudContentwarehouseV1Property>,
              List<Map<String, dynamic>>>(
          propertiesValue,
          (value) => Input.encodeList<GoogleCloudContentwarehouseV1Property,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final rawDocumentFileTypeValue = rawDocumentFileType;
    if (rawDocumentFileTypeValue != null) {
      map['rawDocumentFileType'] =
          Input.mapOptionalInputValue<DocumentRawDocumentFileType, String>(
              rawDocumentFileTypeValue, (value) => value.value);
    }
    final rawDocumentPathValue = rawDocumentPath;
    if (rawDocumentPathValue != null) {
      map['rawDocumentPath'] = rawDocumentPathValue;
    }
    final referenceIdValue = referenceId;
    if (referenceIdValue != null) {
      map['referenceId'] = referenceIdValue;
    }
    final requestMetadataValue = requestMetadata;
    if (requestMetadataValue != null) {
      map['requestMetadata'] = Input.mapOptionalInputValue<
          GoogleCloudContentwarehouseV1RequestMetadata,
          Map<String, dynamic>>(requestMetadataValue, (value) => value.toMap());
    }
    final textExtractionDisabledValue = textExtractionDisabled;
    if (textExtractionDisabledValue != null) {
      map['textExtractionDisabled'] = textExtractionDisabledValue;
    }
    final textExtractionEnabledValue = textExtractionEnabled;
    if (textExtractionEnabledValue != null) {
      map['textExtractionEnabled'] = textExtractionEnabledValue;
    }
    final titleValue = title;
    if (titleValue != null) {
      map['title'] = titleValue;
    }
    final updaterValue = updater;
    if (updaterValue != null) {
      map['updater'] = updaterValue;
    }
    return map;
  }

  factory DocumentArgs.fromMap(Map<String, dynamic> map) {
    return DocumentArgs(
      cloudAiDocument: Input.asOptionalInput<GoogleCloudDocumentaiV1Document>(
          map['cloudAiDocument']),
      cloudAiDocumentOption: Input.asOptionalInput<
              GoogleCloudContentwarehouseV1CloudAIDocumentOption>(
          map['cloudAiDocumentOption']),
      contentCategory: Input.asOptionalInput<DocumentContentCategory>(
          map['contentCategory']),
      createMask: Input.asOptionalInput<String>(map['createMask']),
      creator: Input.asOptionalInput<String>(map['creator']),
      displayName: Input.asInput<String>(map['displayName']),
      displayUri: Input.asOptionalInput<String>(map['displayUri']),
      documentSchemaName:
          Input.asOptionalInput<String>(map['documentSchemaName']),
      inlineRawDocument:
          Input.asOptionalInput<String>(map['inlineRawDocument']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      plainText: Input.asOptionalInput<String>(map['plainText']),
      policy: Input.asOptionalInput<GoogleIamV1Policy>(map['policy']),
      project: Input.asOptionalInput<String>(map['project']),
      properties:
          Input.asOptionalInput<List<GoogleCloudContentwarehouseV1Property>>(
              map['properties']),
      rawDocumentFileType: Input.asOptionalInput<DocumentRawDocumentFileType>(
          map['rawDocumentFileType']),
      rawDocumentPath: Input.asOptionalInput<String>(map['rawDocumentPath']),
      referenceId: Input.asOptionalInput<String>(map['referenceId']),
      requestMetadata:
          Input.asOptionalInput<GoogleCloudContentwarehouseV1RequestMetadata>(
              map['requestMetadata']),
      textExtractionDisabled:
          Input.asOptionalInput<bool>(map['textExtractionDisabled']),
      textExtractionEnabled:
          Input.asOptionalInput<bool>(map['textExtractionEnabled']),
      title: Input.asOptionalInput<String>(map['title']),
      updater: Input.asOptionalInput<String>(map['updater']),
    );
  }
}

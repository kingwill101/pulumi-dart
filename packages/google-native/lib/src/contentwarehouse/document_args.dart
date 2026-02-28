// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'document_content_category.dart';
import 'document_raw_document_file_type.dart';
import 'google_cloud_contentwarehouse_v1_cloud_aidocument_option.dart';
import 'google_cloud_contentwarehouse_v1_property.dart';
import 'google_cloud_contentwarehouse_v1_request_metadata.dart';
import 'google_cloud_documentai_v1_document.dart';
import 'google_iam_v1_policy.dart';

/// {@template pulumi_contentwarehouse_v1_document_args_doc}
/// The set of arguments for Document.
/// {@endtemplate}
/// {@macro pulumi_contentwarehouse_v1_document_args_doc}
class DocumentArgs {
  /// Document AI format to save the structured content, including OCR.
  final pulumi.Input<GoogleCloudDocumentaiV1Document>? cloudAiDocument;

  /// Request Option for processing Cloud AI Document in Document Warehouse. This field offers limited support for mapping entities from Cloud AI Document to Warehouse Document. Please consult with product team before using this field and other available options.
  final pulumi.Input<GoogleCloudContentwarehouseV1CloudAIDocumentOption>?
      cloudAiDocumentOption;

  /// Indicates the category (image, audio, video etc.) of the original content.
  final pulumi.Input<DocumentContentCategory>? contentCategory;

  /// Field mask for creating Document fields. If mask path is empty, it means all fields are masked. For the `FieldMask` definition, see https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask.
  final pulumi.Input<String>? createMask;

  /// The user who creates the document.
  final pulumi.Input<String>? creator;

  /// Display name of the document given by the user. This name will be displayed in the UI. Customer can populate this field with the name of the document. This differs from the 'title' field as 'title' is optional and stores the top heading in the document.
  final pulumi.Input<String> displayName;

  /// Uri to display the document, for example, in the UI.
  final pulumi.Input<String>? displayUri;

  /// The Document schema name. Format: projects/{project_number}/locations/{location}/documentSchemas/{document_schema_id}.
  final pulumi.Input<String>? documentSchemaName;

  /// Raw document content.
  final pulumi.Input<String>? inlineRawDocument;
  final pulumi.Input<String>? location;

  /// The resource name of the document. Format: projects/{project_number}/locations/{location}/documents/{document_id}. The name is ignored when creating a document.
  final pulumi.Input<String>? name;

  /// Other document format, such as PPTX, XLXS
  final pulumi.Input<String>? plainText;

  /// Default document policy during creation. This refers to an Identity and Access (IAM) policy, which specifies access controls for the Document. Conditions defined in the policy will be ignored.
  final pulumi.Input<GoogleIamV1Policy>? policy;
  final pulumi.Input<String>? project;

  /// List of values that are user supplied metadata.
  final pulumi.Input<List<GoogleCloudContentwarehouseV1Property>>? properties;

  /// This is used when DocAI was not used to load the document and parsing/ extracting is needed for the inline_raw_document. For example, if inline_raw_document is the byte representation of a PDF file, then this should be set to: RAW_DOCUMENT_FILE_TYPE_PDF.
  final pulumi.Input<DocumentRawDocumentFileType>? rawDocumentFileType;

  /// Raw document file in Cloud Storage path.
  final pulumi.Input<String>? rawDocumentPath;

  /// The reference ID set by customers. Must be unique per project and location.
  final pulumi.Input<String>? referenceId;

  /// The meta information collected about the end user, used to enforce access control for the service.
  final pulumi.Input<GoogleCloudContentwarehouseV1RequestMetadata>?
      requestMetadata;

  /// If true, text extraction will not be performed.
  final pulumi.Input<bool>? textExtractionDisabled;

  /// If true, text extraction will be performed.
  final pulumi.Input<bool>? textExtractionEnabled;

  /// Title that describes the document. This can be the top heading or text that describes the document.
  final pulumi.Input<String>? title;

  /// The user who lastly updates the document.
  final pulumi.Input<String>? updater;

  /// Creates a new [DocumentArgs].
  /// [cloudAiDocument] Document AI format to save the structured content, including OCR.
  /// [cloudAiDocumentOption] Request Option for processing Cloud AI Document in Document Warehouse. This field offers limited support for mapping entities from Cloud AI Document to Warehouse Document. Please consult with product team before using this field and other available options.
  /// [contentCategory] Indicates the category (image, audio, video etc.) of the original content.
  /// [createMask] Field mask for creating Document fields. If mask path is empty, it means all fields are masked. For the `FieldMask` definition, see https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask.
  /// [creator] The user who creates the document.
  /// [displayName] Display name of the document given by the user. This name will be displayed in the UI. Customer can populate this field with the name of the document. This differs from the 'title' field as 'title' is optional and stores the top heading in the document.
  /// [displayUri] Uri to display the document, for example, in the UI.
  /// [documentSchemaName] The Document schema name. Format: projects/{project_number}/locations/{location}/documentSchemas/{document_schema_id}.
  /// [inlineRawDocument] Raw document content.
  /// [location] Optional.
  /// [name] The resource name of the document. Format: projects/{project_number}/locations/{location}/documents/{document_id}. The name is ignored when creating a document.
  /// [plainText] Other document format, such as PPTX, XLXS
  /// [policy] Default document policy during creation. This refers to an Identity and Access (IAM) policy, which specifies access controls for the Document. Conditions defined in the policy will be ignored.
  /// [project] Optional.
  /// [properties] List of values that are user supplied metadata.
  /// [rawDocumentFileType] This is used when DocAI was not used to load the document and parsing/ extracting is needed for the inline_raw_document. For example, if inline_raw_document is the byte representation of a PDF file, then this should be set to: RAW_DOCUMENT_FILE_TYPE_PDF.
  /// [rawDocumentPath] Raw document file in Cloud Storage path.
  /// [referenceId] The reference ID set by customers. Must be unique per project and location.
  /// [requestMetadata] The meta information collected about the end user, used to enforce access control for the service.
  /// [textExtractionDisabled] If true, text extraction will not be performed.
  /// [textExtractionEnabled] If true, text extraction will be performed.
  /// [title] Title that describes the document. This can be the top heading or text that describes the document.
  /// [updater] The user who lastly updates the document.
  DocumentArgs({
    GoogleCloudDocumentaiV1Document? cloudAiDocument,
    GoogleCloudContentwarehouseV1CloudAIDocumentOption? cloudAiDocumentOption,
    DocumentContentCategory? contentCategory,
    String? createMask,
    String? creator,
    required String displayName,
    String? displayUri,
    String? documentSchemaName,
    String? inlineRawDocument,
    String? location,
    String? name,
    String? plainText,
    GoogleIamV1Policy? policy,
    String? project,
    List<GoogleCloudContentwarehouseV1Property>? properties,
    DocumentRawDocumentFileType? rawDocumentFileType,
    String? rawDocumentPath,
    String? referenceId,
    GoogleCloudContentwarehouseV1RequestMetadata? requestMetadata,
    bool? textExtractionDisabled,
    bool? textExtractionEnabled,
    String? title,
    String? updater,
  })  : cloudAiDocument =
            pulumi.Input.asOptionalInput<GoogleCloudDocumentaiV1Document>(
                cloudAiDocument),
        cloudAiDocumentOption = pulumi.Input.asOptionalInput<
                GoogleCloudContentwarehouseV1CloudAIDocumentOption>(
            cloudAiDocumentOption),
        contentCategory = pulumi.Input.asOptionalInput<DocumentContentCategory>(
            contentCategory),
        createMask = pulumi.Input.asOptionalInput<String>(createMask),
        creator = pulumi.Input.asOptionalInput<String>(creator),
        displayName = pulumi.Input.asInput<String>(displayName),
        displayUri = pulumi.Input.asOptionalInput<String>(displayUri),
        documentSchemaName =
            pulumi.Input.asOptionalInput<String>(documentSchemaName),
        inlineRawDocument =
            pulumi.Input.asOptionalInput<String>(inlineRawDocument),
        location = pulumi.Input.asOptionalInput<String>(location),
        name = pulumi.Input.asOptionalInput<String>(name),
        plainText = pulumi.Input.asOptionalInput<String>(plainText),
        policy = pulumi.Input.asOptionalInput<GoogleIamV1Policy>(policy),
        project = pulumi.Input.asOptionalInput<String>(project),
        properties = pulumi.Input.asOptionalInput<
            List<GoogleCloudContentwarehouseV1Property>>(properties),
        rawDocumentFileType =
            pulumi.Input.asOptionalInput<DocumentRawDocumentFileType>(
                rawDocumentFileType),
        rawDocumentPath = pulumi.Input.asOptionalInput<String>(rawDocumentPath),
        referenceId = pulumi.Input.asOptionalInput<String>(referenceId),
        requestMetadata = pulumi.Input.asOptionalInput<
            GoogleCloudContentwarehouseV1RequestMetadata>(requestMetadata),
        textExtractionDisabled =
            pulumi.Input.asOptionalInput<bool>(textExtractionDisabled),
        textExtractionEnabled =
            pulumi.Input.asOptionalInput<bool>(textExtractionEnabled),
        title = pulumi.Input.asOptionalInput<String>(title),
        updater = pulumi.Input.asOptionalInput<String>(updater);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cloudAiDocumentValue = cloudAiDocument;
    if (cloudAiDocumentValue != null) {
      map['cloudAiDocument'] = pulumi.Input.mapOptionalInputValue<
          GoogleCloudDocumentaiV1Document,
          Map<String, dynamic>>(cloudAiDocumentValue, (value) => value.toMap());
    }
    final cloudAiDocumentOptionValue = cloudAiDocumentOption;
    if (cloudAiDocumentOptionValue != null) {
      map['cloudAiDocumentOption'] = pulumi.Input.mapOptionalInputValue<
              GoogleCloudContentwarehouseV1CloudAIDocumentOption,
              Map<String, dynamic>>(
          cloudAiDocumentOptionValue, (value) => value.toMap());
    }
    final contentCategoryValue = contentCategory;
    if (contentCategoryValue != null) {
      map['contentCategory'] =
          pulumi.Input.mapOptionalInputValue<DocumentContentCategory, String>(
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
      map['policy'] = pulumi.Input.mapOptionalInputValue<GoogleIamV1Policy,
          Map<String, dynamic>>(policyValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final propertiesValue = properties;
    if (propertiesValue != null) {
      map['properties'] = pulumi.Input.mapOptionalInputValue<
              List<GoogleCloudContentwarehouseV1Property>,
              List<Map<String, dynamic>>>(
          propertiesValue,
          (value) => pulumi.Input.encodeList<
              GoogleCloudContentwarehouseV1Property,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final rawDocumentFileTypeValue = rawDocumentFileType;
    if (rawDocumentFileTypeValue != null) {
      map['rawDocumentFileType'] = pulumi.Input.mapOptionalInputValue<
          DocumentRawDocumentFileType,
          String>(rawDocumentFileTypeValue, (value) => value.value);
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
      map['requestMetadata'] = pulumi.Input.mapOptionalInputValue<
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
      cloudAiDocument: map['cloudAiDocument'] == null
          ? null
          : GoogleCloudDocumentaiV1Document.fromMap(
              (map['cloudAiDocument'] as Map).cast<String, dynamic>()),
      cloudAiDocumentOption: map['cloudAiDocumentOption'] == null
          ? null
          : GoogleCloudContentwarehouseV1CloudAIDocumentOption.fromMap(
              (map['cloudAiDocumentOption'] as Map).cast<String, dynamic>()),
      contentCategory: map['contentCategory'] == null
          ? null
          : DocumentContentCategory.fromValue(map['contentCategory'] as String),
      createMask:
          map['createMask'] == null ? null : map['createMask'] as String,
      creator: map['creator'] == null ? null : map['creator'] as String,
      displayName: map['displayName'] as String,
      displayUri:
          map['displayUri'] == null ? null : map['displayUri'] as String,
      documentSchemaName: map['documentSchemaName'] == null
          ? null
          : map['documentSchemaName'] as String,
      inlineRawDocument: map['inlineRawDocument'] == null
          ? null
          : map['inlineRawDocument'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      plainText: map['plainText'] == null ? null : map['plainText'] as String,
      policy: map['policy'] == null
          ? null
          : GoogleIamV1Policy.fromMap(
              (map['policy'] as Map).cast<String, dynamic>()),
      project: map['project'] == null ? null : map['project'] as String,
      properties: map['properties'] == null
          ? null
          : pulumi.Input.decodeList<GoogleCloudContentwarehouseV1Property>(
              map['properties'],
              (value) => GoogleCloudContentwarehouseV1Property.fromMap(
                  (value as Map).cast<String, dynamic>())),
      rawDocumentFileType: map['rawDocumentFileType'] == null
          ? null
          : DocumentRawDocumentFileType.fromValue(
              map['rawDocumentFileType'] as String),
      rawDocumentPath: map['rawDocumentPath'] == null
          ? null
          : map['rawDocumentPath'] as String,
      referenceId:
          map['referenceId'] == null ? null : map['referenceId'] as String,
      requestMetadata: map['requestMetadata'] == null
          ? null
          : GoogleCloudContentwarehouseV1RequestMetadata.fromMap(
              (map['requestMetadata'] as Map).cast<String, dynamic>()),
      textExtractionDisabled: map['textExtractionDisabled'] == null
          ? null
          : map['textExtractionDisabled'] as bool,
      textExtractionEnabled: map['textExtractionEnabled'] == null
          ? null
          : map['textExtractionEnabled'] as bool,
      title: map['title'] == null ? null : map['title'] as String,
      updater: map['updater'] == null ? null : map['updater'] as String,
    );
  }
}

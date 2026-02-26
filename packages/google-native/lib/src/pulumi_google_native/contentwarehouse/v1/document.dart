import 'package:pulumi/pulumi.dart';
import 'document_args.dart';
import 'google_cloud_contentwarehouse_v1_property_response.dart';
import 'google_cloud_documentai_v1_document_response.dart';

/// Creates a document.
class Document extends CustomResource {
  /// Document AI format to save the structured content, including OCR.
  late final Output<GoogleCloudDocumentaiV1DocumentResponse> cloudAiDocument;

  /// Indicates the category (image, audio, video etc.) of the original content.
  late final Output<String> contentCategory;

  /// The time when the document is created.
  late final Output<String> createTime;

  /// The user who creates the document.
  late final Output<String> creator;

  /// Display name of the document given by the user. This name will be displayed in the UI. Customer can populate this field with the name of the document. This differs from the 'title' field as 'title' is optional and stores the top heading in the document.
  late final Output<String> displayName;

  /// Uri to display the document, for example, in the UI.
  late final Output<String> displayUri;

  /// If linked to a Collection with RetentionPolicy, the date when the document becomes mutable.
  late final Output<String> dispositionTime;

  /// The Document schema name. Format: projects/{project_number}/locations/{location}/documentSchemas/{document_schema_id}.
  late final Output<String> documentSchemaName;

  /// Raw document content.
  late final Output<String> inlineRawDocument;

  /// Indicates if the document has a legal hold on it.
  late final Output<bool> legalHold;
  late final Output<String> location;

  /// The resource name of the document. Format: projects/{project_number}/locations/{location}/documents/{document_id}. The name is ignored when creating a document.
  late final Output<String> name;

  /// Other document format, such as PPTX, XLXS
  late final Output<String> plainText;
  late final Output<String> project;

  /// List of values that are user supplied metadata.
  late final Output<List<GoogleCloudContentwarehouseV1PropertyResponse>>
      properties;

  /// This is used when DocAI was not used to load the document and parsing/ extracting is needed for the inline_raw_document. For example, if inline_raw_document is the byte representation of a PDF file, then this should be set to: RAW_DOCUMENT_FILE_TYPE_PDF.
  late final Output<String> rawDocumentFileType;

  /// Raw document file in Cloud Storage path.
  late final Output<String> rawDocumentPath;

  /// The reference ID set by customers. Must be unique per project and location.
  late final Output<String> referenceId;

  /// If true, text extraction will not be performed.
  late final Output<bool> textExtractionDisabled;

  /// If true, text extraction will be performed.
  late final Output<bool> textExtractionEnabled;

  /// Title that describes the document. This can be the top heading or text that describes the document.
  late final Output<String> title;

  /// The time when the document is last updated.
  late final Output<String> updateTime;

  /// The user who lastly updates the document.
  late final Output<String> updater;

  Document(
    String name, {
    DocumentArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:contentwarehouse/v1:Document',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.cloudAiDocument =
        registerOutput<GoogleCloudDocumentaiV1DocumentResponse>(
            'cloudAiDocument');
    this.contentCategory = registerOutput<String>('contentCategory');
    this.createTime = registerOutput<String>('createTime');
    this.creator = registerOutput<String>('creator');
    this.displayName = registerOutput<String>('displayName');
    this.displayUri = registerOutput<String>('displayUri');
    this.dispositionTime = registerOutput<String>('dispositionTime');
    this.documentSchemaName = registerOutput<String>('documentSchemaName');
    this.inlineRawDocument = registerOutput<String>('inlineRawDocument');
    this.legalHold = registerOutput<bool>('legalHold');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.plainText = registerOutput<String>('plainText');
    this.project = registerOutput<String>('project');
    this.properties =
        registerOutput<List<GoogleCloudContentwarehouseV1PropertyResponse>>(
            'properties');
    this.rawDocumentFileType = registerOutput<String>('rawDocumentFileType');
    this.rawDocumentPath = registerOutput<String>('rawDocumentPath');
    this.referenceId = registerOutput<String>('referenceId');
    this.textExtractionDisabled =
        registerOutput<bool>('textExtractionDisabled');
    this.textExtractionEnabled = registerOutput<bool>('textExtractionEnabled');
    this.title = registerOutput<String>('title');
    this.updateTime = registerOutput<String>('updateTime');
    this.updater = registerOutput<String>('updater');
  }
}

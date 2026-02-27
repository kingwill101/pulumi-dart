import 'package:pulumi/pulumi.dart' hide Config;
import 'document_args3.dart';
import 'google_cloud_dialogflow_v2beta1_document_reload_status_response.dart';

/// Creates a new document. This method is a [long-running operation](https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation). The returned `Operation` type has the following method-specific fields: - `metadata`: KnowledgeOperationMetadata - `response`: Document Note: The `projects.agent.knowledgeBases.documents` resource is deprecated; only use `projects.knowledgeBases.documents`.
class Document3 extends CustomResource {
  /// The raw content of the document. This field is only permitted for EXTRACTIVE_QA and FAQ knowledge types. Note: This field is in the process of being deprecated, please use raw_content instead.
  late final Output<String> content;

  /// The URI where the file content is located. For documents stored in Google Cloud Storage, these URIs must have the form `gs:///`. NOTE: External URLs must correspond to public webpages, i.e., they must be indexed by Google Search. In particular, URLs for showing documents in Google Cloud Storage (i.e. the URL in your browser) are not supported. Instead use the `gs://` format URI described above.
  late final Output<String> contentUri;

  /// The display name of the document. The name must be 1024 bytes or less; otherwise, the creation request fails.
  late final Output<String> displayName;

  /// Optional. If true, we try to automatically reload the document every day (at a time picked by the system). If false or unspecified, we don't try to automatically reload the document. Currently you can only enable automatic reload for documents sourced from a public url, see `source` field for the source types. Reload status can be tracked in `latest_reload_status`. If a reload fails, we will keep the document unchanged. If a reload fails with internal errors, the system will try to reload the document on the next day. If a reload fails with non-retriable errors (e.g. PERMISSION_DENIED), the system will not try to reload the document anymore. You need to manually reload the document successfully by calling `ReloadDocument` and clear the errors.
  late final Output<bool> enableAutoReload;

  /// Whether to import custom metadata from Google Cloud Storage. Only valid when the document source is Google Cloud Storage URI.
  late final Output<bool?> importGcsCustomMetadata;
  late final Output<String> knowledgeBaseId;

  /// The knowledge type of document content.
  late final Output<List<String>> knowledgeTypes;

  /// The time and status of the latest reload. This reload may have been triggered automatically or manually and may not have succeeded.
  late final Output<GoogleCloudDialogflowV2beta1DocumentReloadStatusResponse>
      latestReloadStatus;
  late final Output<String> location;

  /// Optional. Metadata for the document. The metadata supports arbitrary key-value pairs. Suggested use cases include storing a document's title, an external URL distinct from the document's content_uri, etc. The max size of a `key` or a `value` of the metadata is 1024 bytes.
  late final Output<Map<String, String>> metadata;

  /// The MIME type of this document.
  late final Output<String> mimeType;

  /// Optional. The document resource name. The name must be empty when creating a document. Format: `projects//locations//knowledgeBases//documents/`.
  late final Output<String> name;
  late final Output<String> project;

  /// The raw content of the document. This field is only permitted for EXTRACTIVE_QA and FAQ knowledge types.
  late final Output<String> rawContent;

  /// The current state of the document.
  late final Output<String> state;

  Document3(
    String name, {
    DocumentArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:dialogflow/v2beta1:Document',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.content = registerOutput<String>('content');
    this.contentUri = registerOutput<String>('contentUri');
    this.displayName = registerOutput<String>('displayName');
    this.enableAutoReload = registerOutput<bool>('enableAutoReload');
    this.importGcsCustomMetadata =
        registerOutput<bool?>('importGcsCustomMetadata');
    this.knowledgeBaseId = registerOutput<String>('knowledgeBaseId');
    this.knowledgeTypes = registerOutput<List<String>>('knowledgeTypes');
    this.latestReloadStatus = registerOutput<
            GoogleCloudDialogflowV2beta1DocumentReloadStatusResponse>(
        'latestReloadStatus');
    this.location = registerOutput<String>('location');
    this.metadata = registerOutput<Map<String, String>>('metadata');
    this.mimeType = registerOutput<String>('mimeType');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.rawContent = registerOutput<String>('rawContent');
    this.state = registerOutput<String>('state');
  }
}

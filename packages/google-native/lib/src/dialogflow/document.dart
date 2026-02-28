import 'package:pulumi/pulumi.dart' as pulumi;
import 'document_args.dart';
import 'google_cloud_dialogflow_v2_document_reload_status_response.dart';

/// Creates a new document. This method is a [long-running operation](https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation). The returned `Operation` type has the following method-specific fields: - `metadata`: KnowledgeOperationMetadata - `response`: Document
class Document extends pulumi.CustomResource {
  /// The URI where the file content is located. For documents stored in Google Cloud Storage, these URIs must have the form `gs:///`. NOTE: External URLs must correspond to public webpages, i.e., they must be indexed by Google Search. In particular, URLs for showing documents in Google Cloud Storage (i.e. the URL in your browser) are not supported. Instead use the `gs://` format URI described above.
  late final pulumi.Output<String> contentUri;
  /// The display name of the document. The name must be 1024 bytes or less; otherwise, the creation request fails.
  late final pulumi.Output<String> displayName;
  /// Optional. If true, we try to automatically reload the document every day (at a time picked by the system). If false or unspecified, we don't try to automatically reload the document. Currently you can only enable automatic reload for documents sourced from a public url, see `source` field for the source types. Reload status can be tracked in `latest_reload_status`. If a reload fails, we will keep the document unchanged. If a reload fails with internal errors, the system will try to reload the document on the next day. If a reload fails with non-retriable errors (e.g. PERMISSION_DENIED), the system will not try to reload the document anymore. You need to manually reload the document successfully by calling `ReloadDocument` and clear the errors.
  late final pulumi.Output<bool> enableAutoReload;
  late final pulumi.Output<String> knowledgeBaseId;
  /// The knowledge type of document content.
  late final pulumi.Output<List<String>> knowledgeTypes;
  /// The time and status of the latest reload. This reload may have been triggered automatically or manually and may not have succeeded.
  late final pulumi.Output<GoogleCloudDialogflowV2DocumentReloadStatusResponse> latestReloadStatus;
  late final pulumi.Output<String> location;
  /// Optional. Metadata for the document. The metadata supports arbitrary key-value pairs. Suggested use cases include storing a document's title, an external URL distinct from the document's content_uri, etc. The max size of a `key` or a `value` of the metadata is 1024 bytes.
  late final pulumi.Output<Map<String, String>> metadata;
  /// The MIME type of this document.
  late final pulumi.Output<String> mimeType;
  /// Optional. The document resource name. The name must be empty when creating a document. Format: `projects//locations//knowledgeBases//documents/`.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  /// The raw content of the document. This field is only permitted for EXTRACTIVE_QA and FAQ knowledge types.
  late final pulumi.Output<String> rawContent;
  /// The current state of the document.
  late final pulumi.Output<String> state;

  /// Creates a new [Document].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Document]. {@macro pulumi_dialogflow_v2_document_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Document(
    String name, {
    DocumentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:dialogflow/v2:Document',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.contentUri = registerOutput<String>('contentUri');
    this.displayName = registerOutput<String>('displayName');
    this.enableAutoReload = registerOutput<bool>('enableAutoReload');
    this.knowledgeBaseId = registerOutput<String>('knowledgeBaseId');
    this.knowledgeTypes = registerOutput<List<String>>('knowledgeTypes');
    this.latestReloadStatus = registerOutput<GoogleCloudDialogflowV2DocumentReloadStatusResponse>('latestReloadStatus');
    this.location = registerOutput<String>('location');
    this.metadata = registerOutput<Map<String, String>>('metadata');
    this.mimeType = registerOutput<String>('mimeType');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.rawContent = registerOutput<String>('rawContent');
    this.state = registerOutput<String>('state');
  }
}

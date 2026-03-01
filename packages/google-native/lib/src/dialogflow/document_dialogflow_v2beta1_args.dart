// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'document_knowledge_types_item_dialogflow_v2beta1.dart';

/// {@template pulumi_dialogflow_v2beta1_document_dialogflow_v2beta1_args_doc}
/// The set of arguments for Document.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v2beta1_document_dialogflow_v2beta1_args_doc}
class DocumentDialogflowV2beta1Args {
  /// The raw content of the document. This field is only permitted for EXTRACTIVE_QA and FAQ knowledge types. Note: This field is in the process of being deprecated, please use raw_content instead.
  final pulumi.Input<String>? content;

  /// The URI where the file content is located. For documents stored in Google Cloud Storage, these URIs must have the form `gs:///`. NOTE: External URLs must correspond to public webpages, i.e., they must be indexed by Google Search. In particular, URLs for showing documents in Google Cloud Storage (i.e. the URL in your browser) are not supported. Instead use the `gs://` format URI described above.
  final pulumi.Input<String>? contentUri;

  /// The display name of the document. The name must be 1024 bytes or less; otherwise, the creation request fails.
  final pulumi.Input<String> displayName;

  /// Optional. If true, we try to automatically reload the document every day (at a time picked by the system). If false or unspecified, we don't try to automatically reload the document. Currently you can only enable automatic reload for documents sourced from a public url, see `source` field for the source types. Reload status can be tracked in `latest_reload_status`. If a reload fails, we will keep the document unchanged. If a reload fails with internal errors, the system will try to reload the document on the next day. If a reload fails with non-retriable errors (e.g. PERMISSION_DENIED), the system will not try to reload the document anymore. You need to manually reload the document successfully by calling `ReloadDocument` and clear the errors.
  final pulumi.Input<bool>? enableAutoReload;

  /// Whether to import custom metadata from Google Cloud Storage. Only valid when the document source is Google Cloud Storage URI.
  final pulumi.Input<bool>? importGcsCustomMetadata;
  final pulumi.Input<String> knowledgeBaseId;

  /// The knowledge type of document content.
  final pulumi.Input<List<DocumentKnowledgeTypesItemDialogflowV2beta1>>
  knowledgeTypes;
  final pulumi.Input<String>? location;

  /// Optional. Metadata for the document. The metadata supports arbitrary key-value pairs. Suggested use cases include storing a document's title, an external URL distinct from the document's content_uri, etc. The max size of a `key` or a `value` of the metadata is 1024 bytes.
  final pulumi.Input<Map<String, String>>? metadata;

  /// The MIME type of this document.
  final pulumi.Input<String> mimeType;

  /// Optional. The document resource name. The name must be empty when creating a document. Format: `projects//locations//knowledgeBases//documents/`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// The raw content of the document. This field is only permitted for EXTRACTIVE_QA and FAQ knowledge types.
  final pulumi.Input<String>? rawContent;

  /// Creates a new [DocumentDialogflowV2beta1Args].
  /// [content] The raw content of the document. This field is only permitted for EXTRACTIVE_QA and FAQ knowledge types. Note: This field is in the process of being deprecated, please use raw_content instead.
  /// [contentUri] The URI where the file content is located. For documents stored in Google Cloud Storage, these URIs must have the form `gs:///`. NOTE: External URLs must correspond to public webpages, i.e., they must be indexed by Google Search. In particular, URLs for showing documents in Google Cloud Storage (i.e. the URL in your browser) are not supported. Instead use the `gs://` format URI described above.
  /// [displayName] The display name of the document. The name must be 1024 bytes or less; otherwise, the creation request fails.
  /// [enableAutoReload] Optional. If true, we try to automatically reload the document every day (at a time picked by the system). If false or unspecified, we don't try to automatically reload the document. Currently you can only enable automatic reload for documents sourced from a public url, see `source` field for the source types. Reload status can be tracked in `latest_reload_status`. If a reload fails, we will keep the document unchanged. If a reload fails with internal errors, the system will try to reload the document on the next day. If a reload fails with non-retriable errors (e.g. PERMISSION_DENIED), the system will not try to reload the document anymore. You need to manually reload the document successfully by calling `ReloadDocument` and clear the errors.
  /// [importGcsCustomMetadata] Whether to import custom metadata from Google Cloud Storage. Only valid when the document source is Google Cloud Storage URI.
  /// [knowledgeBaseId] Required.
  /// [knowledgeTypes] The knowledge type of document content.
  /// [location] Optional.
  /// [metadata] Optional. Metadata for the document. The metadata supports arbitrary key-value pairs. Suggested use cases include storing a document's title, an external URL distinct from the document's content_uri, etc. The max size of a `key` or a `value` of the metadata is 1024 bytes.
  /// [mimeType] The MIME type of this document.
  /// [name] Optional. The document resource name. The name must be empty when creating a document. Format: `projects//locations//knowledgeBases//documents/`.
  /// [project] Optional.
  /// [rawContent] The raw content of the document. This field is only permitted for EXTRACTIVE_QA and FAQ knowledge types.
  DocumentDialogflowV2beta1Args({
    String? content,
    String? contentUri,
    required String displayName,
    bool? enableAutoReload,
    bool? importGcsCustomMetadata,
    required String knowledgeBaseId,
    required List<DocumentKnowledgeTypesItemDialogflowV2beta1> knowledgeTypes,
    String? location,
    Map<String, String>? metadata,
    required String mimeType,
    String? name,
    String? project,
    String? rawContent,
  }) : content = pulumi.Input.asOptionalInput<String>(content),
       contentUri = pulumi.Input.asOptionalInput<String>(contentUri),
       displayName = pulumi.Input.asInput<String>(displayName),
       enableAutoReload = pulumi.Input.asOptionalInput<bool>(enableAutoReload),
       importGcsCustomMetadata = pulumi.Input.asOptionalInput<bool>(
         importGcsCustomMetadata,
       ),
       knowledgeBaseId = pulumi.Input.asInput<String>(knowledgeBaseId),
       knowledgeTypes =
           pulumi.Input.asInput<
             List<DocumentKnowledgeTypesItemDialogflowV2beta1>
           >(knowledgeTypes),
       location = pulumi.Input.asOptionalInput<String>(location),
       metadata = pulumi.Input.asOptionalInput<Map<String, String>>(metadata),
       mimeType = pulumi.Input.asInput<String>(mimeType),
       name = pulumi.Input.asOptionalInput<String>(name),
       project = pulumi.Input.asOptionalInput<String>(project),
       rawContent = pulumi.Input.asOptionalInput<String>(rawContent);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': ?content,
      'contentUri': ?contentUri,
      'displayName': displayName,
      'enableAutoReload': ?enableAutoReload,
      'importGcsCustomMetadata': ?importGcsCustomMetadata,
      'knowledgeBaseId': knowledgeBaseId,
      'knowledgeTypes':
          pulumi.Input.mapInputValue<
            List<DocumentKnowledgeTypesItemDialogflowV2beta1>,
            List<String>
          >(
            knowledgeTypes,
            (value) =>
                pulumi.Input.encodeList<
                  DocumentKnowledgeTypesItemDialogflowV2beta1,
                  String
                >(value, (value) => value.value),
          ),
      'location': ?location,
      'metadata': ?metadata,
      'mimeType': mimeType,
      'name': ?name,
      'project': ?project,
      'rawContent': ?rawContent,
    };
  }

  factory DocumentDialogflowV2beta1Args.fromMap(Map<String, dynamic> map) {
    return DocumentDialogflowV2beta1Args(
      content: map['content'] == null ? null : map['content'] as String,
      contentUri: map['contentUri'] == null
          ? null
          : map['contentUri'] as String,
      displayName: map['displayName'] as String,
      enableAutoReload: map['enableAutoReload'] == null
          ? null
          : map['enableAutoReload'] as bool,
      importGcsCustomMetadata: map['importGcsCustomMetadata'] == null
          ? null
          : map['importGcsCustomMetadata'] as bool,
      knowledgeBaseId: map['knowledgeBaseId'] as String,
      knowledgeTypes:
          pulumi.Input.decodeList<DocumentKnowledgeTypesItemDialogflowV2beta1>(
            map['knowledgeTypes'],
            (value) => DocumentKnowledgeTypesItemDialogflowV2beta1.fromValue(
              value as String,
            ),
          ),
      location: map['location'] == null ? null : map['location'] as String,
      metadata: map['metadata'] == null
          ? null
          : (map['metadata'] as Map).cast<String, String>(),
      mimeType: map['mimeType'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      rawContent: map['rawContent'] == null
          ? null
          : map['rawContent'] as String,
    );
  }
}

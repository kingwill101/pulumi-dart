// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'document_knowledge_types_item2.dart';

/// The set of arguments for Document.
class DocumentArgs3 {
  /// The raw content of the document. This field is only permitted for EXTRACTIVE_QA and FAQ knowledge types. Note: This field is in the process of being deprecated, please use raw_content instead.
  final Input<String>? content;

  /// The URI where the file content is located. For documents stored in Google Cloud Storage, these URIs must have the form `gs:///`. NOTE: External URLs must correspond to public webpages, i.e., they must be indexed by Google Search. In particular, URLs for showing documents in Google Cloud Storage (i.e. the URL in your browser) are not supported. Instead use the `gs://` format URI described above.
  final Input<String>? contentUri;

  /// The display name of the document. The name must be 1024 bytes or less; otherwise, the creation request fails.
  final Input<String> displayName;

  /// Optional. If true, we try to automatically reload the document every day (at a time picked by the system). If false or unspecified, we don't try to automatically reload the document. Currently you can only enable automatic reload for documents sourced from a public url, see `source` field for the source types. Reload status can be tracked in `latest_reload_status`. If a reload fails, we will keep the document unchanged. If a reload fails with internal errors, the system will try to reload the document on the next day. If a reload fails with non-retriable errors (e.g. PERMISSION_DENIED), the system will not try to reload the document anymore. You need to manually reload the document successfully by calling `ReloadDocument` and clear the errors.
  final Input<bool>? enableAutoReload;

  /// Whether to import custom metadata from Google Cloud Storage. Only valid when the document source is Google Cloud Storage URI.
  final Input<bool>? importGcsCustomMetadata;
  final Input<String> knowledgeBaseId;

  /// The knowledge type of document content.
  final Input<List<DocumentKnowledgeTypesItem2>> knowledgeTypes;
  final Input<String>? location;

  /// Optional. Metadata for the document. The metadata supports arbitrary key-value pairs. Suggested use cases include storing a document's title, an external URL distinct from the document's content_uri, etc. The max size of a `key` or a `value` of the metadata is 1024 bytes.
  final Input<Map<String, String>>? metadata;

  /// The MIME type of this document.
  final Input<String> mimeType;

  /// Optional. The document resource name. The name must be empty when creating a document. Format: `projects//locations//knowledgeBases//documents/`.
  final Input<String>? name;
  final Input<String>? project;

  /// The raw content of the document. This field is only permitted for EXTRACTIVE_QA and FAQ knowledge types.
  final Input<String>? rawContent;

  DocumentArgs3({
    this.content,
    this.contentUri,
    required this.displayName,
    this.enableAutoReload,
    this.importGcsCustomMetadata,
    required this.knowledgeBaseId,
    required this.knowledgeTypes,
    this.location,
    this.metadata,
    required this.mimeType,
    this.name,
    this.project,
    this.rawContent,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final contentValue = content;
    if (contentValue != null) {
      map['content'] = contentValue;
    }
    final contentUriValue = contentUri;
    if (contentUriValue != null) {
      map['contentUri'] = contentUriValue;
    }
    map['displayName'] = displayName;
    final enableAutoReloadValue = enableAutoReload;
    if (enableAutoReloadValue != null) {
      map['enableAutoReload'] = enableAutoReloadValue;
    }
    final importGcsCustomMetadataValue = importGcsCustomMetadata;
    if (importGcsCustomMetadataValue != null) {
      map['importGcsCustomMetadata'] = importGcsCustomMetadataValue;
    }
    map['knowledgeBaseId'] = knowledgeBaseId;
    map['knowledgeTypes'] =
        Input.mapInputValue<List<DocumentKnowledgeTypesItem2>, List<String>>(
            knowledgeTypes,
            (value) => Input.encodeList<DocumentKnowledgeTypesItem2, String>(
                value, (value) => value.value));
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final metadataValue = metadata;
    if (metadataValue != null) {
      map['metadata'] = metadataValue;
    }
    map['mimeType'] = mimeType;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final rawContentValue = rawContent;
    if (rawContentValue != null) {
      map['rawContent'] = rawContentValue;
    }
    return map;
  }

  factory DocumentArgs3.fromMap(Map<String, dynamic> map) {
    return DocumentArgs3(
      content: Input.asOptionalInput<String>(map['content']),
      contentUri: Input.asOptionalInput<String>(map['contentUri']),
      displayName: Input.asInput<String>(map['displayName']),
      enableAutoReload: Input.asOptionalInput<bool>(map['enableAutoReload']),
      importGcsCustomMetadata:
          Input.asOptionalInput<bool>(map['importGcsCustomMetadata']),
      knowledgeBaseId: Input.asInput<String>(map['knowledgeBaseId']),
      knowledgeTypes: Input.asInput<List<DocumentKnowledgeTypesItem2>>(
          map['knowledgeTypes']),
      location: Input.asOptionalInput<String>(map['location']),
      metadata: Input.asOptionalInput<Map<String, String>>(map['metadata']),
      mimeType: Input.asInput<String>(map['mimeType']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      rawContent: Input.asOptionalInput<String>(map['rawContent']),
    );
  }
}

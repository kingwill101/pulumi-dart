// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'document_knowledge_types_item.dart';

/// The set of arguments for Document.
class DocumentDialogflowV2Args {
  /// The URI where the file content is located. For documents stored in Google Cloud Storage, these URIs must have the form `gs:///`. NOTE: External URLs must correspond to public webpages, i.e., they must be indexed by Google Search. In particular, URLs for showing documents in Google Cloud Storage (i.e. the URL in your browser) are not supported. Instead use the `gs://` format URI described above.
  final pulumi.Input<String>? contentUri;

  /// The display name of the document. The name must be 1024 bytes or less; otherwise, the creation request fails.
  final pulumi.Input<String> displayName;

  /// Optional. If true, we try to automatically reload the document every day (at a time picked by the system). If false or unspecified, we don't try to automatically reload the document. Currently you can only enable automatic reload for documents sourced from a public url, see `source` field for the source types. Reload status can be tracked in `latest_reload_status`. If a reload fails, we will keep the document unchanged. If a reload fails with internal errors, the system will try to reload the document on the next day. If a reload fails with non-retriable errors (e.g. PERMISSION_DENIED), the system will not try to reload the document anymore. You need to manually reload the document successfully by calling `ReloadDocument` and clear the errors.
  final pulumi.Input<bool>? enableAutoReload;
  final pulumi.Input<String> knowledgeBaseId;

  /// The knowledge type of document content.
  final pulumi.Input<List<DocumentKnowledgeTypesItem>> knowledgeTypes;
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

  DocumentDialogflowV2Args({
    this.contentUri,
    required this.displayName,
    this.enableAutoReload,
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
    final contentUriValue = contentUri;
    if (contentUriValue != null) {
      map['contentUri'] = contentUriValue;
    }
    map['displayName'] = displayName;
    final enableAutoReloadValue = enableAutoReload;
    if (enableAutoReloadValue != null) {
      map['enableAutoReload'] = enableAutoReloadValue;
    }
    map['knowledgeBaseId'] = knowledgeBaseId;
    map['knowledgeTypes'] = pulumi.Input.mapInputValue<
            List<DocumentKnowledgeTypesItem>, List<String>>(
        knowledgeTypes,
        (value) => pulumi.Input.encodeList<DocumentKnowledgeTypesItem, String>(
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

  factory DocumentDialogflowV2Args.fromMap(Map<String, dynamic> map) {
    return DocumentDialogflowV2Args(
      contentUri: pulumi.Input.asOptionalInput<String>(map['contentUri']),
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      enableAutoReload:
          pulumi.Input.asOptionalInput<bool>(map['enableAutoReload']),
      knowledgeBaseId: pulumi.Input.asInput<String>(map['knowledgeBaseId']),
      knowledgeTypes: pulumi.Input.asInput<List<DocumentKnowledgeTypesItem>>(
          map['knowledgeTypes']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      metadata:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['metadata']),
      mimeType: pulumi.Input.asInput<String>(map['mimeType']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      rawContent: pulumi.Input.asOptionalInput<String>(map['rawContent']),
    );
  }
}

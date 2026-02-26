// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_documentai_v1_document_entity_relation_response.dart';
import 'google_cloud_documentai_v1_document_entity_response.dart';
import 'google_cloud_documentai_v1_document_page_response.dart';
import 'google_cloud_documentai_v1_document_revision_response.dart';
import 'google_cloud_documentai_v1_document_shard_info_response.dart';
import 'google_cloud_documentai_v1_document_style_response.dart';
import 'google_cloud_documentai_v1_document_text_change_response.dart';
import 'google_rpc_status_response3.dart';

/// Document represents the canonical document resource in Document AI. It is an interchange format that provides insights into documents and allows for collaboration between users and Document AI to iterate and optimize for quality.
class GoogleCloudDocumentaiV1DocumentResponse {
  /// Optional. Inline document content, represented as a stream of bytes. Note: As with all `bytes` fields, protobuffers use a pure binary representation, whereas JSON representations use base64.
  final String content;

  /// A list of entities detected on Document.text. For document shards, entities in this list may cross shard boundaries.
  final List<GoogleCloudDocumentaiV1DocumentEntityResponse> entities;

  /// Placeholder. Relationship among Document.entities.
  final List<GoogleCloudDocumentaiV1DocumentEntityRelationResponse>
      entityRelations;

  /// Any error that occurred while processing this document.
  final GoogleRpcStatusResponse3 error;

  /// An IANA published [media type (MIME type)](https://www.iana.org/assignments/media-types/media-types.xhtml).
  final String mimeType;

  /// Visual page layout for the Document.
  final List<GoogleCloudDocumentaiV1DocumentPageResponse> pages;

  /// Placeholder. Revision history of this document.
  final List<GoogleCloudDocumentaiV1DocumentRevisionResponse> revisions;

  /// Information about the sharding if this document is sharded part of a larger document. If the document is not sharded, this message is not specified.
  final GoogleCloudDocumentaiV1DocumentShardInfoResponse shardInfo;

  /// Optional. UTF-8 encoded text in reading order from the document.
  final String text;

  /// Placeholder. A list of text corrections made to Document.text. This is usually used for annotating corrections to OCR mistakes. Text changes for a given revision may not overlap with each other.
  final List<GoogleCloudDocumentaiV1DocumentTextChangeResponse> textChanges;

  /// Styles for the Document.text.
  final List<GoogleCloudDocumentaiV1DocumentStyleResponse> textStyles;

  /// Optional. Currently supports Google Cloud Storage URI of the form `gs://bucket_name/object_name`. Object versioning is not supported. For more information, refer to [Google Cloud Storage Request URIs](https://cloud.google.com/storage/docs/reference-uris).
  final String uri;

  GoogleCloudDocumentaiV1DocumentResponse({
    required this.content,
    required this.entities,
    required this.entityRelations,
    required this.error,
    required this.mimeType,
    required this.pages,
    required this.revisions,
    required this.shardInfo,
    required this.text,
    required this.textChanges,
    required this.textStyles,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['content'] = content;
    map['entities'] = Input.encodeList<
        GoogleCloudDocumentaiV1DocumentEntityResponse,
        Map<String, dynamic>>(entities, (value) => value.toMap());
    map['entityRelations'] = Input.encodeList<
        GoogleCloudDocumentaiV1DocumentEntityRelationResponse,
        Map<String, dynamic>>(entityRelations, (value) => value.toMap());
    map['error'] = error.toMap();
    map['mimeType'] = mimeType;
    map['pages'] = Input.encodeList<GoogleCloudDocumentaiV1DocumentPageResponse,
        Map<String, dynamic>>(pages, (value) => value.toMap());
    map['revisions'] = Input.encodeList<
        GoogleCloudDocumentaiV1DocumentRevisionResponse,
        Map<String, dynamic>>(revisions, (value) => value.toMap());
    map['shardInfo'] = shardInfo.toMap();
    map['text'] = text;
    map['textChanges'] = Input.encodeList<
        GoogleCloudDocumentaiV1DocumentTextChangeResponse,
        Map<String, dynamic>>(textChanges, (value) => value.toMap());
    map['textStyles'] = Input.encodeList<
        GoogleCloudDocumentaiV1DocumentStyleResponse,
        Map<String, dynamic>>(textStyles, (value) => value.toMap());
    map['uri'] = uri;
    return map;
  }

  factory GoogleCloudDocumentaiV1DocumentResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentResponse(
      content: map['content'] as String,
      entities: Input.decodeList<GoogleCloudDocumentaiV1DocumentEntityResponse>(
          map['entities'],
          (value) => GoogleCloudDocumentaiV1DocumentEntityResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      entityRelations: Input.decodeList<
              GoogleCloudDocumentaiV1DocumentEntityRelationResponse>(
          map['entityRelations'],
          (value) =>
              GoogleCloudDocumentaiV1DocumentEntityRelationResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
      error: GoogleRpcStatusResponse3.fromMap(
          (map['error'] as Map).cast<String, dynamic>()),
      mimeType: map['mimeType'] as String,
      pages: Input.decodeList<GoogleCloudDocumentaiV1DocumentPageResponse>(
          map['pages'],
          (value) => GoogleCloudDocumentaiV1DocumentPageResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      revisions:
          Input.decodeList<GoogleCloudDocumentaiV1DocumentRevisionResponse>(
              map['revisions'],
              (value) =>
                  GoogleCloudDocumentaiV1DocumentRevisionResponse.fromMap(
                      (value as Map).cast<String, dynamic>())),
      shardInfo: GoogleCloudDocumentaiV1DocumentShardInfoResponse.fromMap(
          (map['shardInfo'] as Map).cast<String, dynamic>()),
      text: map['text'] as String,
      textChanges:
          Input.decodeList<GoogleCloudDocumentaiV1DocumentTextChangeResponse>(
              map['textChanges'],
              (value) =>
                  GoogleCloudDocumentaiV1DocumentTextChangeResponse.fromMap(
                      (value as Map).cast<String, dynamic>())),
      textStyles:
          Input.decodeList<GoogleCloudDocumentaiV1DocumentStyleResponse>(
              map['textStyles'],
              (value) => GoogleCloudDocumentaiV1DocumentStyleResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
      uri: map['uri'] as String,
    );
  }
}

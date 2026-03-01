// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_documentai_v1_document_entity.dart';
import 'google_cloud_documentai_v1_document_entity_relation.dart';
import 'google_cloud_documentai_v1_document_page.dart';
import 'google_cloud_documentai_v1_document_revision.dart';
import 'google_cloud_documentai_v1_document_shard_info.dart';
import 'google_cloud_documentai_v1_document_style.dart';
import 'google_cloud_documentai_v1_document_text_change.dart';
import 'google_rpc_status.dart';

/// Document represents the canonical document resource in Document AI. It is an interchange format that provides insights into documents and allows for collaboration between users and Document AI to iterate and optimize for quality.
class GoogleCloudDocumentaiV1Document {
  /// Optional. Inline document content, represented as a stream of bytes. Note: As with all `bytes` fields, protobuffers use a pure binary representation, whereas JSON representations use base64.
  final String? content;

  /// A list of entities detected on Document.text. For document shards, entities in this list may cross shard boundaries.
  final List<GoogleCloudDocumentaiV1DocumentEntity>? entities;

  /// Placeholder. Relationship among Document.entities.
  final List<GoogleCloudDocumentaiV1DocumentEntityRelation>? entityRelations;

  /// Any error that occurred while processing this document.
  final GoogleRpcStatus? error;

  /// An IANA published [media type (MIME type)](https://www.iana.org/assignments/media-types/media-types.xhtml).
  final String? mimeType;

  /// Visual page layout for the Document.
  final List<GoogleCloudDocumentaiV1DocumentPage>? pages;

  /// Placeholder. Revision history of this document.
  final List<GoogleCloudDocumentaiV1DocumentRevision>? revisions;

  /// Information about the sharding if this document is sharded part of a larger document. If the document is not sharded, this message is not specified.
  final GoogleCloudDocumentaiV1DocumentShardInfo? shardInfo;

  /// Optional. UTF-8 encoded text in reading order from the document.
  final String? text;

  /// Placeholder. A list of text corrections made to Document.text. This is usually used for annotating corrections to OCR mistakes. Text changes for a given revision may not overlap with each other.
  final List<GoogleCloudDocumentaiV1DocumentTextChange>? textChanges;

  /// Styles for the Document.text.
  final List<GoogleCloudDocumentaiV1DocumentStyle>? textStyles;

  /// Optional. Currently supports Google Cloud Storage URI of the form `gs://bucket_name/object_name`. Object versioning is not supported. For more information, refer to [Google Cloud Storage Request URIs](https://cloud.google.com/storage/docs/reference-uris).
  final String? uri;

  /// Creates a new [GoogleCloudDocumentaiV1Document].
  /// [content] Optional. Inline document content, represented as a stream of bytes. Note: As with all `bytes` fields, protobuffers use a pure binary representation, whereas JSON representations use base64.
  /// [entities] A list of entities detected on Document.text. For document shards, entities in this list may cross shard boundaries.
  /// [entityRelations] Placeholder. Relationship among Document.entities.
  /// [error] Any error that occurred while processing this document.
  /// [mimeType] An IANA published [media type (MIME type)](https://www.iana.org/assignments/media-types/media-types.xhtml).
  /// [pages] Visual page layout for the Document.
  /// [revisions] Placeholder. Revision history of this document.
  /// [shardInfo] Information about the sharding if this document is sharded part of a larger document. If the document is not sharded, this message is not specified.
  /// [text] Optional. UTF-8 encoded text in reading order from the document.
  /// [textChanges] Placeholder. A list of text corrections made to Document.text. This is usually used for annotating corrections to OCR mistakes. Text changes for a given revision may not overlap with each other.
  /// [textStyles] Styles for the Document.text.
  /// [uri] Optional. Currently supports Google Cloud Storage URI of the form `gs://bucket_name/object_name`. Object versioning is not supported. For more information, refer to [Google Cloud Storage Request URIs](https://cloud.google.com/storage/docs/reference-uris).
  GoogleCloudDocumentaiV1Document({
    this.content,
    this.entities,
    this.entityRelations,
    this.error,
    this.mimeType,
    this.pages,
    this.revisions,
    this.shardInfo,
    this.text,
    this.textChanges,
    this.textStyles,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': ?content,
      'entities': ?entities == null
          ? null
          : pulumi.Input.encodeList<
              GoogleCloudDocumentaiV1DocumentEntity,
              Map<String, dynamic>
            >(entities!, (value) => value.toMap()),
      'entityRelations': ?entityRelations == null
          ? null
          : pulumi.Input.encodeList<
              GoogleCloudDocumentaiV1DocumentEntityRelation,
              Map<String, dynamic>
            >(entityRelations!, (value) => value.toMap()),
      'error': ?error == null ? null : error!.toMap(),
      'mimeType': ?mimeType,
      'pages': ?pages == null
          ? null
          : pulumi.Input.encodeList<
              GoogleCloudDocumentaiV1DocumentPage,
              Map<String, dynamic>
            >(pages!, (value) => value.toMap()),
      'revisions': ?revisions == null
          ? null
          : pulumi.Input.encodeList<
              GoogleCloudDocumentaiV1DocumentRevision,
              Map<String, dynamic>
            >(revisions!, (value) => value.toMap()),
      'shardInfo': ?shardInfo == null ? null : shardInfo!.toMap(),
      'text': ?text,
      'textChanges': ?textChanges == null
          ? null
          : pulumi.Input.encodeList<
              GoogleCloudDocumentaiV1DocumentTextChange,
              Map<String, dynamic>
            >(textChanges!, (value) => value.toMap()),
      'textStyles': ?textStyles == null
          ? null
          : pulumi.Input.encodeList<
              GoogleCloudDocumentaiV1DocumentStyle,
              Map<String, dynamic>
            >(textStyles!, (value) => value.toMap()),
      'uri': ?uri,
    };
  }

  factory GoogleCloudDocumentaiV1Document.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1Document(
      content: map['content'] == null ? null : map['content'] as String,
      entities: map['entities'] == null
          ? null
          : pulumi.Input.decodeList<GoogleCloudDocumentaiV1DocumentEntity>(
              map['entities'],
              (value) => GoogleCloudDocumentaiV1DocumentEntity.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      entityRelations: map['entityRelations'] == null
          ? null
          : pulumi.Input.decodeList<
              GoogleCloudDocumentaiV1DocumentEntityRelation
            >(
              map['entityRelations'],
              (value) => GoogleCloudDocumentaiV1DocumentEntityRelation.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      error: map['error'] == null
          ? null
          : GoogleRpcStatus.fromMap(
              (map['error'] as Map).cast<String, dynamic>(),
            ),
      mimeType: map['mimeType'] == null ? null : map['mimeType'] as String,
      pages: map['pages'] == null
          ? null
          : pulumi.Input.decodeList<GoogleCloudDocumentaiV1DocumentPage>(
              map['pages'],
              (value) => GoogleCloudDocumentaiV1DocumentPage.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      revisions: map['revisions'] == null
          ? null
          : pulumi.Input.decodeList<GoogleCloudDocumentaiV1DocumentRevision>(
              map['revisions'],
              (value) => GoogleCloudDocumentaiV1DocumentRevision.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      shardInfo: map['shardInfo'] == null
          ? null
          : GoogleCloudDocumentaiV1DocumentShardInfo.fromMap(
              (map['shardInfo'] as Map).cast<String, dynamic>(),
            ),
      text: map['text'] == null ? null : map['text'] as String,
      textChanges: map['textChanges'] == null
          ? null
          : pulumi.Input.decodeList<GoogleCloudDocumentaiV1DocumentTextChange>(
              map['textChanges'],
              (value) => GoogleCloudDocumentaiV1DocumentTextChange.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      textStyles: map['textStyles'] == null
          ? null
          : pulumi.Input.decodeList<GoogleCloudDocumentaiV1DocumentStyle>(
              map['textStyles'],
              (value) => GoogleCloudDocumentaiV1DocumentStyle.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      uri: map['uri'] == null ? null : map['uri'] as String,
    );
  }
}

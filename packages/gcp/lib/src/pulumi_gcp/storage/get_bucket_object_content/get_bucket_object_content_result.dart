// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_bucket_object_content_context/get_bucket_object_content_context.dart';
import '../get_bucket_object_content_customer_encryption/get_bucket_object_content_customer_encryption.dart';
import '../get_bucket_object_content_retention/get_bucket_object_content_retention.dart';

/// Result data returned by getBucketObjectContent.
class GetBucketObjectContentResult {
  final String bucket;
  final String cacheControl;

  /// (Computed) The content of the object.
  final String content;

  /// (Computed) Base64 encoded version of the object content.
  /// Use this when dealing with binary data.
  final String contentBase64;

  /// (Computed) Base64 encoded SHA512 checksum of file content.
  final String contentBase64sha512;
  final String contentDisposition;
  final String contentEncoding;

  /// (Computed) Hex encoded SHA512 checksum of file content.
  final String contentHexsha512;
  final String contentLanguage;
  final String contentType;
  final List<GetBucketObjectContentContext> contexts;
  final String crc32c;
  final List<GetBucketObjectContentCustomerEncryption> customerEncryptions;
  final String deletionPolicy;
  final String detectMd5hash;
  final bool eventBasedHold;
  final bool forceEmptyContentType;
  final int generation;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String kmsKeyName;
  final String md5hash;
  final String md5hexhash;
  final String mediaLink;
  final Map<String, String> metadata;
  final String name;
  final String outputName;
  final List<GetBucketObjectContentRetention> retentions;
  final String selfLink;
  final String source;
  final String sourceMd5hash;
  final String storageClass;
  final bool temporaryHold;

  GetBucketObjectContentResult({
    required this.bucket,
    required this.cacheControl,
    required this.content,
    required this.contentBase64,
    required this.contentBase64sha512,
    required this.contentDisposition,
    required this.contentEncoding,
    required this.contentHexsha512,
    required this.contentLanguage,
    required this.contentType,
    required this.contexts,
    required this.crc32c,
    required this.customerEncryptions,
    required this.deletionPolicy,
    required this.detectMd5hash,
    required this.eventBasedHold,
    required this.forceEmptyContentType,
    required this.generation,
    required this.id,
    required this.kmsKeyName,
    required this.md5hash,
    required this.md5hexhash,
    required this.mediaLink,
    required this.metadata,
    required this.name,
    required this.outputName,
    required this.retentions,
    required this.selfLink,
    required this.source,
    required this.sourceMd5hash,
    required this.storageClass,
    required this.temporaryHold,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    map['cacheControl'] = cacheControl;
    map['content'] = content;
    map['contentBase64'] = contentBase64;
    map['contentBase64sha512'] = contentBase64sha512;
    map['contentDisposition'] = contentDisposition;
    map['contentEncoding'] = contentEncoding;
    map['contentHexsha512'] = contentHexsha512;
    map['contentLanguage'] = contentLanguage;
    map['contentType'] = contentType;
    map['contexts'] = pulumi.Input.encodeList<GetBucketObjectContentContext,
        Map<String, dynamic>>(contexts, (value) => value.toMap());
    map['crc32c'] = crc32c;
    map['customerEncryptions'] = pulumi.Input.encodeList<
        GetBucketObjectContentCustomerEncryption,
        Map<String, dynamic>>(customerEncryptions, (value) => value.toMap());
    map['deletionPolicy'] = deletionPolicy;
    map['detectMd5hash'] = detectMd5hash;
    map['eventBasedHold'] = eventBasedHold;
    map['forceEmptyContentType'] = forceEmptyContentType;
    map['generation'] = generation;
    map['id'] = id;
    map['kmsKeyName'] = kmsKeyName;
    map['md5hash'] = md5hash;
    map['md5hexhash'] = md5hexhash;
    map['mediaLink'] = mediaLink;
    map['metadata'] = metadata;
    map['name'] = name;
    map['outputName'] = outputName;
    map['retentions'] = pulumi.Input.encodeList<GetBucketObjectContentRetention,
        Map<String, dynamic>>(retentions, (value) => value.toMap());
    map['selfLink'] = selfLink;
    map['source'] = source;
    map['sourceMd5hash'] = sourceMd5hash;
    map['storageClass'] = storageClass;
    map['temporaryHold'] = temporaryHold;
    return map;
  }

  factory GetBucketObjectContentResult.fromMap(Map<String, dynamic> map) {
    return GetBucketObjectContentResult(
      bucket: map['bucket'] as String,
      cacheControl: map['cacheControl'] as String,
      content: map['content'] as String,
      contentBase64: map['contentBase64'] as String,
      contentBase64sha512: map['contentBase64sha512'] as String,
      contentDisposition: map['contentDisposition'] as String,
      contentEncoding: map['contentEncoding'] as String,
      contentHexsha512: map['contentHexsha512'] as String,
      contentLanguage: map['contentLanguage'] as String,
      contentType: map['contentType'] as String,
      contexts: pulumi.Input.decodeList<GetBucketObjectContentContext>(
          map['contexts'],
          (value) => GetBucketObjectContentContext.fromMap(
              (value as Map).cast<String, dynamic>())),
      crc32c: map['crc32c'] as String,
      customerEncryptions:
          pulumi.Input.decodeList<GetBucketObjectContentCustomerEncryption>(
              map['customerEncryptions'],
              (value) => GetBucketObjectContentCustomerEncryption.fromMap(
                  (value as Map).cast<String, dynamic>())),
      deletionPolicy: map['deletionPolicy'] as String,
      detectMd5hash: map['detectMd5hash'] as String,
      eventBasedHold: map['eventBasedHold'] as bool,
      forceEmptyContentType: map['forceEmptyContentType'] as bool,
      generation: map['generation'] as int,
      id: map['id'] as String,
      kmsKeyName: map['kmsKeyName'] as String,
      md5hash: map['md5hash'] as String,
      md5hexhash: map['md5hexhash'] as String,
      mediaLink: map['mediaLink'] as String,
      metadata: (map['metadata'] as Map).cast<String, String>(),
      name: map['name'] as String,
      outputName: map['outputName'] as String,
      retentions: pulumi.Input.decodeList<GetBucketObjectContentRetention>(
          map['retentions'],
          (value) => GetBucketObjectContentRetention.fromMap(
              (value as Map).cast<String, dynamic>())),
      selfLink: map['selfLink'] as String,
      source: map['source'] as String,
      sourceMd5hash: map['sourceMd5hash'] as String,
      storageClass: map['storageClass'] as String,
      temporaryHold: map['temporaryHold'] as bool,
    );
  }
}

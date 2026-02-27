// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_bucket_object_context/get_bucket_object_context.dart';
import '../get_bucket_object_customer_encryption/get_bucket_object_customer_encryption.dart';
import '../get_bucket_object_retention/get_bucket_object_retention.dart';

/// Result data returned by getBucketObject.
class GetBucketObjectResult {
  final String? bucket;

  /// (Computed) [Cache-Control](https://tools.ietf.org/html/rfc7234#section-5.2)
  /// directive to specify caching behavior of object data. If omitted and object is accessible to all anonymous users, the default will be public, max-age=3600
  final String cacheControl;
  final String content;

  /// (Computed) [Content-Disposition](https://tools.ietf.org/html/rfc6266) of the object data.
  final String contentDisposition;

  /// (Computed) [Content-Encoding](https://tools.ietf.org/html/rfc7231#section-3.1.2.2) of the object data.
  final String contentEncoding;

  /// (Computed) [Content-Language](https://tools.ietf.org/html/rfc7231#section-3.1.3.2) of the object data.
  final String contentLanguage;

  /// (Computed) [Content-Type](https://tools.ietf.org/html/rfc7231#section-3.1.1.5) of the object data. Defaults to "application/octet-stream" or "text/plain; charset=utf-8".
  final String contentType;
  final List<GetBucketObjectContext> contexts;

  /// (Computed) Base 64 CRC32 hash of the uploaded data.
  final String crc32c;
  final List<GetBucketObjectCustomerEncryption> customerEncryptions;
  final String deletionPolicy;
  final String detectMd5hash;

  /// (Computed) Whether an object is under [event-based hold](https://cloud.google.com/storage/docs/object-holds#hold-types). Event-based hold is a way to retain objects until an event occurs, which is signified by the hold's release (i.e. this value is set to false). After being released (set to false), such objects will be subject to bucket-level retention (if any).
  final bool eventBasedHold;
  final bool forceEmptyContentType;

  /// (Computed) The content generation of this object. Used for object [versioning](https://cloud.google.com/storage/docs/object-versioning) and [soft delete](https://cloud.google.com/storage/docs/soft-delete).
  final int generation;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String kmsKeyName;

  /// (Computed) Base 64 MD5 hash of the uploaded data.
  final String md5hash;
  final String md5hexhash;

  /// (Computed) A url reference to download this object.
  final String mediaLink;
  final Map<String, String> metadata;
  final String? name;
  final String outputName;
  final List<GetBucketObjectRetention> retentions;

  /// (Computed) A url reference to this object.
  final String selfLink;
  final String source;
  final String sourceMd5hash;

  /// (Computed) The [StorageClass](https://cloud.google.com/storage/docs/storage-classes) of the new bucket object.
  /// Supported values include: `MULTI_REGIONAL`, `REGIONAL`, `NEARLINE`, `COLDLINE`, `ARCHIVE`. If not provided, this defaults to the bucket's default
  /// storage class or to a [standard](https://cloud.google.com/storage/docs/storage-classes#standard) class.
  final String storageClass;

  /// (Computed) Whether an object is under [temporary hold](https://cloud.google.com/storage/docs/object-holds#hold-types). While this flag is set to true, the object is protected against deletion and overwrites.
  final bool temporaryHold;

  GetBucketObjectResult({
    this.bucket,
    required this.cacheControl,
    required this.content,
    required this.contentDisposition,
    required this.contentEncoding,
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
    this.name,
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
    final bucketValue = bucket;
    if (bucketValue != null) {
      map['bucket'] = bucketValue;
    }
    map['cacheControl'] = cacheControl;
    map['content'] = content;
    map['contentDisposition'] = contentDisposition;
    map['contentEncoding'] = contentEncoding;
    map['contentLanguage'] = contentLanguage;
    map['contentType'] = contentType;
    map['contexts'] =
        pulumi.Input.encodeList<GetBucketObjectContext, Map<String, dynamic>>(
            contexts, (value) => value.toMap());
    map['crc32c'] = crc32c;
    map['customerEncryptions'] = pulumi.Input.encodeList<
        GetBucketObjectCustomerEncryption,
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
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['outputName'] = outputName;
    map['retentions'] =
        pulumi.Input.encodeList<GetBucketObjectRetention, Map<String, dynamic>>(
            retentions, (value) => value.toMap());
    map['selfLink'] = selfLink;
    map['source'] = source;
    map['sourceMd5hash'] = sourceMd5hash;
    map['storageClass'] = storageClass;
    map['temporaryHold'] = temporaryHold;
    return map;
  }

  factory GetBucketObjectResult.fromMap(Map<String, dynamic> map) {
    return GetBucketObjectResult(
      bucket: map['bucket'] == null ? null : map['bucket'] as String,
      cacheControl: map['cacheControl'] as String,
      content: map['content'] as String,
      contentDisposition: map['contentDisposition'] as String,
      contentEncoding: map['contentEncoding'] as String,
      contentLanguage: map['contentLanguage'] as String,
      contentType: map['contentType'] as String,
      contexts: pulumi.Input.decodeList<GetBucketObjectContext>(
          map['contexts'],
          (value) => GetBucketObjectContext.fromMap(
              (value as Map).cast<String, dynamic>())),
      crc32c: map['crc32c'] as String,
      customerEncryptions:
          pulumi.Input.decodeList<GetBucketObjectCustomerEncryption>(
              map['customerEncryptions'],
              (value) => GetBucketObjectCustomerEncryption.fromMap(
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
      name: map['name'] == null ? null : map['name'] as String,
      outputName: map['outputName'] as String,
      retentions: pulumi.Input.decodeList<GetBucketObjectRetention>(
          map['retentions'],
          (value) => GetBucketObjectRetention.fromMap(
              (value as Map).cast<String, dynamic>())),
      selfLink: map['selfLink'] as String,
      source: map['source'] as String,
      sourceMd5hash: map['sourceMd5hash'] as String,
      storageClass: map['storageClass'] as String,
      temporaryHold: map['temporaryHold'] as bool,
    );
  }
}

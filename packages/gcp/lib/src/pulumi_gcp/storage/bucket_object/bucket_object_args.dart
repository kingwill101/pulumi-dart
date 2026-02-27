// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../bucket_object_contexts/bucket_object_contexts.dart';
import '../bucket_object_customer_encryption/bucket_object_customer_encryption.dart';
import '../bucket_object_retention/bucket_object_retention.dart';

/// The set of arguments for BucketObject.
class BucketObjectArgs {
  /// The name of the containing bucket.
  final pulumi.Input<String> bucket;

  /// [Cache-Control](https://tools.ietf.org/html/rfc7234#section-5.2)
  /// directive to specify caching behavior of object data. If omitted and object is accessible to all anonymous users, the default will be public, max-age=3600
  final pulumi.Input<String>? cacheControl;

  /// Data as `string` to be uploaded. Must be defined if `source` is not. **Note**: The `content` field is marked as sensitive.
  final pulumi.Input<String>? content;

  /// [Content-Disposition](https://tools.ietf.org/html/rfc6266) of the object data.
  final pulumi.Input<String>? contentDisposition;

  /// [Content-Encoding](https://tools.ietf.org/html/rfc7231#section-3.1.2.2) of the object data.
  final pulumi.Input<String>? contentEncoding;

  /// [Content-Language](https://tools.ietf.org/html/rfc7231#section-3.1.3.2) of the object data.
  final pulumi.Input<String>? contentLanguage;

  /// [Content-Type](https://tools.ietf.org/html/rfc7231#section-3.1.1.5) of the object data. Defaults to "application/octet-stream" or "text/plain; charset=utf-8".
  final pulumi.Input<String>? contentType;

  /// Contexts attached to an object, in key-value pairs. For more information about object contexts, see [Object contexts overview](https://cloud.google.com/storage/docs/object-contexts). Structure is documented below.
  final pulumi.Input<BucketObjectContexts>? contexts;

  /// Enables object encryption with Customer-Supplied Encryption Key (CSEK). Google [documentation about CSEK.](https://cloud.google.com/storage/docs/encryption/customer-supplied-keys)
  /// Structure is documented below.
  final pulumi.Input<BucketObjectCustomerEncryption>? customerEncryption;
  final pulumi.Input<String>? deletionPolicy;
  final pulumi.Input<String>? detectMd5hash;

  /// Whether an object is under [event-based hold](https://cloud.google.com/storage/docs/object-holds#hold-types). Event-based hold is a way to retain objects until an event occurs, which is signified by the hold's release (i.e. this value is set to false). After being released (set to false), such objects will be subject to bucket-level retention (if any).
  final pulumi.Input<bool>? eventBasedHold;

  /// When set to true, it ensure the object's Content-Type is empty.
  final pulumi.Input<bool>? forceEmptyContentType;

  /// The resource name of the Cloud KMS key that will be used to [encrypt](https://cloud.google.com/storage/docs/encryption/using-customer-managed-keys) the object.
  final pulumi.Input<String>? kmsKeyName;

  /// User-provided metadata, in key/value pairs.
  ///
  /// One of the following is required:
  final pulumi.Input<Map<String, String>>? metadata;

  /// The name of the object. If you're interpolating the name of this object, see `output_name` instead.
  final pulumi.Input<String>? name;

  /// The [object retention](http://cloud.google.com/storage/docs/object-lock) settings for the object. The retention settings allow an object to be retained until a provided date. Structure is documented below.
  final pulumi.Input<BucketObjectRetention>? retention;

  /// A path to the data you want to upload. Must be defined
  /// if `content` is not.
  ///
  /// - - -
  final pulumi.Input<dynamic>? source;

  /// User-provided md5hash to trigger replacement of object in storage bucket, Must be Base 64 MD5 hash of the object data. The usual way to set this is filemd5("file.zip"), where "file.zip" is the local filename
  final pulumi.Input<String>? sourceMd5hash;

  /// The [StorageClass](https://cloud.google.com/storage/docs/storage-classes) of the new bucket object.
  /// Supported values include: `MULTI_REGIONAL`, `REGIONAL`, `NEARLINE`, `COLDLINE`, `ARCHIVE`. If not provided, this defaults to the bucket's default
  /// storage class or to a [standard](https://cloud.google.com/storage/docs/storage-classes#standard) class.
  final pulumi.Input<String>? storageClass;

  /// Whether an object is under [temporary hold](https://cloud.google.com/storage/docs/object-holds#hold-types). While this flag is set to true, the object is protected against deletion and overwrites.
  final pulumi.Input<bool>? temporaryHold;

  BucketObjectArgs({
    required this.bucket,
    this.cacheControl,
    this.content,
    this.contentDisposition,
    this.contentEncoding,
    this.contentLanguage,
    this.contentType,
    this.contexts,
    this.customerEncryption,
    this.deletionPolicy,
    this.detectMd5hash,
    this.eventBasedHold,
    this.forceEmptyContentType,
    this.kmsKeyName,
    this.metadata,
    this.name,
    this.retention,
    this.source,
    this.sourceMd5hash,
    this.storageClass,
    this.temporaryHold,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    final cacheControlValue = cacheControl;
    if (cacheControlValue != null) {
      map['cacheControl'] = cacheControlValue;
    }
    final contentValue = content;
    if (contentValue != null) {
      map['content'] = contentValue;
    }
    final contentDispositionValue = contentDisposition;
    if (contentDispositionValue != null) {
      map['contentDisposition'] = contentDispositionValue;
    }
    final contentEncodingValue = contentEncoding;
    if (contentEncodingValue != null) {
      map['contentEncoding'] = contentEncodingValue;
    }
    final contentLanguageValue = contentLanguage;
    if (contentLanguageValue != null) {
      map['contentLanguage'] = contentLanguageValue;
    }
    final contentTypeValue = contentType;
    if (contentTypeValue != null) {
      map['contentType'] = contentTypeValue;
    }
    final contextsValue = contexts;
    if (contextsValue != null) {
      map['contexts'] = pulumi.Input.mapOptionalInputValue<BucketObjectContexts,
          Map<String, dynamic>>(contextsValue, (value) => value.toMap());
    }
    final customerEncryptionValue = customerEncryption;
    if (customerEncryptionValue != null) {
      map['customerEncryption'] = pulumi.Input.mapOptionalInputValue<
              BucketObjectCustomerEncryption, Map<String, dynamic>>(
          customerEncryptionValue, (value) => value.toMap());
    }
    final deletionPolicyValue = deletionPolicy;
    if (deletionPolicyValue != null) {
      map['deletionPolicy'] = deletionPolicyValue;
    }
    final detectMd5hashValue = detectMd5hash;
    if (detectMd5hashValue != null) {
      map['detectMd5hash'] = detectMd5hashValue;
    }
    final eventBasedHoldValue = eventBasedHold;
    if (eventBasedHoldValue != null) {
      map['eventBasedHold'] = eventBasedHoldValue;
    }
    final forceEmptyContentTypeValue = forceEmptyContentType;
    if (forceEmptyContentTypeValue != null) {
      map['forceEmptyContentType'] = forceEmptyContentTypeValue;
    }
    final kmsKeyNameValue = kmsKeyName;
    if (kmsKeyNameValue != null) {
      map['kmsKeyName'] = kmsKeyNameValue;
    }
    final metadataValue = metadata;
    if (metadataValue != null) {
      map['metadata'] = metadataValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final retentionValue = retention;
    if (retentionValue != null) {
      map['retention'] = pulumi.Input.mapOptionalInputValue<
          BucketObjectRetention,
          Map<String, dynamic>>(retentionValue, (value) => value.toMap());
    }
    final sourceValue = source;
    if (sourceValue != null) {
      map['source'] = sourceValue;
    }
    final sourceMd5hashValue = sourceMd5hash;
    if (sourceMd5hashValue != null) {
      map['sourceMd5hash'] = sourceMd5hashValue;
    }
    final storageClassValue = storageClass;
    if (storageClassValue != null) {
      map['storageClass'] = storageClassValue;
    }
    final temporaryHoldValue = temporaryHold;
    if (temporaryHoldValue != null) {
      map['temporaryHold'] = temporaryHoldValue;
    }
    return map;
  }

  factory BucketObjectArgs.fromMap(Map<String, dynamic> map) {
    return BucketObjectArgs(
      bucket: pulumi.Input.asInput<String>(map['bucket']),
      cacheControl: pulumi.Input.asOptionalInput<String>(map['cacheControl']),
      content: pulumi.Input.asOptionalInput<String>(map['content']),
      contentDisposition:
          pulumi.Input.asOptionalInput<String>(map['contentDisposition']),
      contentEncoding:
          pulumi.Input.asOptionalInput<String>(map['contentEncoding']),
      contentLanguage:
          pulumi.Input.asOptionalInput<String>(map['contentLanguage']),
      contentType: pulumi.Input.asOptionalInput<String>(map['contentType']),
      contexts:
          pulumi.Input.asOptionalInput<BucketObjectContexts>(map['contexts']),
      customerEncryption:
          pulumi.Input.asOptionalInput<BucketObjectCustomerEncryption>(
              map['customerEncryption']),
      deletionPolicy:
          pulumi.Input.asOptionalInput<String>(map['deletionPolicy']),
      detectMd5hash: pulumi.Input.asOptionalInput<String>(map['detectMd5hash']),
      eventBasedHold: pulumi.Input.asOptionalInput<bool>(map['eventBasedHold']),
      forceEmptyContentType:
          pulumi.Input.asOptionalInput<bool>(map['forceEmptyContentType']),
      kmsKeyName: pulumi.Input.asOptionalInput<String>(map['kmsKeyName']),
      metadata:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['metadata']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      retention:
          pulumi.Input.asOptionalInput<BucketObjectRetention>(map['retention']),
      source: pulumi.Input.asOptionalInput<dynamic>(map['source']),
      sourceMd5hash: pulumi.Input.asOptionalInput<String>(map['sourceMd5hash']),
      storageClass: pulumi.Input.asOptionalInput<String>(map['storageClass']),
      temporaryHold: pulumi.Input.asOptionalInput<bool>(map['temporaryHold']),
    );
  }
}

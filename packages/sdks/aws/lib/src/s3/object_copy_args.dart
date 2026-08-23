// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'object_copy_grant.dart';
import 'object_copy_override_provider.dart';

/// {@template pulumi_s3_object_copy_object_copy_args_doc}
/// The set of arguments for ObjectCopy.
/// {@endtemplate}
/// {@macro pulumi_s3_object_copy_object_copy_args_doc}
class ObjectCopyArgs {
  /// [Canned ACL](https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#canned-acl) to apply. Valid values are `private`, `public-read`, `public-read-write`, `authenticated-read`, `aws-exec-read`, `bucket-owner-read`, and `bucket-owner-full-control`. Conflicts with `grant`.
  final pulumi.Input<String>? acl;
  /// Name of the bucket to put the file in.
  final pulumi.Input<String> bucket;
  /// Whether to use an S3 Bucket Key for object encryption with server-side encryption using KMS (SSE-KMS).
  final pulumi.Input<bool>? bucketKeyEnabled;
  /// Caching behavior along the request/reply chain. Read [w3c cacheControl](http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9) for further details.
  final pulumi.Input<String>? cacheControl;
  /// Algorithm used to create the checksum for the object. If a value is specified and the object is encrypted with KMS, you must have permission to use the `kms:Decrypt` action. Valid values: `CRC32`, `CRC32C`, `CRC64NVME` `SHA1`, `SHA256`.
  final pulumi.Input<String>? checksumAlgorithm;
  /// Presentational information for the object. Read [w3c contentDisposition](http://www.w3.org/Protocols/rfc2616/rfc2616-sec19.html#sec19.5.1) for further information.
  final pulumi.Input<String>? contentDisposition;
  /// Content encodings that have been applied to the object and thus what decoding mechanisms must be applied to obtain the media-type referenced by the Content-Type header field. Read [w3c content encoding](http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.11) for further information.
  final pulumi.Input<String>? contentEncoding;
  /// Language the content is in e.g., en-US or en-GB.
  final pulumi.Input<String>? contentLanguage;
  /// Standard MIME type describing the format of the object data, e.g., `application/octet-stream`. All Valid MIME Types are valid for this input.
  final pulumi.Input<String>? contentType;
  /// Copies the object if its entity tag (ETag) matches the specified tag.
  final pulumi.Input<String>? copyIfMatch;
  /// Copies the object if it has been modified since the specified time, in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8).
  final pulumi.Input<String>? copyIfModifiedSince;
  /// Copies the object if its entity tag (ETag) is different than the specified ETag.
  final pulumi.Input<String>? copyIfNoneMatch;
  /// Copies the object if it hasn't been modified since the specified time, in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8).
  final pulumi.Input<String>? copyIfUnmodifiedSince;
  /// Algorithm to use when encrypting the object (for example, AES256).
  final pulumi.Input<String>? customerAlgorithm;
  /// Customer-provided encryption key for Amazon S3 to use in encrypting data. This value is used to store the object and then it is discarded; Amazon S3 does not store the encryption key. The key must be appropriate for use with the algorithm specified in the x-amz-server-side-encryption-customer-algorithm header.
  final pulumi.Input<String>? customerKey;
  /// 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header for a message integrity check to ensure that the encryption key was transmitted without error.
  final pulumi.Input<String>? customerKeyMd5;
  /// Account id of the expected destination bucket owner. If the destination bucket is owned by a different account, the request will fail with an HTTP 403 (Access Denied) error.
  final pulumi.Input<String>? expectedBucketOwner;
  /// Account id of the expected source bucket owner. If the source bucket is owned by a different account, the request will fail with an HTTP 403 (Access Denied) error.
  final pulumi.Input<String>? expectedSourceBucketOwner;
  /// Date and time at which the object is no longer cacheable, in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8).
  final pulumi.Input<String>? expires;
  /// Allow the object to be deleted by removing any legal hold on any object version. Default is `false`. This value should be set to `true` only if the bucket has S3 object lock enabled.
  final pulumi.Input<bool>? forceDestroy;
  /// Configuration block for header grants. Documented below. Conflicts with `acl`.
  final pulumi.Input<List<ObjectCopyGrant>>? grants;
  /// Name of the object once it is in the bucket.
  final pulumi.Input<String> key;
  /// AWS KMS Encryption Context to use for object encryption. The value is a base64-encoded UTF-8 string holding JSON with the encryption context key-value pairs.
  final pulumi.Input<String>? kmsEncryptionContext;
  /// AWS KMS Key ARN to use for object encryption. This value is a fully qualified **ARN** of the KMS Key. If using `aws.kms.Key`, use the exported `arn` attribute: `kmsKeyId = aws_kms_key.foo.arn`
  final pulumi.Input<String>? kmsKeyId;
  /// Map of keys/values to provision metadata (will be automatically prefixed by `x-amz-meta-`, note that only lowercase label are currently supported by the AWS Go API).
  final pulumi.Input<Map<String, String>>? metadata;
  /// Whether the metadata is copied from the source object or replaced with metadata provided in the request. Valid values are `COPY` and `REPLACE`.
  final pulumi.Input<String>? metadataDirective;
  /// [Legal hold](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock-overview.html#object-lock-legal-holds) status to apply to the specified object. Valid values are `ON` and `OFF`.
  final pulumi.Input<String>? objectLockLegalHoldStatus;
  /// Object lock [retention mode](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock-overview.html#object-lock-retention-modes) that you want to apply to this object. Valid values are `GOVERNANCE` and `COMPLIANCE`.
  final pulumi.Input<String>? objectLockMode;
  /// Date and time, in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8), when this object's object lock will [expire](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock-overview.html#object-lock-retention-periods).
  final pulumi.Input<String>? objectLockRetainUntilDate;
  final pulumi.Input<ObjectCopyOverrideProvider>? overrideProvider;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Confirms that the requester knows that they will be charged for the request. Bucket owners need not specify this parameter in their requests. For information about downloading objects from requester pays buckets, see Downloading Objects in Requestor Pays Buckets (https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html) in the Amazon S3 Developer Guide. If included, the only valid value is `requester`.
  final pulumi.Input<String>? requestPayer;
  /// Server-side encryption of the object in S3. Valid values are `AES256` and `aws:kms`.
  final pulumi.Input<String>? serverSideEncryption;
  /// Source object for the copy operation. You specify the value in one of two formats. For objects not accessed through an access point, specify the name of the source bucket and the key of the source object, separated by a slash (`/`). For example, `testbucket/test1.json`. For objects accessed through access points, specify the ARN of the object as accessed through the access point, in the format `arn:aws:s3:&lt;Region&gt;:&lt;account-id&gt;:accesspoint/&lt;access-point-name&gt;/object/&lt;key&gt;`. For example, `arn:aws:s3:us-west-2:9999912999:accesspoint/my-access-point/object/testbucket/test1.json`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> source;
  /// Algorithm to use when decrypting the source object (for example, AES256).
  final pulumi.Input<String>? sourceCustomerAlgorithm;
  /// Customer-provided encryption key for Amazon S3 to use to decrypt the source object. The encryption key provided in this header must be one that was used when the source object was created.
  final pulumi.Input<String>? sourceCustomerKey;
  /// 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header for a message integrity check to ensure that the encryption key was transmitted without error.
  final pulumi.Input<String>? sourceCustomerKeyMd5;
  /// Desired [storage class](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CopyObject.html#AmazonS3-CopyObject-request-header-StorageClass) for the object. Defaults to `STANDARD`.
  final pulumi.Input<String>? storageClass;
  /// Whether the object tag-set is copied from the source object or replaced with tag-set provided in the request. Valid values are `COPY` and `REPLACE`.
  final pulumi.Input<String>? taggingDirective;
  /// Map of tags to assign to the object. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Target URL for [website redirect](http://docs.aws.amazon.com/AmazonS3/latest/dev/how-to-page-redirect.html).
  final pulumi.Input<String>? websiteRedirect;

  /// Creates a new [ObjectCopyArgs].
  /// [acl] [Canned ACL](https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#canned-acl) to apply. Valid values are `private`, `public-read`, `public-read-write`, `authenticated-read`, `aws-exec-read`, `bucket-owner-read`, and `bucket-owner-full-control`. Conflicts with `grant`.
  /// [bucket] Name of the bucket to put the file in.
  /// [bucketKeyEnabled] Whether to use an S3 Bucket Key for object encryption with server-side encryption using KMS (SSE-KMS).
  /// [cacheControl] Caching behavior along the request/reply chain. Read [w3c cacheControl](http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9) for further details.
  /// [checksumAlgorithm] Algorithm used to create the checksum for the object. If a value is specified and the object is encrypted with KMS, you must have permission to use the `kms:Decrypt` action. Valid values: `CRC32`, `CRC32C`, `CRC64NVME` `SHA1`, `SHA256`.
  /// [contentDisposition] Presentational information for the object. Read [w3c contentDisposition](http://www.w3.org/Protocols/rfc2616/rfc2616-sec19.html#sec19.5.1) for further information.
  /// [contentEncoding] Content encodings that have been applied to the object and thus what decoding mechanisms must be applied to obtain the media-type referenced by the Content-Type header field. Read [w3c content encoding](http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.11) for further information.
  /// [contentLanguage] Language the content is in e.g., en-US or en-GB.
  /// [contentType] Standard MIME type describing the format of the object data, e.g., `application/octet-stream`. All Valid MIME Types are valid for this input.
  /// [copyIfMatch] Copies the object if its entity tag (ETag) matches the specified tag.
  /// [copyIfModifiedSince] Copies the object if it has been modified since the specified time, in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8).
  /// [copyIfNoneMatch] Copies the object if its entity tag (ETag) is different than the specified ETag.
  /// [copyIfUnmodifiedSince] Copies the object if it hasn't been modified since the specified time, in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8).
  /// [customerAlgorithm] Algorithm to use when encrypting the object (for example, AES256).
  /// [customerKey] Customer-provided encryption key for Amazon S3 to use in encrypting data. This value is used to store the object and then it is discarded; Amazon S3 does not store the encryption key. The key must be appropriate for use with the algorithm specified in the x-amz-server-side-encryption-customer-algorithm header.
  /// [customerKeyMd5] 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header for a message integrity check to ensure that the encryption key was transmitted without error.
  /// [expectedBucketOwner] Account id of the expected destination bucket owner. If the destination bucket is owned by a different account, the request will fail with an HTTP 403 (Access Denied) error.
  /// [expectedSourceBucketOwner] Account id of the expected source bucket owner. If the source bucket is owned by a different account, the request will fail with an HTTP 403 (Access Denied) error.
  /// [expires] Date and time at which the object is no longer cacheable, in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8).
  /// [forceDestroy] Allow the object to be deleted by removing any legal hold on any object version. Default is `false`. This value should be set to `true` only if the bucket has S3 object lock enabled.
  /// [grants] Configuration block for header grants. Documented below. Conflicts with `acl`.
  /// [key] Name of the object once it is in the bucket.
  /// [kmsEncryptionContext] AWS KMS Encryption Context to use for object encryption. The value is a base64-encoded UTF-8 string holding JSON with the encryption context key-value pairs.
  /// [kmsKeyId] AWS KMS Key ARN to use for object encryption. This value is a fully qualified **ARN** of the KMS Key. If using `aws.kms.Key`, use the exported `arn` attribute: `kmsKeyId = aws_kms_key.foo.arn`
  /// [metadata] Map of keys/values to provision metadata (will be automatically prefixed by `x-amz-meta-`, note that only lowercase label are currently supported by the AWS Go API).
  /// [metadataDirective] Whether the metadata is copied from the source object or replaced with metadata provided in the request. Valid values are `COPY` and `REPLACE`.
  /// [objectLockLegalHoldStatus] [Legal hold](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock-overview.html#object-lock-legal-holds) status to apply to the specified object. Valid values are `ON` and `OFF`.
  /// [objectLockMode] Object lock [retention mode](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock-overview.html#object-lock-retention-modes) that you want to apply to this object. Valid values are `GOVERNANCE` and `COMPLIANCE`.
  /// [objectLockRetainUntilDate] Date and time, in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8), when this object's object lock will [expire](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock-overview.html#object-lock-retention-periods).
  /// [overrideProvider] Optional.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [requestPayer] Confirms that the requester knows that they will be charged for the request. Bucket owners need not specify this parameter in their requests. For information about downloading objects from requester pays buckets, see Downloading Objects in Requestor Pays Buckets (https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html) in the Amazon S3 Developer Guide. If included, the only valid value is `requester`.
  /// [serverSideEncryption] Server-side encryption of the object in S3. Valid values are `AES256` and `aws:kms`.
  /// [source] Source object for the copy operation. You specify the value in one of two formats. For objects not accessed through an access point, specify the name of the source bucket and the key of the source object, separated by a slash (`/`). For example, `testbucket/test1.json`. For objects accessed through access points, specify the ARN of the object as accessed through the access point, in the format `arn:aws:s3:&lt;Region&gt;:&lt;account-id&gt;:accesspoint/&lt;access-point-name&gt;/object/&lt;key&gt;`. For example, `arn:aws:s3:us-west-2:9999912999:accesspoint/my-access-point/object/testbucket/test1.json`.
  /// [sourceCustomerAlgorithm] Algorithm to use when decrypting the source object (for example, AES256).
  /// [sourceCustomerKey] Customer-provided encryption key for Amazon S3 to use to decrypt the source object. The encryption key provided in this header must be one that was used when the source object was created.
  /// [sourceCustomerKeyMd5] 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header for a message integrity check to ensure that the encryption key was transmitted without error.
  /// [storageClass] Desired [storage class](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CopyObject.html#AmazonS3-CopyObject-request-header-StorageClass) for the object. Defaults to `STANDARD`.
  /// [taggingDirective] Whether the object tag-set is copied from the source object or replaced with tag-set provided in the request. Valid values are `COPY` and `REPLACE`.
  /// [tags] Map of tags to assign to the object. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [websiteRedirect] Target URL for [website redirect](http://docs.aws.amazon.com/AmazonS3/latest/dev/how-to-page-redirect.html).
  const ObjectCopyArgs({
    this.acl,
    required this.bucket,
    this.bucketKeyEnabled,
    this.cacheControl,
    this.checksumAlgorithm,
    this.contentDisposition,
    this.contentEncoding,
    this.contentLanguage,
    this.contentType,
    this.copyIfMatch,
    this.copyIfModifiedSince,
    this.copyIfNoneMatch,
    this.copyIfUnmodifiedSince,
    this.customerAlgorithm,
    this.customerKey,
    this.customerKeyMd5,
    this.expectedBucketOwner,
    this.expectedSourceBucketOwner,
    this.expires,
    this.forceDestroy,
    this.grants,
    required this.key,
    this.kmsEncryptionContext,
    this.kmsKeyId,
    this.metadata,
    this.metadataDirective,
    this.objectLockLegalHoldStatus,
    this.objectLockMode,
    this.objectLockRetainUntilDate,
    this.overrideProvider,
    this.region,
    this.requestPayer,
    this.serverSideEncryption,
    required this.source,
    this.sourceCustomerAlgorithm,
    this.sourceCustomerKey,
    this.sourceCustomerKeyMd5,
    this.storageClass,
    this.taggingDirective,
    this.tags,
    this.websiteRedirect,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acl': ?acl,
      'bucket': bucket,
      'bucketKeyEnabled': ?bucketKeyEnabled,
      'cacheControl': ?cacheControl,
      'checksumAlgorithm': ?checksumAlgorithm,
      'contentDisposition': ?contentDisposition,
      'contentEncoding': ?contentEncoding,
      'contentLanguage': ?contentLanguage,
      'contentType': ?contentType,
      'copyIfMatch': ?copyIfMatch,
      'copyIfModifiedSince': ?copyIfModifiedSince,
      'copyIfNoneMatch': ?copyIfNoneMatch,
      'copyIfUnmodifiedSince': ?copyIfUnmodifiedSince,
      'customerAlgorithm': ?customerAlgorithm,
      'customerKey': ?customerKey,
      'customerKeyMd5': ?customerKeyMd5,
      'expectedBucketOwner': ?expectedBucketOwner,
      'expectedSourceBucketOwner': ?expectedSourceBucketOwner,
      'expires': ?expires,
      'forceDestroy': ?forceDestroy,
      'grants': ?pulumi.Input.mapOptionalInputValue<List<ObjectCopyGrant>, List<Map<String, dynamic>>>(grants, (value) => pulumi.Input.encodeList<ObjectCopyGrant, Map<String, dynamic>>(value, (value) => value.toMap())),
      'key': key,
      'kmsEncryptionContext': ?kmsEncryptionContext,
      'kmsKeyId': ?kmsKeyId,
      'metadata': ?metadata,
      'metadataDirective': ?metadataDirective,
      'objectLockLegalHoldStatus': ?objectLockLegalHoldStatus,
      'objectLockMode': ?objectLockMode,
      'objectLockRetainUntilDate': ?objectLockRetainUntilDate,
      'overrideProvider': ?pulumi.Input.mapOptionalInputValue<ObjectCopyOverrideProvider, Map<String, dynamic>>(overrideProvider, (value) => value.toMap()),
      'region': ?region,
      'requestPayer': ?requestPayer,
      'serverSideEncryption': ?serverSideEncryption,
      'source': source,
      'sourceCustomerAlgorithm': ?sourceCustomerAlgorithm,
      'sourceCustomerKey': ?sourceCustomerKey,
      'sourceCustomerKeyMd5': ?sourceCustomerKeyMd5,
      'storageClass': ?storageClass,
      'taggingDirective': ?taggingDirective,
      'tags': ?tags,
      'websiteRedirect': ?websiteRedirect,
    };
  }

  factory ObjectCopyArgs.fromMap(Map<String, dynamic> map) {
    return ObjectCopyArgs(
      acl: (() { final guardedValue = map['acl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      bucketKeyEnabled: (() { final guardedValue = map['bucketKeyEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      cacheControl: (() { final guardedValue = map['cacheControl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      checksumAlgorithm: (() { final guardedValue = map['checksumAlgorithm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contentDisposition: (() { final guardedValue = map['contentDisposition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contentEncoding: (() { final guardedValue = map['contentEncoding']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contentLanguage: (() { final guardedValue = map['contentLanguage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contentType: (() { final guardedValue = map['contentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      copyIfMatch: (() { final guardedValue = map['copyIfMatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      copyIfModifiedSince: (() { final guardedValue = map['copyIfModifiedSince']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      copyIfNoneMatch: (() { final guardedValue = map['copyIfNoneMatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      copyIfUnmodifiedSince: (() { final guardedValue = map['copyIfUnmodifiedSince']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customerAlgorithm: (() { final guardedValue = map['customerAlgorithm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customerKey: (() { final guardedValue = map['customerKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customerKeyMd5: (() { final guardedValue = map['customerKeyMd5']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expectedBucketOwner: (() { final guardedValue = map['expectedBucketOwner']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expectedSourceBucketOwner: (() { final guardedValue = map['expectedSourceBucketOwner']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expires: (() { final guardedValue = map['expires']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      forceDestroy: (() { final guardedValue = map['forceDestroy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      grants: (() { final guardedValue = map['grants']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ObjectCopyGrant>(guardedValue, (value) => ObjectCopyGrant.fromMap((value as Map).cast<String, dynamic>()))); })(),
      key: pulumi.Input.fromValue(map['key'] as String),
      kmsEncryptionContext: (() { final guardedValue = map['kmsEncryptionContext']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      metadataDirective: (() { final guardedValue = map['metadataDirective']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      objectLockLegalHoldStatus: (() { final guardedValue = map['objectLockLegalHoldStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      objectLockMode: (() { final guardedValue = map['objectLockMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      objectLockRetainUntilDate: (() { final guardedValue = map['objectLockRetainUntilDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      overrideProvider: (() { final guardedValue = map['overrideProvider']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ObjectCopyOverrideProvider.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestPayer: (() { final guardedValue = map['requestPayer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverSideEncryption: (() { final guardedValue = map['serverSideEncryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      source: pulumi.Input.fromValue(map['source'] as String),
      sourceCustomerAlgorithm: (() { final guardedValue = map['sourceCustomerAlgorithm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceCustomerKey: (() { final guardedValue = map['sourceCustomerKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceCustomerKeyMd5: (() { final guardedValue = map['sourceCustomerKeyMd5']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageClass: (() { final guardedValue = map['storageClass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      taggingDirective: (() { final guardedValue = map['taggingDirective']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      websiteRedirect: (() { final guardedValue = map['websiteRedirect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

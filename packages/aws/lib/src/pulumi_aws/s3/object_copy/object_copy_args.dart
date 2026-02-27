// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../object_copy_grant/object_copy_grant.dart';
import '../object_copy_override_provider/object_copy_override_provider.dart';

/// The set of arguments for ObjectCopy.
class ObjectCopyArgs {
  /// [Canned ACL](https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#canned-acl) to apply. Valid values are `private`, `public-read`, `public-read-write`, `authenticated-read`, `aws-exec-read`, `bucket-owner-read`, and `bucket-owner-full-control`. Conflicts with `grant`.
  final pulumi.Input<String>? acl;

  /// Name of the bucket to put the file in.
  final pulumi.Input<String> bucket;
  final pulumi.Input<bool>? bucketKeyEnabled;

  /// Specifies caching behavior along the request/reply chain Read [w3c cache_control](http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9) for further details.
  final pulumi.Input<String>? cacheControl;

  /// Indicates the algorithm used to create the checksum for the object. If a value is specified and the object is encrypted with KMS, you must have permission to use the `kms:Decrypt` action. Valid values: `CRC32`, `CRC32C`, `CRC64NVME` `SHA1`, `SHA256`.
  final pulumi.Input<String>? checksumAlgorithm;

  /// Specifies presentational information for the object. Read [w3c content_disposition](http://www.w3.org/Protocols/rfc2616/rfc2616-sec19.html#sec19.5.1) for further information.
  final pulumi.Input<String>? contentDisposition;

  /// Specifies what content encodings have been applied to the object and thus what decoding mechanisms must be applied to obtain the media-type referenced by the Content-Type header field. Read [w3c content encoding](http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.11) for further information.
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

  /// Specifies the algorithm to use to when encrypting the object (for example, AES256).
  final pulumi.Input<String>? customerAlgorithm;

  /// Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This value is used to store the object and then it is discarded; Amazon S3 does not store the encryption key. The key must be appropriate for use with the algorithm specified in the x-amz-server-side-encryption-customer-algorithm header.
  final pulumi.Input<String>? customerKey;

  /// Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header for a message integrity check to ensure that the encryption key was transmitted without error.
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

  /// Specifies the AWS KMS Encryption Context to use for object encryption. The value is a base64-encoded UTF-8 string holding JSON with the encryption context key-value pairs.
  final pulumi.Input<String>? kmsEncryptionContext;

  /// Specifies the AWS KMS Key ARN to use for object encryption. This value is a fully qualified **ARN** of the KMS Key. If using `aws.kms.Key`, use the exported `arn` attribute: `kms_key_id = aws_kms_key.foo.arn`
  final pulumi.Input<String>? kmsKeyId;

  /// Map of keys/values to provision metadata (will be automatically prefixed by `x-amz-meta-`, note that only lowercase label are currently supported by the AWS Go API).
  final pulumi.Input<Map<String, String>>? metadata;

  /// Specifies whether the metadata is copied from the source object or replaced with metadata provided in the request. Valid values are `COPY` and `REPLACE`.
  final pulumi.Input<String>? metadataDirective;

  /// The [legal hold](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock-overview.html#object-lock-legal-holds) status that you want to apply to the specified object. Valid values are `ON` and `OFF`.
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

  /// Specifies server-side encryption of the object in S3. Valid values are `AES256` and `aws:kms`.
  final pulumi.Input<String>? serverSideEncryption;

  /// Specifies the source object for the copy operation. You specify the value in one of two formats. For objects not accessed through an access point, specify the name of the source bucket and the key of the source object, separated by a slash (`/`). For example, `testbucket/test1.json`. For objects accessed through access points, specify the ARN of the object as accessed through the access point, in the format `arn:aws:s3:<Region>:<account-id>:accesspoint/<access-point-name>/object/<key>`. For example, `arn:aws:s3:us-west-2:9999912999:accesspoint/my-access-point/object/testbucket/test1.json`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> source;

  /// Specifies the algorithm to use when decrypting the source object (for example, AES256).
  final pulumi.Input<String>? sourceCustomerAlgorithm;

  /// Specifies the customer-provided encryption key for Amazon S3 to use to decrypt the source object. The encryption key provided in this header must be one that was used when the source object was created.
  final pulumi.Input<String>? sourceCustomerKey;

  /// Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header for a message integrity check to ensure that the encryption key was transmitted without error.
  final pulumi.Input<String>? sourceCustomerKeyMd5;

  /// Specifies the desired [storage class](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CopyObject.html#AmazonS3-CopyObject-request-header-StorageClass) for the object. Defaults to `STANDARD`.
  final pulumi.Input<String>? storageClass;

  /// Specifies whether the object tag-set are copied from the source object or replaced with tag-set provided in the request. Valid values are `COPY` and `REPLACE`.
  final pulumi.Input<String>? taggingDirective;

  /// Map of tags to assign to the object. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Specifies a target URL for [website redirect](http://docs.aws.amazon.com/AmazonS3/latest/dev/how-to-page-redirect.html).
  final pulumi.Input<String>? websiteRedirect;

  ObjectCopyArgs({
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
    final map = <String, dynamic>{};
    final aclValue = acl;
    if (aclValue != null) {
      map['acl'] = aclValue;
    }
    map['bucket'] = bucket;
    final bucketKeyEnabledValue = bucketKeyEnabled;
    if (bucketKeyEnabledValue != null) {
      map['bucketKeyEnabled'] = bucketKeyEnabledValue;
    }
    final cacheControlValue = cacheControl;
    if (cacheControlValue != null) {
      map['cacheControl'] = cacheControlValue;
    }
    final checksumAlgorithmValue = checksumAlgorithm;
    if (checksumAlgorithmValue != null) {
      map['checksumAlgorithm'] = checksumAlgorithmValue;
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
    final copyIfMatchValue = copyIfMatch;
    if (copyIfMatchValue != null) {
      map['copyIfMatch'] = copyIfMatchValue;
    }
    final copyIfModifiedSinceValue = copyIfModifiedSince;
    if (copyIfModifiedSinceValue != null) {
      map['copyIfModifiedSince'] = copyIfModifiedSinceValue;
    }
    final copyIfNoneMatchValue = copyIfNoneMatch;
    if (copyIfNoneMatchValue != null) {
      map['copyIfNoneMatch'] = copyIfNoneMatchValue;
    }
    final copyIfUnmodifiedSinceValue = copyIfUnmodifiedSince;
    if (copyIfUnmodifiedSinceValue != null) {
      map['copyIfUnmodifiedSince'] = copyIfUnmodifiedSinceValue;
    }
    final customerAlgorithmValue = customerAlgorithm;
    if (customerAlgorithmValue != null) {
      map['customerAlgorithm'] = customerAlgorithmValue;
    }
    final customerKeyValue = customerKey;
    if (customerKeyValue != null) {
      map['customerKey'] = customerKeyValue;
    }
    final customerKeyMd5Value = customerKeyMd5;
    if (customerKeyMd5Value != null) {
      map['customerKeyMd5'] = customerKeyMd5Value;
    }
    final expectedBucketOwnerValue = expectedBucketOwner;
    if (expectedBucketOwnerValue != null) {
      map['expectedBucketOwner'] = expectedBucketOwnerValue;
    }
    final expectedSourceBucketOwnerValue = expectedSourceBucketOwner;
    if (expectedSourceBucketOwnerValue != null) {
      map['expectedSourceBucketOwner'] = expectedSourceBucketOwnerValue;
    }
    final expiresValue = expires;
    if (expiresValue != null) {
      map['expires'] = expiresValue;
    }
    final forceDestroyValue = forceDestroy;
    if (forceDestroyValue != null) {
      map['forceDestroy'] = forceDestroyValue;
    }
    final grantsValue = grants;
    if (grantsValue != null) {
      map['grants'] = pulumi.Input.mapOptionalInputValue<List<ObjectCopyGrant>,
              List<Map<String, dynamic>>>(
          grantsValue,
          (value) =>
              pulumi.Input.encodeList<ObjectCopyGrant, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    map['key'] = key;
    final kmsEncryptionContextValue = kmsEncryptionContext;
    if (kmsEncryptionContextValue != null) {
      map['kmsEncryptionContext'] = kmsEncryptionContextValue;
    }
    final kmsKeyIdValue = kmsKeyId;
    if (kmsKeyIdValue != null) {
      map['kmsKeyId'] = kmsKeyIdValue;
    }
    final metadataValue = metadata;
    if (metadataValue != null) {
      map['metadata'] = metadataValue;
    }
    final metadataDirectiveValue = metadataDirective;
    if (metadataDirectiveValue != null) {
      map['metadataDirective'] = metadataDirectiveValue;
    }
    final objectLockLegalHoldStatusValue = objectLockLegalHoldStatus;
    if (objectLockLegalHoldStatusValue != null) {
      map['objectLockLegalHoldStatus'] = objectLockLegalHoldStatusValue;
    }
    final objectLockModeValue = objectLockMode;
    if (objectLockModeValue != null) {
      map['objectLockMode'] = objectLockModeValue;
    }
    final objectLockRetainUntilDateValue = objectLockRetainUntilDate;
    if (objectLockRetainUntilDateValue != null) {
      map['objectLockRetainUntilDate'] = objectLockRetainUntilDateValue;
    }
    final overrideProviderValue = overrideProvider;
    if (overrideProviderValue != null) {
      map['overrideProvider'] = pulumi.Input.mapOptionalInputValue<
              ObjectCopyOverrideProvider, Map<String, dynamic>>(
          overrideProviderValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final requestPayerValue = requestPayer;
    if (requestPayerValue != null) {
      map['requestPayer'] = requestPayerValue;
    }
    final serverSideEncryptionValue = serverSideEncryption;
    if (serverSideEncryptionValue != null) {
      map['serverSideEncryption'] = serverSideEncryptionValue;
    }
    map['source'] = source;
    final sourceCustomerAlgorithmValue = sourceCustomerAlgorithm;
    if (sourceCustomerAlgorithmValue != null) {
      map['sourceCustomerAlgorithm'] = sourceCustomerAlgorithmValue;
    }
    final sourceCustomerKeyValue = sourceCustomerKey;
    if (sourceCustomerKeyValue != null) {
      map['sourceCustomerKey'] = sourceCustomerKeyValue;
    }
    final sourceCustomerKeyMd5Value = sourceCustomerKeyMd5;
    if (sourceCustomerKeyMd5Value != null) {
      map['sourceCustomerKeyMd5'] = sourceCustomerKeyMd5Value;
    }
    final storageClassValue = storageClass;
    if (storageClassValue != null) {
      map['storageClass'] = storageClassValue;
    }
    final taggingDirectiveValue = taggingDirective;
    if (taggingDirectiveValue != null) {
      map['taggingDirective'] = taggingDirectiveValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final websiteRedirectValue = websiteRedirect;
    if (websiteRedirectValue != null) {
      map['websiteRedirect'] = websiteRedirectValue;
    }
    return map;
  }

  factory ObjectCopyArgs.fromMap(Map<String, dynamic> map) {
    return ObjectCopyArgs(
      acl: pulumi.Input.asOptionalInput<String>(map['acl']),
      bucket: pulumi.Input.asInput<String>(map['bucket']),
      bucketKeyEnabled:
          pulumi.Input.asOptionalInput<bool>(map['bucketKeyEnabled']),
      cacheControl: pulumi.Input.asOptionalInput<String>(map['cacheControl']),
      checksumAlgorithm:
          pulumi.Input.asOptionalInput<String>(map['checksumAlgorithm']),
      contentDisposition:
          pulumi.Input.asOptionalInput<String>(map['contentDisposition']),
      contentEncoding:
          pulumi.Input.asOptionalInput<String>(map['contentEncoding']),
      contentLanguage:
          pulumi.Input.asOptionalInput<String>(map['contentLanguage']),
      contentType: pulumi.Input.asOptionalInput<String>(map['contentType']),
      copyIfMatch: pulumi.Input.asOptionalInput<String>(map['copyIfMatch']),
      copyIfModifiedSince:
          pulumi.Input.asOptionalInput<String>(map['copyIfModifiedSince']),
      copyIfNoneMatch:
          pulumi.Input.asOptionalInput<String>(map['copyIfNoneMatch']),
      copyIfUnmodifiedSince:
          pulumi.Input.asOptionalInput<String>(map['copyIfUnmodifiedSince']),
      customerAlgorithm:
          pulumi.Input.asOptionalInput<String>(map['customerAlgorithm']),
      customerKey: pulumi.Input.asOptionalInput<String>(map['customerKey']),
      customerKeyMd5:
          pulumi.Input.asOptionalInput<String>(map['customerKeyMd5']),
      expectedBucketOwner:
          pulumi.Input.asOptionalInput<String>(map['expectedBucketOwner']),
      expectedSourceBucketOwner: pulumi.Input.asOptionalInput<String>(
          map['expectedSourceBucketOwner']),
      expires: pulumi.Input.asOptionalInput<String>(map['expires']),
      forceDestroy: pulumi.Input.asOptionalInput<bool>(map['forceDestroy']),
      grants:
          pulumi.Input.asOptionalInput<List<ObjectCopyGrant>>(map['grants']),
      key: pulumi.Input.asInput<String>(map['key']),
      kmsEncryptionContext:
          pulumi.Input.asOptionalInput<String>(map['kmsEncryptionContext']),
      kmsKeyId: pulumi.Input.asOptionalInput<String>(map['kmsKeyId']),
      metadata:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['metadata']),
      metadataDirective:
          pulumi.Input.asOptionalInput<String>(map['metadataDirective']),
      objectLockLegalHoldStatus: pulumi.Input.asOptionalInput<String>(
          map['objectLockLegalHoldStatus']),
      objectLockMode:
          pulumi.Input.asOptionalInput<String>(map['objectLockMode']),
      objectLockRetainUntilDate: pulumi.Input.asOptionalInput<String>(
          map['objectLockRetainUntilDate']),
      overrideProvider:
          pulumi.Input.asOptionalInput<ObjectCopyOverrideProvider>(
              map['overrideProvider']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      requestPayer: pulumi.Input.asOptionalInput<String>(map['requestPayer']),
      serverSideEncryption:
          pulumi.Input.asOptionalInput<String>(map['serverSideEncryption']),
      source: pulumi.Input.asInput<String>(map['source']),
      sourceCustomerAlgorithm:
          pulumi.Input.asOptionalInput<String>(map['sourceCustomerAlgorithm']),
      sourceCustomerKey:
          pulumi.Input.asOptionalInput<String>(map['sourceCustomerKey']),
      sourceCustomerKeyMd5:
          pulumi.Input.asOptionalInput<String>(map['sourceCustomerKeyMd5']),
      storageClass: pulumi.Input.asOptionalInput<String>(map['storageClass']),
      taggingDirective:
          pulumi.Input.asOptionalInput<String>(map['taggingDirective']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      websiteRedirect:
          pulumi.Input.asOptionalInput<String>(map['websiteRedirect']),
    );
  }
}

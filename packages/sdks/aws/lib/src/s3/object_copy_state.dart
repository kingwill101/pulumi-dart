// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'object_copy_grant.dart';
import 'object_copy_override_provider.dart';

/// Input properties used for looking up and filtering ObjectCopy resources.
class ObjectCopyState {
  /// [Canned ACL](https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#canned-acl) to apply. Valid values are `private`, `public-read`, `public-read-write`, `authenticated-read`, `aws-exec-read`, `bucket-owner-read`, and `bucket-owner-full-control`. Conflicts with `grant`.
  final pulumi.Input<String>? acl;
  /// ARN of the object.
  final pulumi.Input<String>? arn;
  /// Name of the bucket to put the file in.
  final pulumi.Input<String>? bucket;
  final pulumi.Input<bool>? bucketKeyEnabled;
  /// Specifies caching behavior along the request/reply chain Read [w3c cache_control](http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9) for further details.
  final pulumi.Input<String>? cacheControl;
  /// Indicates the algorithm used to create the checksum for the object. If a value is specified and the object is encrypted with KMS, you must have permission to use the `kms:Decrypt` action. Valid values: `CRC32`, `CRC32C`, `CRC64NVME` `SHA1`, `SHA256`.
  final pulumi.Input<String>? checksumAlgorithm;
  /// The base64-encoded, 32-bit CRC32 checksum of the object.
  final pulumi.Input<String>? checksumCrc32;
  /// The base64-encoded, 32-bit CRC32C checksum of the object.
  final pulumi.Input<String>? checksumCrc32c;
  /// The base64-encoded, 64-bit CRC64NVME checksum of the object.
  final pulumi.Input<String>? checksumCrc64nvme;
  /// The base64-encoded, 160-bit SHA-1 digest of the object.
  final pulumi.Input<String>? checksumSha1;
  /// The base64-encoded, 256-bit SHA-256 digest of the object.
  final pulumi.Input<String>? checksumSha256;
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
  /// ETag generated for the object (an MD5 sum of the object content). For plaintext objects or objects encrypted with an AWS-managed key, the hash is an MD5 digest of the object data. For objects encrypted with a KMS key or objects created by either the Multipart Upload or Part Copy operation, the hash is not an MD5 digest, regardless of the method of encryption. More information on possible values can be found on [Common Response Headers](https://docs.aws.amazon.com/AmazonS3/latest/API/RESTCommonResponseHeaders.html).
  final pulumi.Input<String>? etag;
  /// Account id of the expected destination bucket owner. If the destination bucket is owned by a different account, the request will fail with an HTTP 403 (Access Denied) error.
  final pulumi.Input<String>? expectedBucketOwner;
  /// Account id of the expected source bucket owner. If the source bucket is owned by a different account, the request will fail with an HTTP 403 (Access Denied) error.
  final pulumi.Input<String>? expectedSourceBucketOwner;
  /// If the object expiration is configured, this attribute will be set.
  final pulumi.Input<String>? expiration;
  /// Date and time at which the object is no longer cacheable, in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8).
  final pulumi.Input<String>? expires;
  /// Allow the object to be deleted by removing any legal hold on any object version. Default is `false`. This value should be set to `true` only if the bucket has S3 object lock enabled.
  final pulumi.Input<bool>? forceDestroy;
  /// Configuration block for header grants. Documented below. Conflicts with `acl`.
  final pulumi.Input<List<ObjectCopyGrant>>? grants;
  /// Name of the object once it is in the bucket.
  final pulumi.Input<String>? key;
  /// Specifies the AWS KMS Encryption Context to use for object encryption. The value is a base64-encoded UTF-8 string holding JSON with the encryption context key-value pairs.
  final pulumi.Input<String>? kmsEncryptionContext;
  /// Specifies the AWS KMS Key ARN to use for object encryption. This value is a fully qualified **ARN** of the KMS Key. If using `aws.kms.Key`, use the exported `arn` attribute: `kms_key_id = aws_kms_key.foo.arn`
  final pulumi.Input<String>? kmsKeyId;
  /// Returns the date that the object was last modified, in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8).
  final pulumi.Input<String>? lastModified;
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
  /// If present, indicates that the requester was successfully charged for the request.
  final pulumi.Input<bool>? requestCharged;
  /// Confirms that the requester knows that they will be charged for the request. Bucket owners need not specify this parameter in their requests. For information about downloading objects from requester pays buckets, see Downloading Objects in Requestor Pays Buckets (https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html) in the Amazon S3 Developer Guide. If included, the only valid value is `requester`.
  final pulumi.Input<String>? requestPayer;
  /// Specifies server-side encryption of the object in S3. Valid values are `AES256` and `aws:kms`.
  final pulumi.Input<String>? serverSideEncryption;
  /// Specifies the source object for the copy operation. You specify the value in one of two formats. For objects not accessed through an access point, specify the name of the source bucket and the key of the source object, separated by a slash (`/`). For example, `testbucket/test1.json`. For objects accessed through access points, specify the ARN of the object as accessed through the access point, in the format `arn:aws:s3:<Region>:<account-id>:accesspoint/<access-point-name>/object/<key>`. For example, `arn:aws:s3:us-west-2:9999912999:accesspoint/my-access-point/object/testbucket/test1.json`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? source;
  /// Specifies the algorithm to use when decrypting the source object (for example, AES256).
  final pulumi.Input<String>? sourceCustomerAlgorithm;
  /// Specifies the customer-provided encryption key for Amazon S3 to use to decrypt the source object. The encryption key provided in this header must be one that was used when the source object was created.
  final pulumi.Input<String>? sourceCustomerKey;
  /// Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header for a message integrity check to ensure that the encryption key was transmitted without error.
  final pulumi.Input<String>? sourceCustomerKeyMd5;
  /// Version of the copied object in the source bucket.
  final pulumi.Input<String>? sourceVersionId;
  /// Specifies the desired [storage class](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CopyObject.html#AmazonS3-CopyObject-request-header-StorageClass) for the object. Defaults to `STANDARD`.
  final pulumi.Input<String>? storageClass;
  /// Specifies whether the object tag-set are copied from the source object or replaced with tag-set provided in the request. Valid values are `COPY` and `REPLACE`.
  final pulumi.Input<String>? taggingDirective;
  /// Map of tags to assign to the object. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Version ID of the newly created copy.
  final pulumi.Input<String>? versionId;
  /// Specifies a target URL for [website redirect](http://docs.aws.amazon.com/AmazonS3/latest/dev/how-to-page-redirect.html).
  final pulumi.Input<String>? websiteRedirect;

  /// Creates a new [ObjectCopyState].
  /// [acl] [Canned ACL](https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#canned-acl) to apply. Valid values are `private`, `public-read`, `public-read-write`, `authenticated-read`, `aws-exec-read`, `bucket-owner-read`, and `bucket-owner-full-control`. Conflicts with `grant`.
  /// [arn] ARN of the object.
  /// [bucket] Name of the bucket to put the file in.
  /// [bucketKeyEnabled] Optional.
  /// [cacheControl] Specifies caching behavior along the request/reply chain Read [w3c cache_control](http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9) for further details.
  /// [checksumAlgorithm] Indicates the algorithm used to create the checksum for the object. If a value is specified and the object is encrypted with KMS, you must have permission to use the `kms:Decrypt` action. Valid values: `CRC32`, `CRC32C`, `CRC64NVME` `SHA1`, `SHA256`.
  /// [checksumCrc32] The base64-encoded, 32-bit CRC32 checksum of the object.
  /// [checksumCrc32c] The base64-encoded, 32-bit CRC32C checksum of the object.
  /// [checksumCrc64nvme] The base64-encoded, 64-bit CRC64NVME checksum of the object.
  /// [checksumSha1] The base64-encoded, 160-bit SHA-1 digest of the object.
  /// [checksumSha256] The base64-encoded, 256-bit SHA-256 digest of the object.
  /// [contentDisposition] Specifies presentational information for the object. Read [w3c content_disposition](http://www.w3.org/Protocols/rfc2616/rfc2616-sec19.html#sec19.5.1) for further information.
  /// [contentEncoding] Specifies what content encodings have been applied to the object and thus what decoding mechanisms must be applied to obtain the media-type referenced by the Content-Type header field. Read [w3c content encoding](http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.11) for further information.
  /// [contentLanguage] Language the content is in e.g., en-US or en-GB.
  /// [contentType] Standard MIME type describing the format of the object data, e.g., `application/octet-stream`. All Valid MIME Types are valid for this input.
  /// [copyIfMatch] Copies the object if its entity tag (ETag) matches the specified tag.
  /// [copyIfModifiedSince] Copies the object if it has been modified since the specified time, in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8).
  /// [copyIfNoneMatch] Copies the object if its entity tag (ETag) is different than the specified ETag.
  /// [copyIfUnmodifiedSince] Copies the object if it hasn't been modified since the specified time, in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8).
  /// [customerAlgorithm] Specifies the algorithm to use to when encrypting the object (for example, AES256).
  /// [customerKey] Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This value is used to store the object and then it is discarded; Amazon S3 does not store the encryption key. The key must be appropriate for use with the algorithm specified in the x-amz-server-side-encryption-customer-algorithm header.
  /// [customerKeyMd5] Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header for a message integrity check to ensure that the encryption key was transmitted without error.
  /// [etag] ETag generated for the object (an MD5 sum of the object content). For plaintext objects or objects encrypted with an AWS-managed key, the hash is an MD5 digest of the object data. For objects encrypted with a KMS key or objects created by either the Multipart Upload or Part Copy operation, the hash is not an MD5 digest, regardless of the method of encryption. More information on possible values can be found on [Common Response Headers](https://docs.aws.amazon.com/AmazonS3/latest/API/RESTCommonResponseHeaders.html).
  /// [expectedBucketOwner] Account id of the expected destination bucket owner. If the destination bucket is owned by a different account, the request will fail with an HTTP 403 (Access Denied) error.
  /// [expectedSourceBucketOwner] Account id of the expected source bucket owner. If the source bucket is owned by a different account, the request will fail with an HTTP 403 (Access Denied) error.
  /// [expiration] If the object expiration is configured, this attribute will be set.
  /// [expires] Date and time at which the object is no longer cacheable, in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8).
  /// [forceDestroy] Allow the object to be deleted by removing any legal hold on any object version. Default is `false`. This value should be set to `true` only if the bucket has S3 object lock enabled.
  /// [grants] Configuration block for header grants. Documented below. Conflicts with `acl`.
  /// [key] Name of the object once it is in the bucket.
  /// [kmsEncryptionContext] Specifies the AWS KMS Encryption Context to use for object encryption. The value is a base64-encoded UTF-8 string holding JSON with the encryption context key-value pairs.
  /// [kmsKeyId] Specifies the AWS KMS Key ARN to use for object encryption. This value is a fully qualified **ARN** of the KMS Key. If using `aws.kms.Key`, use the exported `arn` attribute: `kms_key_id = aws_kms_key.foo.arn`
  /// [lastModified] Returns the date that the object was last modified, in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8).
  /// [metadata] Map of keys/values to provision metadata (will be automatically prefixed by `x-amz-meta-`, note that only lowercase label are currently supported by the AWS Go API).
  /// [metadataDirective] Specifies whether the metadata is copied from the source object or replaced with metadata provided in the request. Valid values are `COPY` and `REPLACE`.
  /// [objectLockLegalHoldStatus] The [legal hold](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock-overview.html#object-lock-legal-holds) status that you want to apply to the specified object. Valid values are `ON` and `OFF`.
  /// [objectLockMode] Object lock [retention mode](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock-overview.html#object-lock-retention-modes) that you want to apply to this object. Valid values are `GOVERNANCE` and `COMPLIANCE`.
  /// [objectLockRetainUntilDate] Date and time, in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8), when this object's object lock will [expire](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock-overview.html#object-lock-retention-periods).
  /// [overrideProvider] Optional.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [requestCharged] If present, indicates that the requester was successfully charged for the request.
  /// [requestPayer] Confirms that the requester knows that they will be charged for the request. Bucket owners need not specify this parameter in their requests. For information about downloading objects from requester pays buckets, see Downloading Objects in Requestor Pays Buckets (https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html) in the Amazon S3 Developer Guide. If included, the only valid value is `requester`.
  /// [serverSideEncryption] Specifies server-side encryption of the object in S3. Valid values are `AES256` and `aws:kms`.
  /// [source] Specifies the source object for the copy operation. You specify the value in one of two formats. For objects not accessed through an access point, specify the name of the source bucket and the key of the source object, separated by a slash (`/`). For example, `testbucket/test1.json`. For objects accessed through access points, specify the ARN of the object as accessed through the access point, in the format `arn:aws:s3:<Region>:<account-id>:accesspoint/<access-point-name>/object/<key>`. For example, `arn:aws:s3:us-west-2:9999912999:accesspoint/my-access-point/object/testbucket/test1.json`.
  /// [sourceCustomerAlgorithm] Specifies the algorithm to use when decrypting the source object (for example, AES256).
  /// [sourceCustomerKey] Specifies the customer-provided encryption key for Amazon S3 to use to decrypt the source object. The encryption key provided in this header must be one that was used when the source object was created.
  /// [sourceCustomerKeyMd5] Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header for a message integrity check to ensure that the encryption key was transmitted without error.
  /// [sourceVersionId] Version of the copied object in the source bucket.
  /// [storageClass] Specifies the desired [storage class](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CopyObject.html#AmazonS3-CopyObject-request-header-StorageClass) for the object. Defaults to `STANDARD`.
  /// [taggingDirective] Specifies whether the object tag-set are copied from the source object or replaced with tag-set provided in the request. Valid values are `COPY` and `REPLACE`.
  /// [tags] Map of tags to assign to the object. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [versionId] Version ID of the newly created copy.
  /// [websiteRedirect] Specifies a target URL for [website redirect](http://docs.aws.amazon.com/AmazonS3/latest/dev/how-to-page-redirect.html).
  ObjectCopyState({
    pulumi.Output<String>? acl,
    pulumi.Output<String>? arn,
    pulumi.Output<String>? bucket,
    pulumi.Output<bool>? bucketKeyEnabled,
    pulumi.Output<String>? cacheControl,
    pulumi.Output<String>? checksumAlgorithm,
    pulumi.Output<String>? checksumCrc32,
    pulumi.Output<String>? checksumCrc32c,
    pulumi.Output<String>? checksumCrc64nvme,
    pulumi.Output<String>? checksumSha1,
    pulumi.Output<String>? checksumSha256,
    pulumi.Output<String>? contentDisposition,
    pulumi.Output<String>? contentEncoding,
    pulumi.Output<String>? contentLanguage,
    pulumi.Output<String>? contentType,
    pulumi.Output<String>? copyIfMatch,
    pulumi.Output<String>? copyIfModifiedSince,
    pulumi.Output<String>? copyIfNoneMatch,
    pulumi.Output<String>? copyIfUnmodifiedSince,
    pulumi.Output<String>? customerAlgorithm,
    pulumi.Output<String>? customerKey,
    pulumi.Output<String>? customerKeyMd5,
    pulumi.Output<String>? etag,
    pulumi.Output<String>? expectedBucketOwner,
    pulumi.Output<String>? expectedSourceBucketOwner,
    pulumi.Output<String>? expiration,
    pulumi.Output<String>? expires,
    pulumi.Output<bool>? forceDestroy,
    pulumi.Output<List<ObjectCopyGrant>>? grants,
    pulumi.Output<String>? key,
    pulumi.Output<String>? kmsEncryptionContext,
    pulumi.Output<String>? kmsKeyId,
    pulumi.Output<String>? lastModified,
    pulumi.Output<Map<String, String>>? metadata,
    pulumi.Output<String>? metadataDirective,
    pulumi.Output<String>? objectLockLegalHoldStatus,
    pulumi.Output<String>? objectLockMode,
    pulumi.Output<String>? objectLockRetainUntilDate,
    pulumi.Output<ObjectCopyOverrideProvider>? overrideProvider,
    pulumi.Output<String>? region,
    pulumi.Output<bool>? requestCharged,
    pulumi.Output<String>? requestPayer,
    pulumi.Output<String>? serverSideEncryption,
    pulumi.Output<String>? source,
    pulumi.Output<String>? sourceCustomerAlgorithm,
    pulumi.Output<String>? sourceCustomerKey,
    pulumi.Output<String>? sourceCustomerKeyMd5,
    pulumi.Output<String>? sourceVersionId,
    pulumi.Output<String>? storageClass,
    pulumi.Output<String>? taggingDirective,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? versionId,
    pulumi.Output<String>? websiteRedirect,
  }) :
      acl = pulumi.Input.asOptionalInput<String>(acl),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      bucket = pulumi.Input.asOptionalInput<String>(bucket),
      bucketKeyEnabled = pulumi.Input.asOptionalInput<bool>(bucketKeyEnabled),
      cacheControl = pulumi.Input.asOptionalInput<String>(cacheControl),
      checksumAlgorithm = pulumi.Input.asOptionalInput<String>(checksumAlgorithm),
      checksumCrc32 = pulumi.Input.asOptionalInput<String>(checksumCrc32),
      checksumCrc32c = pulumi.Input.asOptionalInput<String>(checksumCrc32c),
      checksumCrc64nvme = pulumi.Input.asOptionalInput<String>(checksumCrc64nvme),
      checksumSha1 = pulumi.Input.asOptionalInput<String>(checksumSha1),
      checksumSha256 = pulumi.Input.asOptionalInput<String>(checksumSha256),
      contentDisposition = pulumi.Input.asOptionalInput<String>(contentDisposition),
      contentEncoding = pulumi.Input.asOptionalInput<String>(contentEncoding),
      contentLanguage = pulumi.Input.asOptionalInput<String>(contentLanguage),
      contentType = pulumi.Input.asOptionalInput<String>(contentType),
      copyIfMatch = pulumi.Input.asOptionalInput<String>(copyIfMatch),
      copyIfModifiedSince = pulumi.Input.asOptionalInput<String>(copyIfModifiedSince),
      copyIfNoneMatch = pulumi.Input.asOptionalInput<String>(copyIfNoneMatch),
      copyIfUnmodifiedSince = pulumi.Input.asOptionalInput<String>(copyIfUnmodifiedSince),
      customerAlgorithm = pulumi.Input.asOptionalInput<String>(customerAlgorithm),
      customerKey = pulumi.Input.asOptionalInput<String>(customerKey),
      customerKeyMd5 = pulumi.Input.asOptionalInput<String>(customerKeyMd5),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      expectedBucketOwner = pulumi.Input.asOptionalInput<String>(expectedBucketOwner),
      expectedSourceBucketOwner = pulumi.Input.asOptionalInput<String>(expectedSourceBucketOwner),
      expiration = pulumi.Input.asOptionalInput<String>(expiration),
      expires = pulumi.Input.asOptionalInput<String>(expires),
      forceDestroy = pulumi.Input.asOptionalInput<bool>(forceDestroy),
      grants = pulumi.Input.asOptionalInput<List<ObjectCopyGrant>>(grants),
      key = pulumi.Input.asOptionalInput<String>(key),
      kmsEncryptionContext = pulumi.Input.asOptionalInput<String>(kmsEncryptionContext),
      kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
      lastModified = pulumi.Input.asOptionalInput<String>(lastModified),
      metadata = pulumi.Input.asOptionalInput<Map<String, String>>(metadata),
      metadataDirective = pulumi.Input.asOptionalInput<String>(metadataDirective),
      objectLockLegalHoldStatus = pulumi.Input.asOptionalInput<String>(objectLockLegalHoldStatus),
      objectLockMode = pulumi.Input.asOptionalInput<String>(objectLockMode),
      objectLockRetainUntilDate = pulumi.Input.asOptionalInput<String>(objectLockRetainUntilDate),
      overrideProvider = pulumi.Input.asOptionalInput<ObjectCopyOverrideProvider>(overrideProvider),
      region = pulumi.Input.asOptionalInput<String>(region),
      requestCharged = pulumi.Input.asOptionalInput<bool>(requestCharged),
      requestPayer = pulumi.Input.asOptionalInput<String>(requestPayer),
      serverSideEncryption = pulumi.Input.asOptionalInput<String>(serverSideEncryption),
      source = pulumi.Input.asOptionalInput<String>(source),
      sourceCustomerAlgorithm = pulumi.Input.asOptionalInput<String>(sourceCustomerAlgorithm),
      sourceCustomerKey = pulumi.Input.asOptionalInput<String>(sourceCustomerKey),
      sourceCustomerKeyMd5 = pulumi.Input.asOptionalInput<String>(sourceCustomerKeyMd5),
      sourceVersionId = pulumi.Input.asOptionalInput<String>(sourceVersionId),
      storageClass = pulumi.Input.asOptionalInput<String>(storageClass),
      taggingDirective = pulumi.Input.asOptionalInput<String>(taggingDirective),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      versionId = pulumi.Input.asOptionalInput<String>(versionId),
      websiteRedirect = pulumi.Input.asOptionalInput<String>(websiteRedirect);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acl': ?acl,
      'arn': ?arn,
      'bucket': ?bucket,
      'bucketKeyEnabled': ?bucketKeyEnabled,
      'cacheControl': ?cacheControl,
      'checksumAlgorithm': ?checksumAlgorithm,
      'checksumCrc32': ?checksumCrc32,
      'checksumCrc32c': ?checksumCrc32c,
      'checksumCrc64nvme': ?checksumCrc64nvme,
      'checksumSha1': ?checksumSha1,
      'checksumSha256': ?checksumSha256,
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
      'etag': ?etag,
      'expectedBucketOwner': ?expectedBucketOwner,
      'expectedSourceBucketOwner': ?expectedSourceBucketOwner,
      'expiration': ?expiration,
      'expires': ?expires,
      'forceDestroy': ?forceDestroy,
      'grants': ?pulumi.Input.mapOptionalInputValue<List<ObjectCopyGrant>, List<Map<String, dynamic>>>(grants, (value) => pulumi.Input.encodeList<ObjectCopyGrant, Map<String, dynamic>>(value, (value) => value.toMap())),
      'key': ?key,
      'kmsEncryptionContext': ?kmsEncryptionContext,
      'kmsKeyId': ?kmsKeyId,
      'lastModified': ?lastModified,
      'metadata': ?metadata,
      'metadataDirective': ?metadataDirective,
      'objectLockLegalHoldStatus': ?objectLockLegalHoldStatus,
      'objectLockMode': ?objectLockMode,
      'objectLockRetainUntilDate': ?objectLockRetainUntilDate,
      'overrideProvider': ?pulumi.Input.mapOptionalInputValue<ObjectCopyOverrideProvider, Map<String, dynamic>>(overrideProvider, (value) => value.toMap()),
      'region': ?region,
      'requestCharged': ?requestCharged,
      'requestPayer': ?requestPayer,
      'serverSideEncryption': ?serverSideEncryption,
      'source': ?source,
      'sourceCustomerAlgorithm': ?sourceCustomerAlgorithm,
      'sourceCustomerKey': ?sourceCustomerKey,
      'sourceCustomerKeyMd5': ?sourceCustomerKeyMd5,
      'sourceVersionId': ?sourceVersionId,
      'storageClass': ?storageClass,
      'taggingDirective': ?taggingDirective,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'versionId': ?versionId,
      'websiteRedirect': ?websiteRedirect,
    };
  }

  factory ObjectCopyState.fromMap(Map<String, dynamic> map) {
    return ObjectCopyState(
      acl: map['acl'] == null ? null : pulumi.Output.create<String>(map['acl'] as String),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      bucket: map['bucket'] == null ? null : pulumi.Output.create<String>(map['bucket'] as String),
      bucketKeyEnabled: map['bucketKeyEnabled'] == null ? null : pulumi.Output.create<bool>(map['bucketKeyEnabled'] as bool),
      cacheControl: map['cacheControl'] == null ? null : pulumi.Output.create<String>(map['cacheControl'] as String),
      checksumAlgorithm: map['checksumAlgorithm'] == null ? null : pulumi.Output.create<String>(map['checksumAlgorithm'] as String),
      checksumCrc32: map['checksumCrc32'] == null ? null : pulumi.Output.create<String>(map['checksumCrc32'] as String),
      checksumCrc32c: map['checksumCrc32c'] == null ? null : pulumi.Output.create<String>(map['checksumCrc32c'] as String),
      checksumCrc64nvme: map['checksumCrc64nvme'] == null ? null : pulumi.Output.create<String>(map['checksumCrc64nvme'] as String),
      checksumSha1: map['checksumSha1'] == null ? null : pulumi.Output.create<String>(map['checksumSha1'] as String),
      checksumSha256: map['checksumSha256'] == null ? null : pulumi.Output.create<String>(map['checksumSha256'] as String),
      contentDisposition: map['contentDisposition'] == null ? null : pulumi.Output.create<String>(map['contentDisposition'] as String),
      contentEncoding: map['contentEncoding'] == null ? null : pulumi.Output.create<String>(map['contentEncoding'] as String),
      contentLanguage: map['contentLanguage'] == null ? null : pulumi.Output.create<String>(map['contentLanguage'] as String),
      contentType: map['contentType'] == null ? null : pulumi.Output.create<String>(map['contentType'] as String),
      copyIfMatch: map['copyIfMatch'] == null ? null : pulumi.Output.create<String>(map['copyIfMatch'] as String),
      copyIfModifiedSince: map['copyIfModifiedSince'] == null ? null : pulumi.Output.create<String>(map['copyIfModifiedSince'] as String),
      copyIfNoneMatch: map['copyIfNoneMatch'] == null ? null : pulumi.Output.create<String>(map['copyIfNoneMatch'] as String),
      copyIfUnmodifiedSince: map['copyIfUnmodifiedSince'] == null ? null : pulumi.Output.create<String>(map['copyIfUnmodifiedSince'] as String),
      customerAlgorithm: map['customerAlgorithm'] == null ? null : pulumi.Output.create<String>(map['customerAlgorithm'] as String),
      customerKey: map['customerKey'] == null ? null : pulumi.Output.create<String>(map['customerKey'] as String),
      customerKeyMd5: map['customerKeyMd5'] == null ? null : pulumi.Output.create<String>(map['customerKeyMd5'] as String),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      expectedBucketOwner: map['expectedBucketOwner'] == null ? null : pulumi.Output.create<String>(map['expectedBucketOwner'] as String),
      expectedSourceBucketOwner: map['expectedSourceBucketOwner'] == null ? null : pulumi.Output.create<String>(map['expectedSourceBucketOwner'] as String),
      expiration: map['expiration'] == null ? null : pulumi.Output.create<String>(map['expiration'] as String),
      expires: map['expires'] == null ? null : pulumi.Output.create<String>(map['expires'] as String),
      forceDestroy: map['forceDestroy'] == null ? null : pulumi.Output.create<bool>(map['forceDestroy'] as bool),
      grants: map['grants'] == null ? null : pulumi.Output.create<List<ObjectCopyGrant>>(pulumi.Input.decodeList<ObjectCopyGrant>(map['grants'], (value) => ObjectCopyGrant.fromMap((value as Map).cast<String, dynamic>()))),
      key: map['key'] == null ? null : pulumi.Output.create<String>(map['key'] as String),
      kmsEncryptionContext: map['kmsEncryptionContext'] == null ? null : pulumi.Output.create<String>(map['kmsEncryptionContext'] as String),
      kmsKeyId: map['kmsKeyId'] == null ? null : pulumi.Output.create<String>(map['kmsKeyId'] as String),
      lastModified: map['lastModified'] == null ? null : pulumi.Output.create<String>(map['lastModified'] as String),
      metadata: map['metadata'] == null ? null : pulumi.Output.create<Map<String, String>>((map['metadata'] as Map).cast<String, String>()),
      metadataDirective: map['metadataDirective'] == null ? null : pulumi.Output.create<String>(map['metadataDirective'] as String),
      objectLockLegalHoldStatus: map['objectLockLegalHoldStatus'] == null ? null : pulumi.Output.create<String>(map['objectLockLegalHoldStatus'] as String),
      objectLockMode: map['objectLockMode'] == null ? null : pulumi.Output.create<String>(map['objectLockMode'] as String),
      objectLockRetainUntilDate: map['objectLockRetainUntilDate'] == null ? null : pulumi.Output.create<String>(map['objectLockRetainUntilDate'] as String),
      overrideProvider: map['overrideProvider'] == null ? null : pulumi.Output.create<ObjectCopyOverrideProvider>(ObjectCopyOverrideProvider.fromMap((map['overrideProvider'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      requestCharged: map['requestCharged'] == null ? null : pulumi.Output.create<bool>(map['requestCharged'] as bool),
      requestPayer: map['requestPayer'] == null ? null : pulumi.Output.create<String>(map['requestPayer'] as String),
      serverSideEncryption: map['serverSideEncryption'] == null ? null : pulumi.Output.create<String>(map['serverSideEncryption'] as String),
      source: map['source'] == null ? null : pulumi.Output.create<String>(map['source'] as String),
      sourceCustomerAlgorithm: map['sourceCustomerAlgorithm'] == null ? null : pulumi.Output.create<String>(map['sourceCustomerAlgorithm'] as String),
      sourceCustomerKey: map['sourceCustomerKey'] == null ? null : pulumi.Output.create<String>(map['sourceCustomerKey'] as String),
      sourceCustomerKeyMd5: map['sourceCustomerKeyMd5'] == null ? null : pulumi.Output.create<String>(map['sourceCustomerKeyMd5'] as String),
      sourceVersionId: map['sourceVersionId'] == null ? null : pulumi.Output.create<String>(map['sourceVersionId'] as String),
      storageClass: map['storageClass'] == null ? null : pulumi.Output.create<String>(map['storageClass'] as String),
      taggingDirective: map['taggingDirective'] == null ? null : pulumi.Output.create<String>(map['taggingDirective'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      versionId: map['versionId'] == null ? null : pulumi.Output.create<String>(map['versionId'] as String),
      websiteRedirect: map['websiteRedirect'] == null ? null : pulumi.Output.create<String>(map['websiteRedirect'] as String),
    );
  }
}


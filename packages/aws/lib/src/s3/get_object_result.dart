// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getObject.
class GetObjectResult {
  /// ARN of the object.
  final String arn;

  /// Object data (see **limitations above** to understand cases in which this field is actually available). If `download_body` is set to `false`, `body` is not available.
  final String body;

  /// Object data as base64 encoded string. **This is only available if `download_body` is set to `true`.**
  final String bodyBase64;
  final String bucket;

  /// (Optional) Whether or not to use [Amazon S3 Bucket Keys](https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-key.html) for SSE-KMS.
  final bool bucketKeyEnabled;

  /// Caching behavior along the request/reply chain.
  final String cacheControl;

  /// The base64-encoded, 32-bit CRC32 checksum of the object.
  final String checksumCrc32;

  /// The base64-encoded, 32-bit CRC32C checksum of the object.
  final String checksumCrc32c;

  /// The base64-encoded, 64-bit CRC64NVME checksum of the object.
  final String checksumCrc64nvme;
  final String? checksumMode;

  /// The base64-encoded, 160-bit SHA-1 digest of the object.
  final String checksumSha1;

  /// The base64-encoded, 256-bit SHA-256 digest of the object.
  final String checksumSha256;

  /// Presentational information for the object.
  final String contentDisposition;

  /// What content encodings have been applied to the object and thus what decoding mechanisms must be applied to obtain the media-type referenced by the Content-Type header field.
  final String contentEncoding;

  /// Language the content is in.
  final String contentLanguage;

  /// Size of the body in bytes.
  final int contentLength;

  /// Standard MIME type describing the format of the object data.
  final String contentType;
  final String? downloadBody;

  /// [ETag](https://en.wikipedia.org/wiki/HTTP_ETag) generated for the object (an MD5 sum of the object content in case it's not encrypted)
  final String etag;

  /// If the object expiration is configured (see [object lifecycle management](http://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html)), the field includes this header. It includes the expiry-date and rule-id key value pairs providing object expiration information. The value of the rule-id is URL encoded.
  final String expiration;

  /// Date and time at which the object is no longer cacheable.
  final String expires;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String key;

  /// Last modified date of the object in RFC1123 format (e.g., `Mon, 02 Jan 2006 15:04:05 MST`)
  final String lastModified;

  /// Map of metadata stored with the object in S3. Keys are always returned in lowercase.
  final Map<String, String> metadata;

  /// Indicates whether this object has an active [legal hold](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock-overview.html#object-lock-legal-holds). This field is only returned if you have permission to view an object's legal hold status.
  final String objectLockLegalHoldStatus;

  /// Object lock [retention mode](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock-overview.html#object-lock-retention-modes) currently in place for this object.
  final String objectLockMode;

  /// The date and time when this object's object lock will expire.
  final String objectLockRetainUntilDate;
  final String? range;
  final String region;

  /// If the object is stored using server-side encryption (KMS or Amazon S3-managed encryption key), this field includes the chosen encryption and algorithm used.
  final String serverSideEncryption;

  /// If present, specifies the ID of the Key Management Service (KMS) master encryption key that was used for the object.
  final String sseKmsKeyId;

  /// [Storage class](http://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html) information of the object. Available for all objects except for `Standard` storage class objects.
  final String storageClass;

  /// Map of tags assigned to the object.
  final Map<String, String> tags;

  /// Latest version ID of the object returned.
  final String versionId;

  /// If the bucket is configured as a website, redirects requests for this object to another object in the same bucket or to an external URL. Amazon S3 stores the value of this header in the object metadata.
  final String websiteRedirectLocation;

  /// Creates a new [GetObjectResult].
  /// [arn] ARN of the object.
  /// [body] Object data (see **limitations above** to understand cases in which this field is actually available). If `download_body` is set to `false`, `body` is not available.
  /// [bodyBase64] Object data as base64 encoded string. **This is only available if `download_body` is set to `true`.**
  /// [bucket] Required.
  /// [bucketKeyEnabled] (Optional) Whether or not to use [Amazon S3 Bucket Keys](https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-key.html) for SSE-KMS.
  /// [cacheControl] Caching behavior along the request/reply chain.
  /// [checksumCrc32] The base64-encoded, 32-bit CRC32 checksum of the object.
  /// [checksumCrc32c] The base64-encoded, 32-bit CRC32C checksum of the object.
  /// [checksumCrc64nvme] The base64-encoded, 64-bit CRC64NVME checksum of the object.
  /// [checksumMode] Optional.
  /// [checksumSha1] The base64-encoded, 160-bit SHA-1 digest of the object.
  /// [checksumSha256] The base64-encoded, 256-bit SHA-256 digest of the object.
  /// [contentDisposition] Presentational information for the object.
  /// [contentEncoding] What content encodings have been applied to the object and thus what decoding mechanisms must be applied to obtain the media-type referenced by the Content-Type header field.
  /// [contentLanguage] Language the content is in.
  /// [contentLength] Size of the body in bytes.
  /// [contentType] Standard MIME type describing the format of the object data.
  /// [downloadBody] Optional.
  /// [etag] [ETag](https://en.wikipedia.org/wiki/HTTP_ETag) generated for the object (an MD5 sum of the object content in case it's not encrypted)
  /// [expiration] If the object expiration is configured (see [object lifecycle management](http://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html)), the field includes this header. It includes the expiry-date and rule-id key value pairs providing object expiration information. The value of the rule-id is URL encoded.
  /// [expires] Date and time at which the object is no longer cacheable.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [key] Required.
  /// [lastModified] Last modified date of the object in RFC1123 format (e.g., `Mon, 02 Jan 2006 15:04:05 MST`)
  /// [metadata] Map of metadata stored with the object in S3. Keys are always returned in lowercase.
  /// [objectLockLegalHoldStatus] Indicates whether this object has an active [legal hold](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock-overview.html#object-lock-legal-holds). This field is only returned if you have permission to view an object's legal hold status.
  /// [objectLockMode] Object lock [retention mode](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock-overview.html#object-lock-retention-modes) currently in place for this object.
  /// [objectLockRetainUntilDate] The date and time when this object's object lock will expire.
  /// [range] Optional.
  /// [region] Required.
  /// [serverSideEncryption] If the object is stored using server-side encryption (KMS or Amazon S3-managed encryption key), this field includes the chosen encryption and algorithm used.
  /// [sseKmsKeyId] If present, specifies the ID of the Key Management Service (KMS) master encryption key that was used for the object.
  /// [storageClass] [Storage class](http://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html) information of the object. Available for all objects except for `Standard` storage class objects.
  /// [tags] Map of tags assigned to the object.
  /// [versionId] Latest version ID of the object returned.
  /// [websiteRedirectLocation] If the bucket is configured as a website, redirects requests for this object to another object in the same bucket or to an external URL. Amazon S3 stores the value of this header in the object metadata.
  GetObjectResult({
    required this.arn,
    required this.body,
    required this.bodyBase64,
    required this.bucket,
    required this.bucketKeyEnabled,
    required this.cacheControl,
    required this.checksumCrc32,
    required this.checksumCrc32c,
    required this.checksumCrc64nvme,
    this.checksumMode,
    required this.checksumSha1,
    required this.checksumSha256,
    required this.contentDisposition,
    required this.contentEncoding,
    required this.contentLanguage,
    required this.contentLength,
    required this.contentType,
    this.downloadBody,
    required this.etag,
    required this.expiration,
    required this.expires,
    required this.id,
    required this.key,
    required this.lastModified,
    required this.metadata,
    required this.objectLockLegalHoldStatus,
    required this.objectLockMode,
    required this.objectLockRetainUntilDate,
    this.range,
    required this.region,
    required this.serverSideEncryption,
    required this.sseKmsKeyId,
    required this.storageClass,
    required this.tags,
    required this.versionId,
    required this.websiteRedirectLocation,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['body'] = body;
    map['bodyBase64'] = bodyBase64;
    map['bucket'] = bucket;
    map['bucketKeyEnabled'] = bucketKeyEnabled;
    map['cacheControl'] = cacheControl;
    map['checksumCrc32'] = checksumCrc32;
    map['checksumCrc32c'] = checksumCrc32c;
    map['checksumCrc64nvme'] = checksumCrc64nvme;
    final checksumModeValue = checksumMode;
    if (checksumModeValue != null) {
      map['checksumMode'] = checksumModeValue;
    }
    map['checksumSha1'] = checksumSha1;
    map['checksumSha256'] = checksumSha256;
    map['contentDisposition'] = contentDisposition;
    map['contentEncoding'] = contentEncoding;
    map['contentLanguage'] = contentLanguage;
    map['contentLength'] = contentLength;
    map['contentType'] = contentType;
    final downloadBodyValue = downloadBody;
    if (downloadBodyValue != null) {
      map['downloadBody'] = downloadBodyValue;
    }
    map['etag'] = etag;
    map['expiration'] = expiration;
    map['expires'] = expires;
    map['id'] = id;
    map['key'] = key;
    map['lastModified'] = lastModified;
    map['metadata'] = metadata;
    map['objectLockLegalHoldStatus'] = objectLockLegalHoldStatus;
    map['objectLockMode'] = objectLockMode;
    map['objectLockRetainUntilDate'] = objectLockRetainUntilDate;
    final rangeValue = range;
    if (rangeValue != null) {
      map['range'] = rangeValue;
    }
    map['region'] = region;
    map['serverSideEncryption'] = serverSideEncryption;
    map['sseKmsKeyId'] = sseKmsKeyId;
    map['storageClass'] = storageClass;
    map['tags'] = tags;
    map['versionId'] = versionId;
    map['websiteRedirectLocation'] = websiteRedirectLocation;
    return map;
  }

  factory GetObjectResult.fromMap(Map<String, dynamic> map) {
    return GetObjectResult(
      arn: map['arn'] as String,
      body: map['body'] as String,
      bodyBase64: map['bodyBase64'] as String,
      bucket: map['bucket'] as String,
      bucketKeyEnabled: map['bucketKeyEnabled'] as bool,
      cacheControl: map['cacheControl'] as String,
      checksumCrc32: map['checksumCrc32'] as String,
      checksumCrc32c: map['checksumCrc32c'] as String,
      checksumCrc64nvme: map['checksumCrc64nvme'] as String,
      checksumMode:
          map['checksumMode'] == null ? null : map['checksumMode'] as String,
      checksumSha1: map['checksumSha1'] as String,
      checksumSha256: map['checksumSha256'] as String,
      contentDisposition: map['contentDisposition'] as String,
      contentEncoding: map['contentEncoding'] as String,
      contentLanguage: map['contentLanguage'] as String,
      contentLength: map['contentLength'] as int,
      contentType: map['contentType'] as String,
      downloadBody:
          map['downloadBody'] == null ? null : map['downloadBody'] as String,
      etag: map['etag'] as String,
      expiration: map['expiration'] as String,
      expires: map['expires'] as String,
      id: map['id'] as String,
      key: map['key'] as String,
      lastModified: map['lastModified'] as String,
      metadata: (map['metadata'] as Map).cast<String, String>(),
      objectLockLegalHoldStatus: map['objectLockLegalHoldStatus'] as String,
      objectLockMode: map['objectLockMode'] as String,
      objectLockRetainUntilDate: map['objectLockRetainUntilDate'] as String,
      range: map['range'] == null ? null : map['range'] as String,
      region: map['region'] as String,
      serverSideEncryption: map['serverSideEncryption'] as String,
      sseKmsKeyId: map['sseKmsKeyId'] as String,
      storageClass: map['storageClass'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      versionId: map['versionId'] as String,
      websiteRedirectLocation: map['websiteRedirectLocation'] as String,
    );
  }
}

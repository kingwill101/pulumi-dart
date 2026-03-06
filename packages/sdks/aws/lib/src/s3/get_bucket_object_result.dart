// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getBucketObject.
class GetBucketObjectResult {
  final String arn;
  /// Object data (see **limitations above** to understand cases in which this field is actually available)
  final String body;
  final String bucket;
  /// (Optional) Whether or not to use [Amazon S3 Bucket Keys](https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-key.html) for SSE-KMS.
  final bool bucketKeyEnabled;
  /// Caching behavior along the request/reply chain.
  final String cacheControl;
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

  /// Creates a new [GetBucketObjectResult].
  /// [arn] Required.
  /// [body] Object data (see **limitations above** to understand cases in which this field is actually available)
  /// [bucket] Required.
  /// [bucketKeyEnabled] (Optional) Whether or not to use [Amazon S3 Bucket Keys](https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-key.html) for SSE-KMS.
  /// [cacheControl] Caching behavior along the request/reply chain.
  /// [contentDisposition] Presentational information for the object.
  /// [contentEncoding] What content encodings have been applied to the object and thus what decoding mechanisms must be applied to obtain the media-type referenced by the Content-Type header field.
  /// [contentLanguage] Language the content is in.
  /// [contentLength] Size of the body in bytes.
  /// [contentType] Standard MIME type describing the format of the object data.
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
  const GetBucketObjectResult({
    required this.arn,
    required this.body,
    required this.bucket,
    required this.bucketKeyEnabled,
    required this.cacheControl,
    required this.contentDisposition,
    required this.contentEncoding,
    required this.contentLanguage,
    required this.contentLength,
    required this.contentType,
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
    return <String, dynamic>{
      'arn': arn,
      'body': body,
      'bucket': bucket,
      'bucketKeyEnabled': bucketKeyEnabled,
      'cacheControl': cacheControl,
      'contentDisposition': contentDisposition,
      'contentEncoding': contentEncoding,
      'contentLanguage': contentLanguage,
      'contentLength': contentLength,
      'contentType': contentType,
      'etag': etag,
      'expiration': expiration,
      'expires': expires,
      'id': id,
      'key': key,
      'lastModified': lastModified,
      'metadata': metadata,
      'objectLockLegalHoldStatus': objectLockLegalHoldStatus,
      'objectLockMode': objectLockMode,
      'objectLockRetainUntilDate': objectLockRetainUntilDate,
      'range': ?range,
      'region': region,
      'serverSideEncryption': serverSideEncryption,
      'sseKmsKeyId': sseKmsKeyId,
      'storageClass': storageClass,
      'tags': tags,
      'versionId': versionId,
      'websiteRedirectLocation': websiteRedirectLocation,
    };
  }

  factory GetBucketObjectResult.fromMap(Map<String, dynamic> map) {
    return GetBucketObjectResult(
      arn: map['arn'] as String,
      body: map['body'] as String,
      bucket: map['bucket'] as String,
      bucketKeyEnabled: map['bucketKeyEnabled'] as bool,
      cacheControl: map['cacheControl'] as String,
      contentDisposition: map['contentDisposition'] as String,
      contentEncoding: map['contentEncoding'] as String,
      contentLanguage: map['contentLanguage'] as String,
      contentLength: map['contentLength'] as int,
      contentType: map['contentType'] as String,
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
      range: (() { final guardedValue = map['range']; if (guardedValue == null) return null; return guardedValue as String; })(),
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


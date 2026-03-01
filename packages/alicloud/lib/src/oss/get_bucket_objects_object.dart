// ignore_for_file: unused_element, unnecessary_cast


class GetBucketObjectsObject {
  /// Object access control list. Possible values: `default`, `private`, `public-read` and `public-read-write`.
  final String acl;
  /// Caching behavior along the request/reply chain. Read [RFC2616 Cache-Control](https://www.ietf.org/rfc/rfc2616.txt) for further details.
  final String cacheControl;
  /// Presentational information for the object. Read [RFC2616 Content-Disposition](https://www.ietf.org/rfc/rfc2616.txt) for further details.
  final String contentDisposition;
  /// Content encodings that have been applied to the object and thus what decoding mechanisms must be applied to obtain the media-type referenced by the Content-Type header field. Read [RFC2616 Content-Encoding](https://www.ietf.org/rfc/rfc2616.txt) for further details.
  final String contentEncoding;
  /// Size of the object in bytes.
  final String contentLength;
  /// MD5 value of the content. Read [MD5](https://www.alibabacloud.com/help/doc-detail/31978.htm) for computing method.
  final String contentMd5;
  /// Standard MIME type describing the format of the object data, e.g. "application/octet-stream".
  final String contentType;
  /// ETag generated for the object (MD5 sum of the object content).
  final String etag;
  /// Expiration date for the the request/response. Read [RFC2616 Expires](https://www.ietf.org/rfc/rfc2616.txt) for further details.
  final String expires;
  /// Object key.
  final String key;
  /// Last modification time of the object.
  final String lastModificationTime;
  /// Server-side encryption of the object in OSS. It can be empty or `AES256`.
  final String serverSideEncryption;
  /// If present, specifies the ID of the Key Management Service(KMS) master encryption key that was used for the object.
  final String sseKmsKeyId;
  /// Object storage type. Possible values: `Standard`, `IA`, `Archive` and `ColdArchive`.
  final String storageClass;

  /// Creates a new [GetBucketObjectsObject].
  /// [acl] Object access control list. Possible values: `default`, `private`, `public-read` and `public-read-write`.
  /// [cacheControl] Caching behavior along the request/reply chain. Read [RFC2616 Cache-Control](https://www.ietf.org/rfc/rfc2616.txt) for further details.
  /// [contentDisposition] Presentational information for the object. Read [RFC2616 Content-Disposition](https://www.ietf.org/rfc/rfc2616.txt) for further details.
  /// [contentEncoding] Content encodings that have been applied to the object and thus what decoding mechanisms must be applied to obtain the media-type referenced by the Content-Type header field. Read [RFC2616 Content-Encoding](https://www.ietf.org/rfc/rfc2616.txt) for further details.
  /// [contentLength] Size of the object in bytes.
  /// [contentMd5] MD5 value of the content. Read [MD5](https://www.alibabacloud.com/help/doc-detail/31978.htm) for computing method.
  /// [contentType] Standard MIME type describing the format of the object data, e.g. "application/octet-stream".
  /// [etag] ETag generated for the object (MD5 sum of the object content).
  /// [expires] Expiration date for the the request/response. Read [RFC2616 Expires](https://www.ietf.org/rfc/rfc2616.txt) for further details.
  /// [key] Object key.
  /// [lastModificationTime] Last modification time of the object.
  /// [serverSideEncryption] Server-side encryption of the object in OSS. It can be empty or `AES256`.
  /// [sseKmsKeyId] If present, specifies the ID of the Key Management Service(KMS) master encryption key that was used for the object.
  /// [storageClass] Object storage type. Possible values: `Standard`, `IA`, `Archive` and `ColdArchive`.
  GetBucketObjectsObject({
    required this.acl,
    required this.cacheControl,
    required this.contentDisposition,
    required this.contentEncoding,
    required this.contentLength,
    required this.contentMd5,
    required this.contentType,
    required this.etag,
    required this.expires,
    required this.key,
    required this.lastModificationTime,
    required this.serverSideEncryption,
    required this.sseKmsKeyId,
    required this.storageClass,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acl': acl,
      'cacheControl': cacheControl,
      'contentDisposition': contentDisposition,
      'contentEncoding': contentEncoding,
      'contentLength': contentLength,
      'contentMd5': contentMd5,
      'contentType': contentType,
      'etag': etag,
      'expires': expires,
      'key': key,
      'lastModificationTime': lastModificationTime,
      'serverSideEncryption': serverSideEncryption,
      'sseKmsKeyId': sseKmsKeyId,
      'storageClass': storageClass,
    };
  }

  factory GetBucketObjectsObject.fromMap(Map<String, dynamic> map) {
    return GetBucketObjectsObject(
      acl: map['acl'] as String,
      cacheControl: map['cacheControl'] as String,
      contentDisposition: map['contentDisposition'] as String,
      contentEncoding: map['contentEncoding'] as String,
      contentLength: map['contentLength'] as String,
      contentMd5: map['contentMd5'] as String,
      contentType: map['contentType'] as String,
      etag: map['etag'] as String,
      expires: map['expires'] as String,
      key: map['key'] as String,
      lastModificationTime: map['lastModificationTime'] as String,
      serverSideEncryption: map['serverSideEncryption'] as String,
      sseKmsKeyId: map['sseKmsKeyId'] as String,
      storageClass: map['storageClass'] as String,
    );
  }
}


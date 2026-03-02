// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBucketObjectsObject {
  /// Object access control list. Possible values: `default`, `private`, `public-read` and `public-read-write`.
  final pulumi.Input<String> acl;
  /// Caching behavior along the request/reply chain. Read [RFC2616 Cache-Control](https://www.ietf.org/rfc/rfc2616.txt) for further details.
  final pulumi.Input<String> cacheControl;
  /// Presentational information for the object. Read [RFC2616 Content-Disposition](https://www.ietf.org/rfc/rfc2616.txt) for further details.
  final pulumi.Input<String> contentDisposition;
  /// Content encodings that have been applied to the object and thus what decoding mechanisms must be applied to obtain the media-type referenced by the Content-Type header field. Read [RFC2616 Content-Encoding](https://www.ietf.org/rfc/rfc2616.txt) for further details.
  final pulumi.Input<String> contentEncoding;
  /// Size of the object in bytes.
  final pulumi.Input<String> contentLength;
  /// MD5 value of the content. Read [MD5](https://www.alibabacloud.com/help/doc-detail/31978.htm) for computing method.
  final pulumi.Input<String> contentMd5;
  /// Standard MIME type describing the format of the object data, e.g. "application/octet-stream".
  final pulumi.Input<String> contentType;
  /// ETag generated for the object (MD5 sum of the object content).
  final pulumi.Input<String> etag;
  /// Expiration date for the the request/response. Read [RFC2616 Expires](https://www.ietf.org/rfc/rfc2616.txt) for further details.
  final pulumi.Input<String> expires;
  /// Object key.
  final pulumi.Input<String> key;
  /// Last modification time of the object.
  final pulumi.Input<String> lastModificationTime;
  /// Server-side encryption of the object in OSS. It can be empty or `AES256`.
  final pulumi.Input<String> serverSideEncryption;
  /// If present, specifies the ID of the Key Management Service(KMS) master encryption key that was used for the object.
  final pulumi.Input<String> sseKmsKeyId;
  /// Object storage type. Possible values: `Standard`, `IA`, `Archive` and `ColdArchive`.
  final pulumi.Input<String> storageClass;

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
      acl: (map['acl'] as String).input(),
      cacheControl: (map['cacheControl'] as String).input(),
      contentDisposition: (map['contentDisposition'] as String).input(),
      contentEncoding: (map['contentEncoding'] as String).input(),
      contentLength: (map['contentLength'] as String).input(),
      contentMd5: (map['contentMd5'] as String).input(),
      contentType: (map['contentType'] as String).input(),
      etag: (map['etag'] as String).input(),
      expires: (map['expires'] as String).input(),
      key: (map['key'] as String).input(),
      lastModificationTime: (map['lastModificationTime'] as String).input(),
      serverSideEncryption: (map['serverSideEncryption'] as String).input(),
      sseKmsKeyId: (map['sseKmsKeyId'] as String).input(),
      storageClass: (map['storageClass'] as String).input(),
    );
  }
}


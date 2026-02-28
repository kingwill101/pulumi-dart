// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getObjectSignedUrl.
class GetObjectSignedUrlResult {
  final String bucket;
  final String? contentMd5;
  final String? contentType;
  final String? credentials;
  final String? duration;
  final Map<String, String>? extensionHeaders;
  final String? httpMethod;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String path;
  /// The signed URL that can be used to access the storage object without authentication.
  final String signedUrl;

  /// Creates a new [GetObjectSignedUrlResult].
  /// [bucket] Required.
  /// [contentMd5] Optional.
  /// [contentType] Optional.
  /// [credentials] Optional.
  /// [duration] Optional.
  /// [extensionHeaders] Optional.
  /// [httpMethod] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [path] Required.
  /// [signedUrl] The signed URL that can be used to access the storage object without authentication.
  GetObjectSignedUrlResult({
    required this.bucket,
    this.contentMd5,
    this.contentType,
    this.credentials,
    this.duration,
    this.extensionHeaders,
    this.httpMethod,
    required this.id,
    required this.path,
    required this.signedUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'contentMd5': ?contentMd5,
      'contentType': ?contentType,
      'credentials': ?credentials,
      'duration': ?duration,
      'extensionHeaders': ?extensionHeaders,
      'httpMethod': ?httpMethod,
      'id': id,
      'path': path,
      'signedUrl': signedUrl,
    };
  }

  factory GetObjectSignedUrlResult.fromMap(Map<String, dynamic> map) {
    return GetObjectSignedUrlResult(
      bucket: map['bucket'] as String,
      contentMd5: map['contentMd5'] == null ? null : map['contentMd5'] as String,
      contentType: map['contentType'] == null ? null : map['contentType'] as String,
      credentials: map['credentials'] == null ? null : map['credentials'] as String,
      duration: map['duration'] == null ? null : map['duration'] as String,
      extensionHeaders: map['extensionHeaders'] == null ? null : (map['extensionHeaders'] as Map).cast<String, String>(),
      httpMethod: map['httpMethod'] == null ? null : map['httpMethod'] as String,
      id: map['id'] as String,
      path: map['path'] as String,
      signedUrl: map['signedUrl'] as String,
    );
  }
}


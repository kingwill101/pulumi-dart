// ignore_for_file: unused_element, unnecessary_cast


class BatchOperationsJobPutMetadata {
  /// Cache-Control directive to specify caching behavior of object data. If omitted and object is accessible to all anonymous users, the default will be public, max-age=3600
  final String? cacheControl;
  /// Content-Disposition of the object data.
  final String? contentDisposition;
  /// Content Encoding of the object data.
  final String? contentEncoding;
  /// Content-Language of the object data.
  final String? contentLanguage;
  /// Content-Type of the object data.
  final String? contentType;
  /// User-provided metadata, in key/value pairs.
  final Map<String, String>? customMetadata;
  /// Updates the objects fixed custom time metadata.
  final String? customTime;

  /// Creates a new [BatchOperationsJobPutMetadata].
  /// [cacheControl] Cache-Control directive to specify caching behavior of object data. If omitted and object is accessible to all anonymous users, the default will be public, max-age=3600
  /// [contentDisposition] Content-Disposition of the object data.
  /// [contentEncoding] Content Encoding of the object data.
  /// [contentLanguage] Content-Language of the object data.
  /// [contentType] Content-Type of the object data.
  /// [customMetadata] User-provided metadata, in key/value pairs.
  /// [customTime] Updates the objects fixed custom time metadata.
  BatchOperationsJobPutMetadata({
    this.cacheControl,
    this.contentDisposition,
    this.contentEncoding,
    this.contentLanguage,
    this.contentType,
    this.customMetadata,
    this.customTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cacheControl': ?cacheControl,
      'contentDisposition': ?contentDisposition,
      'contentEncoding': ?contentEncoding,
      'contentLanguage': ?contentLanguage,
      'contentType': ?contentType,
      'customMetadata': ?customMetadata,
      'customTime': ?customTime,
    };
  }

  factory BatchOperationsJobPutMetadata.fromMap(Map<String, dynamic> map) {
    return BatchOperationsJobPutMetadata(
      cacheControl: map['cacheControl'] == null ? null : map['cacheControl'] as String,
      contentDisposition: map['contentDisposition'] == null ? null : map['contentDisposition'] as String,
      contentEncoding: map['contentEncoding'] == null ? null : map['contentEncoding'] as String,
      contentLanguage: map['contentLanguage'] == null ? null : map['contentLanguage'] as String,
      contentType: map['contentType'] == null ? null : map['contentType'] as String,
      customMetadata: map['customMetadata'] == null ? null : (map['customMetadata'] as Map).cast<String, String>(),
      customTime: map['customTime'] == null ? null : map['customTime'] as String,
    );
  }
}


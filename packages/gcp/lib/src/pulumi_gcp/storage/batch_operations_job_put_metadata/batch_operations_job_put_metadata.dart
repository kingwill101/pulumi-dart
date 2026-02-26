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
    final map = <String, dynamic>{};
    final cacheControlValue = cacheControl;
    if (cacheControlValue != null) {
      map['cacheControl'] = cacheControlValue;
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
    final customMetadataValue = customMetadata;
    if (customMetadataValue != null) {
      map['customMetadata'] = customMetadataValue;
    }
    final customTimeValue = customTime;
    if (customTimeValue != null) {
      map['customTime'] = customTimeValue;
    }
    return map;
  }

  factory BatchOperationsJobPutMetadata.fromMap(Map<String, dynamic> map) {
    return BatchOperationsJobPutMetadata(
      cacheControl:
          map['cacheControl'] == null ? null : map['cacheControl'] as String,
      contentDisposition: map['contentDisposition'] == null
          ? null
          : map['contentDisposition'] as String,
      contentEncoding: map['contentEncoding'] == null
          ? null
          : map['contentEncoding'] as String,
      contentLanguage: map['contentLanguage'] == null
          ? null
          : map['contentLanguage'] as String,
      contentType:
          map['contentType'] == null ? null : map['contentType'] as String,
      customMetadata: map['customMetadata'] == null
          ? null
          : (map['customMetadata'] as Map).cast<String, String>(),
      customTime:
          map['customTime'] == null ? null : map['customTime'] as String,
    );
  }
}

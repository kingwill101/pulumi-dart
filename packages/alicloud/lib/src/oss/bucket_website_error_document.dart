// ignore_for_file: unused_element, unnecessary_cast


class BucketWebsiteErrorDocument {
  /// The HTTP status code when the error page is returned. The default 404.
  final int? httpStatus;
  /// The error page file. If the Object accessed does not exist, this error page is returned.
  final String? key;

  /// Creates a new [BucketWebsiteErrorDocument].
  /// [httpStatus] The HTTP status code when the error page is returned. The default 404.
  /// [key] The error page file. If the Object accessed does not exist, this error page is returned.
  BucketWebsiteErrorDocument({
    this.httpStatus,
    this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpStatus': ?httpStatus,
      'key': ?key,
    };
  }

  factory BucketWebsiteErrorDocument.fromMap(Map<String, dynamic> map) {
    return BucketWebsiteErrorDocument(
      httpStatus: map['httpStatus'] == null ? null : map['httpStatus'] as int,
      key: map['key'] == null ? null : map['key'] as String,
    );
  }
}


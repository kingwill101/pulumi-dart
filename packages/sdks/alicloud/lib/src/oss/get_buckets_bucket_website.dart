// ignore_for_file: unused_element, unnecessary_cast


class GetBucketsBucketWebsite {
  /// Key of the HTML document containing the error page.
  final String errorDocument;
  /// Key of the HTML document containing the home page.
  final String indexDocument;

  /// Creates a new [GetBucketsBucketWebsite].
  /// [errorDocument] Key of the HTML document containing the error page.
  /// [indexDocument] Key of the HTML document containing the home page.
  GetBucketsBucketWebsite({
    required this.errorDocument,
    required this.indexDocument,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorDocument': errorDocument,
      'indexDocument': indexDocument,
    };
  }

  factory GetBucketsBucketWebsite.fromMap(Map<String, dynamic> map) {
    return GetBucketsBucketWebsite(
      errorDocument: map['errorDocument'] as String,
      indexDocument: map['indexDocument'] as String,
    );
  }
}


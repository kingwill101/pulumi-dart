// ignore_for_file: unused_element, unnecessary_cast


class BucketWebsite {
  /// An absolute path to the document to return in case of a 4XX error.
  final String? errorDocument;
  /// Alicloud OSS returns this index document when requests are made to the root domain or any of the subfolders.
  final String indexDocument;

  /// Creates a new [BucketWebsite].
  /// [errorDocument] An absolute path to the document to return in case of a 4XX error.
  /// [indexDocument] Alicloud OSS returns this index document when requests are made to the root domain or any of the subfolders.
  BucketWebsite({
    this.errorDocument,
    required this.indexDocument,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorDocument': ?errorDocument,
      'indexDocument': indexDocument,
    };
  }

  factory BucketWebsite.fromMap(Map<String, dynamic> map) {
    return BucketWebsite(
      errorDocument: map['errorDocument'] == null ? null : map['errorDocument'] as String,
      indexDocument: map['indexDocument'] as String,
    );
  }
}


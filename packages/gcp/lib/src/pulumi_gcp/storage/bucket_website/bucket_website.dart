// ignore_for_file: unused_element, unnecessary_cast

class BucketWebsite {
  /// Behaves as the bucket's directory index where
  /// missing objects are treated as potential directories.
  final String? mainPageSuffix;

  /// The custom object to return when a requested
  /// resource is not found.
  final String? notFoundPage;

  BucketWebsite({
    this.mainPageSuffix,
    this.notFoundPage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final mainPageSuffixValue = mainPageSuffix;
    if (mainPageSuffixValue != null) {
      map['mainPageSuffix'] = mainPageSuffixValue;
    }
    final notFoundPageValue = notFoundPage;
    if (notFoundPageValue != null) {
      map['notFoundPage'] = notFoundPageValue;
    }
    return map;
  }

  factory BucketWebsite.fromMap(Map<String, dynamic> map) {
    return BucketWebsite(
      mainPageSuffix: map['mainPageSuffix'] == null
          ? null
          : map['mainPageSuffix'] as String,
      notFoundPage:
          map['notFoundPage'] == null ? null : map['notFoundPage'] as String,
    );
  }
}

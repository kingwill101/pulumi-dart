// ignore_for_file: unused_element, unnecessary_cast

/// The bucket's website configuration, controlling how the service behaves when accessing bucket contents as a web site. See the Static Website Examples for more information.
class BucketWebsite {
  /// If the requested object path is missing, the service will ensure the path has a trailing '/', append this suffix, and attempt to retrieve the resulting object. This allows the creation of index.html objects to represent directory pages.
  final String? mainPageSuffix;

  /// If the requested object path is missing, and any mainPageSuffix object is missing, if applicable, the service will return the named object from this bucket as the content for a 404 Not Found result.
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

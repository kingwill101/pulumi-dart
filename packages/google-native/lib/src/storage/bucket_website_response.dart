// ignore_for_file: unused_element, unnecessary_cast


/// The bucket's website configuration, controlling how the service behaves when accessing bucket contents as a web site. See the Static Website Examples for more information.
class BucketWebsiteResponse {
  /// If the requested object path is missing, the service will ensure the path has a trailing '/', append this suffix, and attempt to retrieve the resulting object. This allows the creation of index.html objects to represent directory pages.
  final String mainPageSuffix;
  /// If the requested object path is missing, and any mainPageSuffix object is missing, if applicable, the service will return the named object from this bucket as the content for a 404 Not Found result.
  final String notFoundPage;

  /// Creates a new [BucketWebsiteResponse].
  /// [mainPageSuffix] If the requested object path is missing, the service will ensure the path has a trailing '/', append this suffix, and attempt to retrieve the resulting object. This allows the creation of index.html objects to represent directory pages.
  /// [notFoundPage] If the requested object path is missing, and any mainPageSuffix object is missing, if applicable, the service will return the named object from this bucket as the content for a 404 Not Found result.
  BucketWebsiteResponse({
    required this.mainPageSuffix,
    required this.notFoundPage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mainPageSuffix': mainPageSuffix,
      'notFoundPage': notFoundPage,
    };
  }

  factory BucketWebsiteResponse.fromMap(Map<String, dynamic> map) {
    return BucketWebsiteResponse(
      mainPageSuffix: map['mainPageSuffix'] as String,
      notFoundPage: map['notFoundPage'] as String,
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBucketsBucketWebsite {
  /// Key of the HTML document containing the error page.
  final pulumi.Input<String> errorDocument;
  /// Key of the HTML document containing the home page.
  final pulumi.Input<String> indexDocument;

  /// Creates a new [GetBucketsBucketWebsite].
  /// [errorDocument] Key of the HTML document containing the error page.
  /// [indexDocument] Key of the HTML document containing the home page.
  const GetBucketsBucketWebsite({
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
      errorDocument: pulumi.Input.fromValue(map['errorDocument'] as String),
      indexDocument: pulumi.Input.fromValue(map['indexDocument'] as String),
    );
  }
}


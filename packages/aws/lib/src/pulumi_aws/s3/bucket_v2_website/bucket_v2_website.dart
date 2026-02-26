// ignore_for_file: unused_element, unnecessary_cast

class BucketV2Website {
  /// Absolute path to the document to return in case of a 4XX error.
  final String? errorDocument;

  /// Amazon S3 returns this index document when requests are made to the root domain or any of the subfolders.
  final String? indexDocument;

  /// Hostname to redirect all website requests for this bucket to. Hostname can optionally be prefixed with a protocol (`http://` or `https://`) to use when redirecting requests. The default is the protocol that is used in the original request.
  final String? redirectAllRequestsTo;

  /// JSON array containing [routing rules](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-websiteconfiguration-routingrules.html)
  /// describing redirect behavior and when redirects are applied.
  final String? routingRules;

  BucketV2Website({
    this.errorDocument,
    this.indexDocument,
    this.redirectAllRequestsTo,
    this.routingRules,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final errorDocumentValue = errorDocument;
    if (errorDocumentValue != null) {
      map['errorDocument'] = errorDocumentValue;
    }
    final indexDocumentValue = indexDocument;
    if (indexDocumentValue != null) {
      map['indexDocument'] = indexDocumentValue;
    }
    final redirectAllRequestsToValue = redirectAllRequestsTo;
    if (redirectAllRequestsToValue != null) {
      map['redirectAllRequestsTo'] = redirectAllRequestsToValue;
    }
    final routingRulesValue = routingRules;
    if (routingRulesValue != null) {
      map['routingRules'] = routingRulesValue;
    }
    return map;
  }

  factory BucketV2Website.fromMap(Map<String, dynamic> map) {
    return BucketV2Website(
      errorDocument:
          map['errorDocument'] == null ? null : map['errorDocument'] as String,
      indexDocument:
          map['indexDocument'] == null ? null : map['indexDocument'] as String,
      redirectAllRequestsTo: map['redirectAllRequestsTo'] == null
          ? null
          : map['redirectAllRequestsTo'] as String,
      routingRules:
          map['routingRules'] == null ? null : map['routingRules'] as String,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketV2Website {
  /// Absolute path to the document to return in case of a 4XX error.
  final pulumi.Input<String>? errorDocument;
  /// Amazon S3 returns this index document when requests are made to the root domain or any of the subfolders.
  final pulumi.Input<String>? indexDocument;
  /// Hostname to redirect all website requests for this bucket to. Hostname can optionally be prefixed with a protocol (`http://` or `https://`) to use when redirecting requests. The default is the protocol that is used in the original request.
  final pulumi.Input<String>? redirectAllRequestsTo;
  /// JSON array containing [routing rules](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-websiteconfiguration-routingrules.html)
  /// describing redirect behavior and when redirects are applied.
  final pulumi.Input<String>? routingRules;

  /// Creates a new [BucketV2Website].
  /// [errorDocument] Absolute path to the document to return in case of a 4XX error.
  /// [indexDocument] Amazon S3 returns this index document when requests are made to the root domain or any of the subfolders.
  /// [redirectAllRequestsTo] Hostname to redirect all website requests for this bucket to. Hostname can optionally be prefixed with a protocol (`http://` or `https://`) to use when redirecting requests. The default is the protocol that is used in the original request.
  /// [routingRules] JSON array containing [routing rules](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-websiteconfiguration-routingrules.html)
  BucketV2Website({
    this.errorDocument,
    this.indexDocument,
    this.redirectAllRequestsTo,
    this.routingRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorDocument': ?errorDocument,
      'indexDocument': ?indexDocument,
      'redirectAllRequestsTo': ?redirectAllRequestsTo,
      'routingRules': ?routingRules,
    };
  }

  factory BucketV2Website.fromMap(Map<String, dynamic> map) {
    return BucketV2Website(
      errorDocument: map['errorDocument'] == null ? null : (map['errorDocument'] as String).input(),
      indexDocument: map['indexDocument'] == null ? null : (map['indexDocument'] as String).input(),
      redirectAllRequestsTo: map['redirectAllRequestsTo'] == null ? null : (map['redirectAllRequestsTo'] as String).input(),
      routingRules: map['routingRules'] == null ? null : (map['routingRules'] as String).input(),
    );
  }
}


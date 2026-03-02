// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_website_error_document.dart';
import 'bucket_website_index_document.dart';
import 'bucket_website_routing_rules.dart';

/// {@template pulumi_oss_bucket_website_bucket_website_args_doc}
/// The set of arguments for BucketWebsite.
/// {@endtemplate}
/// {@macro pulumi_oss_bucket_website_bucket_website_args_doc}
class BucketWebsiteArgs {
  /// The name of the bucket
  final pulumi.Input<String> bucket;
  /// The container that holds the error page configuration information. See `error_document` below.
  final pulumi.Input<BucketWebsiteErrorDocument>? errorDocument;
  /// Static Website Default Home Page Configuration See `index_document` below.
  final pulumi.Input<BucketWebsiteIndexDocument>? indexDocument;
  /// The container that holds the jump rule or the mirroring back-to-origin rule. See `routing_rules` below.
  final pulumi.Input<BucketWebsiteRoutingRules>? routingRules;

  /// Creates a new [BucketWebsiteArgs].
  /// [bucket] The name of the bucket
  /// [errorDocument] The container that holds the error page configuration information. See `error_document` below.
  /// [indexDocument] Static Website Default Home Page Configuration See `index_document` below.
  /// [routingRules] The container that holds the jump rule or the mirroring back-to-origin rule. See `routing_rules` below.
  BucketWebsiteArgs({
    required this.bucket,
    this.errorDocument,
    this.indexDocument,
    this.routingRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'errorDocument': ?pulumi.Input.mapOptionalInputValue<BucketWebsiteErrorDocument, Map<String, dynamic>>(errorDocument, (value) => value.toMap()),
      'indexDocument': ?pulumi.Input.mapOptionalInputValue<BucketWebsiteIndexDocument, Map<String, dynamic>>(indexDocument, (value) => value.toMap()),
      'routingRules': ?pulumi.Input.mapOptionalInputValue<BucketWebsiteRoutingRules, Map<String, dynamic>>(routingRules, (value) => value.toMap()),
    };
  }

  factory BucketWebsiteArgs.fromMap(Map<String, dynamic> map) {
    return BucketWebsiteArgs(
      bucket: (map['bucket'] as String).input(),
      errorDocument: map['errorDocument'] == null ? null : (BucketWebsiteErrorDocument.fromMap((map['errorDocument']! as Map).cast<String, dynamic>())).input(),
      indexDocument: map['indexDocument'] == null ? null : (BucketWebsiteIndexDocument.fromMap((map['indexDocument']! as Map).cast<String, dynamic>())).input(),
      routingRules: map['routingRules'] == null ? null : (BucketWebsiteRoutingRules.fromMap((map['routingRules']! as Map).cast<String, dynamic>())).input(),
    );
  }
}


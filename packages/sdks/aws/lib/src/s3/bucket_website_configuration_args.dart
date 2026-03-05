// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_website_configuration_error_document.dart';
import 'bucket_website_configuration_index_document.dart';
import 'bucket_website_configuration_redirect_all_requests_to.dart';
import 'bucket_website_configuration_routing_rule.dart';

/// {@template pulumi_s3_bucket_website_configuration_bucket_website_configuration_args_doc}
/// The set of arguments for BucketWebsiteConfiguration.
/// {@endtemplate}
/// {@macro pulumi_s3_bucket_website_configuration_bucket_website_configuration_args_doc}
class BucketWebsiteConfigurationArgs {
  /// Name of the bucket.
  final pulumi.Input<String> bucket;
  /// Name of the error document for the website. See below.
  final pulumi.Input<BucketWebsiteConfigurationErrorDocument>? errorDocument;
  /// Account ID of the expected bucket owner.
  final pulumi.Input<String>? expectedBucketOwner;
  /// Name of the index document for the website. See below.
  final pulumi.Input<BucketWebsiteConfigurationIndexDocument>? indexDocument;
  /// Redirect behavior for every request to this bucket's website endpoint. See below. Conflicts with `error_document`, `index_document`, and `routing_rule`.
  final pulumi.Input<BucketWebsiteConfigurationRedirectAllRequestsTo>? redirectAllRequestsTo;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// JSON array containing [routing rules](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-websiteconfiguration-routingrules.html)
  /// describing redirect behavior and when redirects are applied. Use this parameter when your routing rules contain empty String values (`""`) as seen in the example above.
  final pulumi.Input<String>? routingRuleDetails;
  /// List of rules that define when a redirect is applied and the redirect behavior. See below.
  final pulumi.Input<List<BucketWebsiteConfigurationRoutingRule>>? routingRules;

  /// Creates a new [BucketWebsiteConfigurationArgs].
  /// [bucket] Name of the bucket.
  /// [errorDocument] Name of the error document for the website. See below.
  /// [expectedBucketOwner] Account ID of the expected bucket owner.
  /// [indexDocument] Name of the index document for the website. See below.
  /// [redirectAllRequestsTo] Redirect behavior for every request to this bucket's website endpoint. See below. Conflicts with `error_document`, `index_document`, and `routing_rule`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [routingRuleDetails] JSON array containing [routing rules](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-websiteconfiguration-routingrules.html)
  /// [routingRules] List of rules that define when a redirect is applied and the redirect behavior. See below.
  BucketWebsiteConfigurationArgs({
    required this.bucket,
    this.errorDocument,
    this.expectedBucketOwner,
    this.indexDocument,
    this.redirectAllRequestsTo,
    this.region,
    this.routingRuleDetails,
    this.routingRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'errorDocument': ?pulumi.Input.mapOptionalInputValue<BucketWebsiteConfigurationErrorDocument, Map<String, dynamic>>(errorDocument, (value) => value.toMap()),
      'expectedBucketOwner': ?expectedBucketOwner,
      'indexDocument': ?pulumi.Input.mapOptionalInputValue<BucketWebsiteConfigurationIndexDocument, Map<String, dynamic>>(indexDocument, (value) => value.toMap()),
      'redirectAllRequestsTo': ?pulumi.Input.mapOptionalInputValue<BucketWebsiteConfigurationRedirectAllRequestsTo, Map<String, dynamic>>(redirectAllRequestsTo, (value) => value.toMap()),
      'region': ?region,
      'routingRuleDetails': ?routingRuleDetails,
      'routingRules': ?pulumi.Input.mapOptionalInputValue<List<BucketWebsiteConfigurationRoutingRule>, List<Map<String, dynamic>>>(routingRules, (value) => pulumi.Input.encodeList<BucketWebsiteConfigurationRoutingRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BucketWebsiteConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return BucketWebsiteConfigurationArgs(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      errorDocument: (() { final guardedValue = map['errorDocument']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BucketWebsiteConfigurationErrorDocument.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      expectedBucketOwner: (() { final guardedValue = map['expectedBucketOwner']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      indexDocument: (() { final guardedValue = map['indexDocument']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BucketWebsiteConfigurationIndexDocument.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      redirectAllRequestsTo: (() { final guardedValue = map['redirectAllRequestsTo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BucketWebsiteConfigurationRedirectAllRequestsTo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routingRuleDetails: (() { final guardedValue = map['routingRuleDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routingRules: (() { final guardedValue = map['routingRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BucketWebsiteConfigurationRoutingRule>(guardedValue, (value) => BucketWebsiteConfigurationRoutingRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}


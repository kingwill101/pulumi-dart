// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_website_configuration_error_document.dart';
import 'bucket_website_configuration_index_document.dart';
import 'bucket_website_configuration_redirect_all_requests_to.dart';
import 'bucket_website_configuration_routing_rule.dart';

/// Input properties used for looking up and filtering BucketWebsiteConfiguration resources.
class BucketWebsiteConfigurationState {
  /// Name of the bucket.
  final pulumi.Input<String>? bucket;
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
  /// Domain of the website endpoint. This is used to create Route 53 alias records.
  final pulumi.Input<String>? websiteDomain;
  /// Website endpoint.
  final pulumi.Input<String>? websiteEndpoint;

  /// Creates a new [BucketWebsiteConfigurationState].
  /// [bucket] Name of the bucket.
  /// [errorDocument] Name of the error document for the website. See below.
  /// [expectedBucketOwner] Account ID of the expected bucket owner.
  /// [indexDocument] Name of the index document for the website. See below.
  /// [redirectAllRequestsTo] Redirect behavior for every request to this bucket's website endpoint. See below. Conflicts with `error_document`, `index_document`, and `routing_rule`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [routingRuleDetails] JSON array containing [routing rules](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-websiteconfiguration-routingrules.html)
  /// [routingRules] List of rules that define when a redirect is applied and the redirect behavior. See below.
  /// [websiteDomain] Domain of the website endpoint. This is used to create Route 53 alias records.
  /// [websiteEndpoint] Website endpoint.
  BucketWebsiteConfigurationState({
    this.bucket,
    this.errorDocument,
    this.expectedBucketOwner,
    this.indexDocument,
    this.redirectAllRequestsTo,
    this.region,
    this.routingRuleDetails,
    this.routingRules,
    this.websiteDomain,
    this.websiteEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'errorDocument': ?pulumi.Input.mapOptionalInputValue<BucketWebsiteConfigurationErrorDocument, Map<String, dynamic>>(errorDocument, (value) => value.toMap()),
      'expectedBucketOwner': ?expectedBucketOwner,
      'indexDocument': ?pulumi.Input.mapOptionalInputValue<BucketWebsiteConfigurationIndexDocument, Map<String, dynamic>>(indexDocument, (value) => value.toMap()),
      'redirectAllRequestsTo': ?pulumi.Input.mapOptionalInputValue<BucketWebsiteConfigurationRedirectAllRequestsTo, Map<String, dynamic>>(redirectAllRequestsTo, (value) => value.toMap()),
      'region': ?region,
      'routingRuleDetails': ?routingRuleDetails,
      'routingRules': ?pulumi.Input.mapOptionalInputValue<List<BucketWebsiteConfigurationRoutingRule>, List<Map<String, dynamic>>>(routingRules, (value) => pulumi.Input.encodeList<BucketWebsiteConfigurationRoutingRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'websiteDomain': ?websiteDomain,
      'websiteEndpoint': ?websiteEndpoint,
    };
  }

  factory BucketWebsiteConfigurationState.fromMap(Map<String, dynamic> map) {
    return BucketWebsiteConfigurationState(
      bucket: map['bucket'] == null ? null : ((map['bucket'] as String).input()).input(),
      errorDocument: map['errorDocument'] == null ? null : ((BucketWebsiteConfigurationErrorDocument.fromMap((map['errorDocument']! as Map).cast<String, dynamic>())).input()).input(),
      expectedBucketOwner: map['expectedBucketOwner'] == null ? null : ((map['expectedBucketOwner'] as String).input()).input(),
      indexDocument: map['indexDocument'] == null ? null : ((BucketWebsiteConfigurationIndexDocument.fromMap((map['indexDocument']! as Map).cast<String, dynamic>())).input()).input(),
      redirectAllRequestsTo: map['redirectAllRequestsTo'] == null ? null : ((BucketWebsiteConfigurationRedirectAllRequestsTo.fromMap((map['redirectAllRequestsTo']! as Map).cast<String, dynamic>())).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      routingRuleDetails: map['routingRuleDetails'] == null ? null : ((map['routingRuleDetails'] as String).input()).input(),
      routingRules: map['routingRules'] == null ? null : ((pulumi.Input.decodeList<BucketWebsiteConfigurationRoutingRule>(map['routingRules']!, (value) => BucketWebsiteConfigurationRoutingRule.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      websiteDomain: map['websiteDomain'] == null ? null : ((map['websiteDomain'] as String).input()).input(),
      websiteEndpoint: map['websiteEndpoint'] == null ? null : ((map['websiteEndpoint'] as String).input()).input(),
    );
  }
}


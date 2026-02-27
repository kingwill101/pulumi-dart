// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../bucket_website_configuration_error_document/bucket_website_configuration_error_document.dart';
import '../bucket_website_configuration_index_document/bucket_website_configuration_index_document.dart';
import '../bucket_website_configuration_redirect_all_requests_to/bucket_website_configuration_redirect_all_requests_to.dart';
import '../bucket_website_configuration_routing_rule/bucket_website_configuration_routing_rule.dart';

/// The set of arguments for BucketWebsiteConfiguration.
class BucketWebsiteConfigurationArgs {
  /// Name of the bucket.
  final Input<String> bucket;

  /// Name of the error document for the website. See below.
  final Input<BucketWebsiteConfigurationErrorDocument>? errorDocument;

  /// Account ID of the expected bucket owner.
  final Input<String>? expectedBucketOwner;

  /// Name of the index document for the website. See below.
  final Input<BucketWebsiteConfigurationIndexDocument>? indexDocument;

  /// Redirect behavior for every request to this bucket's website endpoint. See below. Conflicts with `error_document`, `index_document`, and `routing_rule`.
  final Input<BucketWebsiteConfigurationRedirectAllRequestsTo>?
      redirectAllRequestsTo;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// JSON array containing [routing rules](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-websiteconfiguration-routingrules.html)
  /// describing redirect behavior and when redirects are applied. Use this parameter when your routing rules contain empty String values (`""`) as seen in the example above.
  final Input<String>? routingRuleDetails;

  /// List of rules that define when a redirect is applied and the redirect behavior. See below.
  final Input<List<BucketWebsiteConfigurationRoutingRule>>? routingRules;

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
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    final errorDocumentValue = errorDocument;
    if (errorDocumentValue != null) {
      map['errorDocument'] = Input.mapOptionalInputValue<
          BucketWebsiteConfigurationErrorDocument,
          Map<String, dynamic>>(errorDocumentValue, (value) => value.toMap());
    }
    final expectedBucketOwnerValue = expectedBucketOwner;
    if (expectedBucketOwnerValue != null) {
      map['expectedBucketOwner'] = expectedBucketOwnerValue;
    }
    final indexDocumentValue = indexDocument;
    if (indexDocumentValue != null) {
      map['indexDocument'] = Input.mapOptionalInputValue<
          BucketWebsiteConfigurationIndexDocument,
          Map<String, dynamic>>(indexDocumentValue, (value) => value.toMap());
    }
    final redirectAllRequestsToValue = redirectAllRequestsTo;
    if (redirectAllRequestsToValue != null) {
      map['redirectAllRequestsTo'] = Input.mapOptionalInputValue<
              BucketWebsiteConfigurationRedirectAllRequestsTo,
              Map<String, dynamic>>(
          redirectAllRequestsToValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final routingRuleDetailsValue = routingRuleDetails;
    if (routingRuleDetailsValue != null) {
      map['routingRuleDetails'] = routingRuleDetailsValue;
    }
    final routingRulesValue = routingRules;
    if (routingRulesValue != null) {
      map['routingRules'] = Input.mapOptionalInputValue<
              List<BucketWebsiteConfigurationRoutingRule>,
              List<Map<String, dynamic>>>(
          routingRulesValue,
          (value) => Input.encodeList<BucketWebsiteConfigurationRoutingRule,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    return map;
  }

  factory BucketWebsiteConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return BucketWebsiteConfigurationArgs(
      bucket: Input.asInput<String>(map['bucket']),
      errorDocument:
          Input.asOptionalInput<BucketWebsiteConfigurationErrorDocument>(
              map['errorDocument']),
      expectedBucketOwner:
          Input.asOptionalInput<String>(map['expectedBucketOwner']),
      indexDocument:
          Input.asOptionalInput<BucketWebsiteConfigurationIndexDocument>(
              map['indexDocument']),
      redirectAllRequestsTo: Input.asOptionalInput<
              BucketWebsiteConfigurationRedirectAllRequestsTo>(
          map['redirectAllRequestsTo']),
      region: Input.asOptionalInput<String>(map['region']),
      routingRuleDetails:
          Input.asOptionalInput<String>(map['routingRuleDetails']),
      routingRules:
          Input.asOptionalInput<List<BucketWebsiteConfigurationRoutingRule>>(
              map['routingRules']),
    );
  }
}

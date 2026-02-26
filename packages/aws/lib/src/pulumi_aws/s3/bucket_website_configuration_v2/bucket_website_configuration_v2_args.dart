// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../bucket_website_configuration_v2_error_document/bucket_website_configuration_v2_error_document.dart';
import '../bucket_website_configuration_v2_index_document/bucket_website_configuration_v2_index_document.dart';
import '../bucket_website_configuration_v2_redirect_all_requests_to/bucket_website_configuration_v2_redirect_all_requests_to.dart';
import '../bucket_website_configuration_v2_routing_rule/bucket_website_configuration_v2_routing_rule.dart';

/// The set of arguments for BucketWebsiteConfigurationV2.
class BucketWebsiteConfigurationV2Args {
  /// Name of the bucket.
  final Input<String> bucket;

  /// Name of the error document for the website. See below.
  final Input<BucketWebsiteConfigurationV2ErrorDocument>? errorDocument;

  /// Account ID of the expected bucket owner.
  final Input<String>? expectedBucketOwner;

  /// Name of the index document for the website. See below.
  final Input<BucketWebsiteConfigurationV2IndexDocument>? indexDocument;

  /// Redirect behavior for every request to this bucket's website endpoint. See below. Conflicts with <span pulumi-lang-nodejs="`errorDocument`" pulumi-lang-dotnet="`ErrorDocument`" pulumi-lang-go="`errorDocument`" pulumi-lang-python="`error_document`" pulumi-lang-yaml="`errorDocument`" pulumi-lang-java="`errorDocument`">`error_document`</span>, <span pulumi-lang-nodejs="`indexDocument`" pulumi-lang-dotnet="`IndexDocument`" pulumi-lang-go="`indexDocument`" pulumi-lang-python="`index_document`" pulumi-lang-yaml="`indexDocument`" pulumi-lang-java="`indexDocument`">`index_document`</span>, and <span pulumi-lang-nodejs="`routingRule`" pulumi-lang-dotnet="`RoutingRule`" pulumi-lang-go="`routingRule`" pulumi-lang-python="`routing_rule`" pulumi-lang-yaml="`routingRule`" pulumi-lang-java="`routingRule`">`routing_rule`</span>.
  final Input<BucketWebsiteConfigurationV2RedirectAllRequestsTo>?
      redirectAllRequestsTo;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// JSON array containing [routing rules](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-websiteconfiguration-routingrules.html)
  /// describing redirect behavior and when redirects are applied. Use this parameter when your routing rules contain empty String values (`""`) as seen in the example above.
  final Input<String>? routingRuleDetails;

  /// List of rules that define when a redirect is applied and the redirect behavior. See below.
  final Input<List<BucketWebsiteConfigurationV2RoutingRule>>? routingRules;

  BucketWebsiteConfigurationV2Args({
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
          BucketWebsiteConfigurationV2ErrorDocument,
          Map<String, dynamic>>(errorDocumentValue, (value) => value.toMap());
    }
    final expectedBucketOwnerValue = expectedBucketOwner;
    if (expectedBucketOwnerValue != null) {
      map['expectedBucketOwner'] = expectedBucketOwnerValue;
    }
    final indexDocumentValue = indexDocument;
    if (indexDocumentValue != null) {
      map['indexDocument'] = Input.mapOptionalInputValue<
          BucketWebsiteConfigurationV2IndexDocument,
          Map<String, dynamic>>(indexDocumentValue, (value) => value.toMap());
    }
    final redirectAllRequestsToValue = redirectAllRequestsTo;
    if (redirectAllRequestsToValue != null) {
      map['redirectAllRequestsTo'] = Input.mapOptionalInputValue<
              BucketWebsiteConfigurationV2RedirectAllRequestsTo,
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
              List<BucketWebsiteConfigurationV2RoutingRule>,
              List<Map<String, dynamic>>>(
          routingRulesValue,
          (value) => Input.encodeList<BucketWebsiteConfigurationV2RoutingRule,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    return map;
  }

  factory BucketWebsiteConfigurationV2Args.fromMap(Map<String, dynamic> map) {
    return BucketWebsiteConfigurationV2Args(
      bucket: Input.asInput<String>(map['bucket']),
      errorDocument:
          Input.asOptionalInput<BucketWebsiteConfigurationV2ErrorDocument>(
              map['errorDocument']),
      expectedBucketOwner:
          Input.asOptionalInput<String>(map['expectedBucketOwner']),
      indexDocument:
          Input.asOptionalInput<BucketWebsiteConfigurationV2IndexDocument>(
              map['indexDocument']),
      redirectAllRequestsTo: Input.asOptionalInput<
              BucketWebsiteConfigurationV2RedirectAllRequestsTo>(
          map['redirectAllRequestsTo']),
      region: Input.asOptionalInput<String>(map['region']),
      routingRuleDetails:
          Input.asOptionalInput<String>(map['routingRuleDetails']),
      routingRules:
          Input.asOptionalInput<List<BucketWebsiteConfigurationV2RoutingRule>>(
              map['routingRules']),
    );
  }
}

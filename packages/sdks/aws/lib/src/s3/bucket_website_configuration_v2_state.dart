// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_website_configuration_v2_error_document.dart';
import 'bucket_website_configuration_v2_index_document.dart';
import 'bucket_website_configuration_v2_redirect_all_requests_to.dart';
import 'bucket_website_configuration_v2_routing_rule.dart';

/// Input properties used for looking up and filtering BucketWebsiteConfigurationV2 resources.
class BucketWebsiteConfigurationV2State {
  /// Name of the bucket.
  final pulumi.Input<String>? bucket;
  /// Name of the error document for the website. See below.
  final pulumi.Input<BucketWebsiteConfigurationV2ErrorDocument>? errorDocument;
  /// Account ID of the expected bucket owner.
  final pulumi.Input<String>? expectedBucketOwner;
  /// Name of the index document for the website. See below.
  final pulumi.Input<BucketWebsiteConfigurationV2IndexDocument>? indexDocument;
  /// Redirect behavior for every request to this bucket's website endpoint. See below. Conflicts with `error_document`, `index_document`, and `routing_rule`.
  final pulumi.Input<BucketWebsiteConfigurationV2RedirectAllRequestsTo>? redirectAllRequestsTo;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// JSON array containing [routing rules](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-websiteconfiguration-routingrules.html)
  /// describing redirect behavior and when redirects are applied. Use this parameter when your routing rules contain empty String values (`""`) as seen in the example above.
  final pulumi.Input<String>? routingRuleDetails;
  /// List of rules that define when a redirect is applied and the redirect behavior. See below.
  final pulumi.Input<List<BucketWebsiteConfigurationV2RoutingRule>>? routingRules;
  /// Domain of the website endpoint. This is used to create Route 53 alias records.
  final pulumi.Input<String>? websiteDomain;
  /// Website endpoint.
  final pulumi.Input<String>? websiteEndpoint;

  /// Creates a new [BucketWebsiteConfigurationV2State].
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
  const BucketWebsiteConfigurationV2State({
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
      'errorDocument': ?pulumi.Input.mapOptionalInputValue<BucketWebsiteConfigurationV2ErrorDocument, Map<String, dynamic>>(errorDocument, (value) => value.toMap()),
      'expectedBucketOwner': ?expectedBucketOwner,
      'indexDocument': ?pulumi.Input.mapOptionalInputValue<BucketWebsiteConfigurationV2IndexDocument, Map<String, dynamic>>(indexDocument, (value) => value.toMap()),
      'redirectAllRequestsTo': ?pulumi.Input.mapOptionalInputValue<BucketWebsiteConfigurationV2RedirectAllRequestsTo, Map<String, dynamic>>(redirectAllRequestsTo, (value) => value.toMap()),
      'region': ?region,
      'routingRuleDetails': ?routingRuleDetails,
      'routingRules': ?pulumi.Input.mapOptionalInputValue<List<BucketWebsiteConfigurationV2RoutingRule>, List<Map<String, dynamic>>>(routingRules, (value) => pulumi.Input.encodeList<BucketWebsiteConfigurationV2RoutingRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'websiteDomain': ?websiteDomain,
      'websiteEndpoint': ?websiteEndpoint,
    };
  }

  factory BucketWebsiteConfigurationV2State.fromMap(Map<String, dynamic> map) {
    return BucketWebsiteConfigurationV2State(
      bucket: (() { final guardedValue = map['bucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      errorDocument: (() { final guardedValue = map['errorDocument']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BucketWebsiteConfigurationV2ErrorDocument.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      expectedBucketOwner: (() { final guardedValue = map['expectedBucketOwner']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      indexDocument: (() { final guardedValue = map['indexDocument']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BucketWebsiteConfigurationV2IndexDocument.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      redirectAllRequestsTo: (() { final guardedValue = map['redirectAllRequestsTo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BucketWebsiteConfigurationV2RedirectAllRequestsTo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routingRuleDetails: (() { final guardedValue = map['routingRuleDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routingRules: (() { final guardedValue = map['routingRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BucketWebsiteConfigurationV2RoutingRule>(guardedValue, (value) => BucketWebsiteConfigurationV2RoutingRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      websiteDomain: (() { final guardedValue = map['websiteDomain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      websiteEndpoint: (() { final guardedValue = map['websiteEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


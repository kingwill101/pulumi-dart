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
  BucketWebsiteConfigurationV2State({
    pulumi.Output<String>? bucket,
    pulumi.Output<BucketWebsiteConfigurationV2ErrorDocument>? errorDocument,
    pulumi.Output<String>? expectedBucketOwner,
    pulumi.Output<BucketWebsiteConfigurationV2IndexDocument>? indexDocument,
    pulumi.Output<BucketWebsiteConfigurationV2RedirectAllRequestsTo>? redirectAllRequestsTo,
    pulumi.Output<String>? region,
    pulumi.Output<String>? routingRuleDetails,
    pulumi.Output<List<BucketWebsiteConfigurationV2RoutingRule>>? routingRules,
    pulumi.Output<String>? websiteDomain,
    pulumi.Output<String>? websiteEndpoint,
  }) :
      bucket = pulumi.Input.asOptionalInput<String>(bucket),
      errorDocument = pulumi.Input.asOptionalInput<BucketWebsiteConfigurationV2ErrorDocument>(errorDocument),
      expectedBucketOwner = pulumi.Input.asOptionalInput<String>(expectedBucketOwner),
      indexDocument = pulumi.Input.asOptionalInput<BucketWebsiteConfigurationV2IndexDocument>(indexDocument),
      redirectAllRequestsTo = pulumi.Input.asOptionalInput<BucketWebsiteConfigurationV2RedirectAllRequestsTo>(redirectAllRequestsTo),
      region = pulumi.Input.asOptionalInput<String>(region),
      routingRuleDetails = pulumi.Input.asOptionalInput<String>(routingRuleDetails),
      routingRules = pulumi.Input.asOptionalInput<List<BucketWebsiteConfigurationV2RoutingRule>>(routingRules),
      websiteDomain = pulumi.Input.asOptionalInput<String>(websiteDomain),
      websiteEndpoint = pulumi.Input.asOptionalInput<String>(websiteEndpoint);

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
      bucket: map['bucket'] == null ? null : pulumi.Output.create<String>(map['bucket'] as String),
      errorDocument: map['errorDocument'] == null ? null : pulumi.Output.create<BucketWebsiteConfigurationV2ErrorDocument>(BucketWebsiteConfigurationV2ErrorDocument.fromMap((map['errorDocument'] as Map).cast<String, dynamic>())),
      expectedBucketOwner: map['expectedBucketOwner'] == null ? null : pulumi.Output.create<String>(map['expectedBucketOwner'] as String),
      indexDocument: map['indexDocument'] == null ? null : pulumi.Output.create<BucketWebsiteConfigurationV2IndexDocument>(BucketWebsiteConfigurationV2IndexDocument.fromMap((map['indexDocument'] as Map).cast<String, dynamic>())),
      redirectAllRequestsTo: map['redirectAllRequestsTo'] == null ? null : pulumi.Output.create<BucketWebsiteConfigurationV2RedirectAllRequestsTo>(BucketWebsiteConfigurationV2RedirectAllRequestsTo.fromMap((map['redirectAllRequestsTo'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      routingRuleDetails: map['routingRuleDetails'] == null ? null : pulumi.Output.create<String>(map['routingRuleDetails'] as String),
      routingRules: map['routingRules'] == null ? null : pulumi.Output.create<List<BucketWebsiteConfigurationV2RoutingRule>>(pulumi.Input.decodeList<BucketWebsiteConfigurationV2RoutingRule>(map['routingRules'], (value) => BucketWebsiteConfigurationV2RoutingRule.fromMap((value as Map).cast<String, dynamic>()))),
      websiteDomain: map['websiteDomain'] == null ? null : pulumi.Output.create<String>(map['websiteDomain'] as String),
      websiteEndpoint: map['websiteEndpoint'] == null ? null : pulumi.Output.create<String>(map['websiteEndpoint'] as String),
    );
  }
}


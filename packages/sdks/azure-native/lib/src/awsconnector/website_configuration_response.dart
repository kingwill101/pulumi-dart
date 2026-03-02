// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'redirect_all_requests_to_response.dart';
import 'routing_rule_response.dart';

/// Definition of WebsiteConfiguration
class WebsiteConfigurationResponse {
  /// The name of the error document for the website.
  final pulumi.Input<String>? errorDocument;
  /// The name of the index document for the website.
  final pulumi.Input<String>? indexDocument;
  /// The redirect behavior for every request to this bucket's website endpoint.  If you specify this property, you can't specify any other property. Specifies the redirect behavior of all requests to a website endpoint of an Amazon S3 bucket.
  final pulumi.Input<RedirectAllRequestsToResponse>? redirectAllRequestsTo;
  /// Rules that define when a redirect is applied and the redirect behavior.
  final pulumi.Input<List<RoutingRuleResponse>>? routingRules;

  /// Creates a new [WebsiteConfigurationResponse].
  /// [errorDocument] The name of the error document for the website.
  /// [indexDocument] The name of the index document for the website.
  /// [redirectAllRequestsTo] The redirect behavior for every request to this bucket's website endpoint.  If you specify this property, you can't specify any other property. Specifies the redirect behavior of all requests to a website endpoint of an Amazon S3 bucket.
  /// [routingRules] Rules that define when a redirect is applied and the redirect behavior.
  WebsiteConfigurationResponse({
    this.errorDocument,
    this.indexDocument,
    this.redirectAllRequestsTo,
    this.routingRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorDocument': ?errorDocument,
      'indexDocument': ?indexDocument,
      'redirectAllRequestsTo': ?pulumi.Input.mapOptionalInputValue<RedirectAllRequestsToResponse, Map<String, dynamic>>(redirectAllRequestsTo, (value) => value.toMap()),
      'routingRules': ?pulumi.Input.mapOptionalInputValue<List<RoutingRuleResponse>, List<Map<String, dynamic>>>(routingRules, (value) => pulumi.Input.encodeList<RoutingRuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WebsiteConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return WebsiteConfigurationResponse(
      errorDocument: map['errorDocument'] == null ? null : (map['errorDocument']! as String).input(),
      indexDocument: map['indexDocument'] == null ? null : (map['indexDocument']! as String).input(),
      redirectAllRequestsTo: map['redirectAllRequestsTo'] == null ? null : (RedirectAllRequestsToResponse.fromMap((map['redirectAllRequestsTo']! as Map).cast<String, dynamic>())).input(),
      routingRules: map['routingRules'] == null ? null : (pulumi.Input.decodeList<RoutingRuleResponse>(map['routingRules']!, (value) => RoutingRuleResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}


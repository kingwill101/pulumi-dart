// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'redirect_all_requests_to.dart';
import 'routing_rule.dart';

/// Definition of WebsiteConfiguration
class WebsiteConfiguration {
  /// The name of the error document for the website.
  final String? errorDocument;
  /// The name of the index document for the website.
  final String? indexDocument;
  /// The redirect behavior for every request to this bucket's website endpoint.  If you specify this property, you can't specify any other property. Specifies the redirect behavior of all requests to a website endpoint of an Amazon S3 bucket.
  final RedirectAllRequestsTo? redirectAllRequestsTo;
  /// Rules that define when a redirect is applied and the redirect behavior.
  final List<RoutingRule>? routingRules;

  /// Creates a new [WebsiteConfiguration].
  /// [errorDocument] The name of the error document for the website.
  /// [indexDocument] The name of the index document for the website.
  /// [redirectAllRequestsTo] The redirect behavior for every request to this bucket's website endpoint.  If you specify this property, you can't specify any other property. Specifies the redirect behavior of all requests to a website endpoint of an Amazon S3 bucket.
  /// [routingRules] Rules that define when a redirect is applied and the redirect behavior.
  WebsiteConfiguration({
    this.errorDocument,
    this.indexDocument,
    this.redirectAllRequestsTo,
    this.routingRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorDocument': ?errorDocument,
      'indexDocument': ?indexDocument,
      'redirectAllRequestsTo': ?redirectAllRequestsTo == null ? null : redirectAllRequestsTo!.toMap(),
      'routingRules': ?routingRules == null ? null : pulumi.Input.encodeList<RoutingRule, Map<String, dynamic>>(routingRules!, (value) => value.toMap()),
    };
  }

  factory WebsiteConfiguration.fromMap(Map<String, dynamic> map) {
    return WebsiteConfiguration(
      errorDocument: map['errorDocument'] == null ? null : map['errorDocument'] as String,
      indexDocument: map['indexDocument'] == null ? null : map['indexDocument'] as String,
      redirectAllRequestsTo: map['redirectAllRequestsTo'] == null ? null : RedirectAllRequestsTo.fromMap((map['redirectAllRequestsTo'] as Map).cast<String, dynamic>()),
      routingRules: map['routingRules'] == null ? null : pulumi.Input.decodeList<RoutingRule>(map['routingRules'], (value) => RoutingRule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}


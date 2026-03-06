// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'redirect_all_requests_to.dart';
import 'routing_rule.dart';

/// Definition of WebsiteConfiguration
class WebsiteConfiguration {
  /// The name of the error document for the website.
  final pulumi.Input<String>? errorDocument;
  /// The name of the index document for the website.
  final pulumi.Input<String>? indexDocument;
  /// The redirect behavior for every request to this bucket's website endpoint.  If you specify this property, you can't specify any other property. Specifies the redirect behavior of all requests to a website endpoint of an Amazon S3 bucket.
  final pulumi.Input<RedirectAllRequestsTo>? redirectAllRequestsTo;
  /// Rules that define when a redirect is applied and the redirect behavior.
  final pulumi.Input<List<RoutingRule>>? routingRules;

  /// Creates a new [WebsiteConfiguration].
  /// [errorDocument] The name of the error document for the website.
  /// [indexDocument] The name of the index document for the website.
  /// [redirectAllRequestsTo] The redirect behavior for every request to this bucket's website endpoint.  If you specify this property, you can't specify any other property. Specifies the redirect behavior of all requests to a website endpoint of an Amazon S3 bucket.
  /// [routingRules] Rules that define when a redirect is applied and the redirect behavior.
  const WebsiteConfiguration({
    this.errorDocument,
    this.indexDocument,
    this.redirectAllRequestsTo,
    this.routingRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorDocument': ?errorDocument,
      'indexDocument': ?indexDocument,
      'redirectAllRequestsTo': ?pulumi.Input.mapOptionalInputValue<RedirectAllRequestsTo, Map<String, dynamic>>(redirectAllRequestsTo, (value) => value.toMap()),
      'routingRules': ?pulumi.Input.mapOptionalInputValue<List<RoutingRule>, List<Map<String, dynamic>>>(routingRules, (value) => pulumi.Input.encodeList<RoutingRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WebsiteConfiguration.fromMap(Map<String, dynamic> map) {
    return WebsiteConfiguration(
      errorDocument: (() { final guardedValue = map['errorDocument']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      indexDocument: (() { final guardedValue = map['indexDocument']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      redirectAllRequestsTo: (() { final guardedValue = map['redirectAllRequestsTo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RedirectAllRequestsTo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      routingRules: (() { final guardedValue = map['routingRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RoutingRule>(guardedValue, (value) => RoutingRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}


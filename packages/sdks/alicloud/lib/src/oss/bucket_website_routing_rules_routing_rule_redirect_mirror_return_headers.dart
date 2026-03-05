// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_website_routing_rules_routing_rule_redirect_mirror_return_headers_return_header.dart';

class BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorReturnHeaders {
  /// The list of response header rules for mirroring back-to-source return. See `return_header` below.
  final pulumi.Input<List<BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorReturnHeadersReturnHeader>>? returnHeaders;

  /// Creates a new [BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorReturnHeaders].
  /// [returnHeaders] The list of response header rules for mirroring back-to-source return. See `return_header` below.
  BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorReturnHeaders({
    this.returnHeaders,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'returnHeaders': ?pulumi.Input.mapOptionalInputValue<List<BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorReturnHeadersReturnHeader>, List<Map<String, dynamic>>>(returnHeaders, (value) => pulumi.Input.encodeList<BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorReturnHeadersReturnHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorReturnHeaders.fromMap(Map<String, dynamic> map) {
    return BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorReturnHeaders(
      returnHeaders: (() { final guardedValue = map['returnHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorReturnHeadersReturnHeader>(guardedValue, (value) => BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorReturnHeadersReturnHeader.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}


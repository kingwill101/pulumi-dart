// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_website_routing_rules_routing_rule_redirect_mirror_headers_set.dart';

class BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorHeaders {
  /// Indicates whether other headers except the following headers are transmitted to the source site. It takes effect only when the RedirectType is set to Mirror. content-length, authorization2, authorization, range, date, and other headers Headers whose names start with oss-/x-oss-/x-drs-
  final bool? passAll;
  /// Pass through the specified Header to the source site. It takes effect only when the RedirectType is set to Mirror. Each Header is up to 1024 bytes in length and has A character set of 0 to 9, a to Z, A to z, and dashes (-).
  final List<String>? passes;
  /// Do not pass the specified Header to the source site. It takes effect only when the RedirectType is set to Mirror. Each Header is up to 1024 bytes in length and has A character set of 0 to 9, a to Z, A to z, and dashes (-).
  final List<String>? removes;
  /// Set a Header to send to the source site. Regardless of whether the request contains the specified Header, these headers will be set when returning to the source site. It takes effect only when the RedirectType is set to Mirror. See `set` below.
  final List<BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorHeadersSet>? sets;

  /// Creates a new [BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorHeaders].
  /// [passAll] Indicates whether other headers except the following headers are transmitted to the source site. It takes effect only when the RedirectType is set to Mirror. content-length, authorization2, authorization, range, date, and other headers Headers whose names start with oss-/x-oss-/x-drs-
  /// [passes] Pass through the specified Header to the source site. It takes effect only when the RedirectType is set to Mirror. Each Header is up to 1024 bytes in length and has A character set of 0 to 9, a to Z, A to z, and dashes (-).
  /// [removes] Do not pass the specified Header to the source site. It takes effect only when the RedirectType is set to Mirror. Each Header is up to 1024 bytes in length and has A character set of 0 to 9, a to Z, A to z, and dashes (-).
  /// [sets] Set a Header to send to the source site. Regardless of whether the request contains the specified Header, these headers will be set when returning to the source site. It takes effect only when the RedirectType is set to Mirror. See `set` below.
  BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorHeaders({
    this.passAll,
    this.passes,
    this.removes,
    this.sets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'passAll': ?passAll,
      'passes': ?passes,
      'removes': ?removes,
      'sets': ?sets == null ? null : pulumi.Input.encodeList<BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorHeadersSet, Map<String, dynamic>>(sets!, (value) => value.toMap()),
    };
  }

  factory BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorHeaders.fromMap(Map<String, dynamic> map) {
    return BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorHeaders(
      passAll: map['passAll'] == null ? null : map['passAll'] as bool,
      passes: map['passes'] == null ? null : (map['passes'] as List).cast<String>(),
      removes: map['removes'] == null ? null : (map['removes'] as List).cast<String>(),
      sets: map['sets'] == null ? null : pulumi.Input.decodeList<BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorHeadersSet>(map['sets'], (value) => BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorHeadersSet.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_website_routing_rules_routing_rule_redirect_mirror_headers_set.dart';

class BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorHeaders {
  /// Indicates whether other headers except the following headers are transmitted to the source site. It takes effect only when the RedirectType is set to Mirror. content-length, authorization2, authorization, range, date, and other headers Headers whose names start with oss-/x-oss-/x-drs-
  final pulumi.Input<bool>? passAll;

  /// Pass through the specified Header to the source site. It takes effect only when the RedirectType is set to Mirror. Each Header is up to 1024 bytes in length and has A character set of 0 to 9, a to Z, A to z, and dashes (-).
  final pulumi.Input<List<String>>? passes;

  /// Do not pass the specified Header to the source site. It takes effect only when the RedirectType is set to Mirror. Each Header is up to 1024 bytes in length and has A character set of 0 to 9, a to Z, A to z, and dashes (-).
  final pulumi.Input<List<String>>? removes;

  /// Set a Header to send to the source site. Regardless of whether the request contains the specified Header, these headers will be set when returning to the source site. It takes effect only when the RedirectType is set to Mirror. See `set` below.
  final pulumi.Input<
    List<BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorHeadersSet>
  >?
  sets;

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
      'sets':
          ?pulumi.Input.mapOptionalInputValue<
            List<BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorHeadersSet>,
            List<Map<String, dynamic>>
          >(
            sets,
            (value) =>
                pulumi.Input.encodeList<
                  BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorHeadersSet,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorHeaders.fromMap(
    Map<String, dynamic> map,
  ) {
    return BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorHeaders(
      passAll: (() {
        final guardedValue = map['passAll'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      passes: (() {
        final guardedValue = map['passes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      removes: (() {
        final guardedValue = map['removes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      sets: (() {
        final guardedValue = map['sets'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorHeadersSet
          >(
            guardedValue,
            (value) =>
                BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorHeadersSet.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
    );
  }
}

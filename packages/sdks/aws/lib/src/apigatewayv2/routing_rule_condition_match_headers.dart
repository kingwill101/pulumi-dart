// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'routing_rule_condition_match_headers_any_of.dart';

class RoutingRuleConditionMatchHeaders {
  /// Configuration of the headers to be matched. There is a match if any of the header name and header value globs are matched. See below.
  final pulumi.Input<RoutingRuleConditionMatchHeadersAnyOf> anyOf;

  /// Creates a new [RoutingRuleConditionMatchHeaders].
  /// [anyOf] Configuration of the headers to be matched. There is a match if any of the header name and header value globs are matched. See below.
  RoutingRuleConditionMatchHeaders({
    required this.anyOf,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'anyOf': pulumi.Input.mapInputValue<RoutingRuleConditionMatchHeadersAnyOf, Map<String, dynamic>>(anyOf, (value) => value.toMap()),
    };
  }

  factory RoutingRuleConditionMatchHeaders.fromMap(Map<String, dynamic> map) {
    return RoutingRuleConditionMatchHeaders(
      anyOf: (RoutingRuleConditionMatchHeadersAnyOf.fromMap((map['anyOf']! as Map).cast<String, dynamic>())).input(),
    );
  }
}


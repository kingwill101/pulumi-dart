// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class V3CustomDomainRouteConfigRouteRewriteConfigRegexRule {
  /// Matching Rules
  final pulumi.Input<String>? match;

  /// Replace Rules
  final pulumi.Input<String>? replacement;

  /// Creates a new [V3CustomDomainRouteConfigRouteRewriteConfigRegexRule].
  /// [match] Matching Rules
  /// [replacement] Replace Rules
  V3CustomDomainRouteConfigRouteRewriteConfigRegexRule({
    this.match,
    this.replacement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'match': ?match, 'replacement': ?replacement};
  }

  factory V3CustomDomainRouteConfigRouteRewriteConfigRegexRule.fromMap(
    Map<String, dynamic> map,
  ) {
    return V3CustomDomainRouteConfigRouteRewriteConfigRegexRule(
      match: (() {
        final guardedValue = map['match'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      replacement: (() {
        final guardedValue = map['replacement'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

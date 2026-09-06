// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Network Virtual Appliance Sku Properties.
class BreakOutCategoryPoliciesResponse {
  /// Flag to control breakout of o365 allow category.
  final pulumi.Input<bool?>? allow;
  /// Flag to control breakout of o365 default category.
  final pulumi.Input<bool?>? default_;
  /// Flag to control breakout of o365 optimize category.
  final pulumi.Input<bool?>? optimize;

  /// Creates a new [BreakOutCategoryPoliciesResponse].
  /// [allow] Flag to control breakout of o365 allow category.
  /// [default_] Flag to control breakout of o365 default category.
  /// [optimize] Flag to control breakout of o365 optimize category.
  const BreakOutCategoryPoliciesResponse({
    this.allow,
    this.default_,
    this.optimize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allow': ?allow,
      'default': ?default_,
      'optimize': ?optimize,
    };
  }

  factory BreakOutCategoryPoliciesResponse.fromMap(Map<String, dynamic> map) {
    return BreakOutCategoryPoliciesResponse(
      allow: (() { final guardedValue = map['allow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      default_: (() { final guardedValue = map['default']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      optimize: (() { final guardedValue = map['optimize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

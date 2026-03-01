// ignore_for_file: unused_element, unnecessary_cast


/// Network Virtual Appliance Sku Properties.
class BreakOutCategoryPolicies {
  /// Flag to control breakout of o365 allow category.
  final bool? allow;
  /// Flag to control breakout of o365 default category.
  final bool? default_;
  /// Flag to control breakout of o365 optimize category.
  final bool? optimize;

  /// Creates a new [BreakOutCategoryPolicies].
  /// [allow] Flag to control breakout of o365 allow category.
  /// [default_] Flag to control breakout of o365 default category.
  /// [optimize] Flag to control breakout of o365 optimize category.
  BreakOutCategoryPolicies({
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

  factory BreakOutCategoryPolicies.fromMap(Map<String, dynamic> map) {
    return BreakOutCategoryPolicies(
      allow: map['allow'] == null ? null : map['allow'] as bool,
      default_: map['default'] == null ? null : map['default'] as bool,
      optimize: map['optimize'] == null ? null : map['optimize'] as bool,
    );
  }
}


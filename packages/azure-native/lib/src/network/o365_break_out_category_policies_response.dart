// ignore_for_file: unused_element, unnecessary_cast


/// Office365 breakout categories.
class O365BreakOutCategoryPoliciesResponse {
  /// Flag to control allow category.
  final bool? allow;
  /// Flag to control default category.
  final bool? default_;
  /// Flag to control optimize category.
  final bool? optimize;

  /// Creates a new [O365BreakOutCategoryPoliciesResponse].
  /// [allow] Flag to control allow category.
  /// [default_] Flag to control default category.
  /// [optimize] Flag to control optimize category.
  O365BreakOutCategoryPoliciesResponse({
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

  factory O365BreakOutCategoryPoliciesResponse.fromMap(Map<String, dynamic> map) {
    return O365BreakOutCategoryPoliciesResponse(
      allow: map['allow'] == null ? null : map['allow'] as bool,
      default_: map['default'] == null ? null : map['default'] as bool,
      optimize: map['optimize'] == null ? null : map['optimize'] as bool,
    );
  }
}


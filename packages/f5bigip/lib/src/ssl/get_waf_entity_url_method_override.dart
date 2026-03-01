// ignore_for_file: unused_element, unnecessary_cast


class GetWafEntityUrlMethodOverride {
  /// Specifies that the system allows or disallows a method for this URL
  final bool allow;
  /// Specifies an HTTP method.
  final String method;

  /// Creates a new [GetWafEntityUrlMethodOverride].
  /// [allow] Specifies that the system allows or disallows a method for this URL
  /// [method] Specifies an HTTP method.
  GetWafEntityUrlMethodOverride({
    required this.allow,
    required this.method,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allow': allow,
      'method': method,
    };
  }

  factory GetWafEntityUrlMethodOverride.fromMap(Map<String, dynamic> map) {
    return GetWafEntityUrlMethodOverride(
      allow: map['allow'] as bool,
      method: map['method'] as String,
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for the Google Plugin Auth flow.
class IdentityServiceGoogleConfig3 {
  /// Disable automatic configuration of Google Plugin on supported platforms.
  final bool? disable;

  IdentityServiceGoogleConfig3({
    this.disable,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final disableValue = disable;
    if (disableValue != null) {
      map['disable'] = disableValue;
    }
    return map;
  }

  factory IdentityServiceGoogleConfig3.fromMap(Map<String, dynamic> map) {
    return IdentityServiceGoogleConfig3(
      disable: map['disable'] == null ? null : map['disable'] as bool,
    );
  }
}

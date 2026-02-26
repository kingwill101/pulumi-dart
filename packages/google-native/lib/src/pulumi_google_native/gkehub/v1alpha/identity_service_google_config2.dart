// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for the Google Plugin Auth flow.
class IdentityServiceGoogleConfig2 {
  /// Disable automatic configuration of Google Plugin on supported platforms.
  final bool? disable;

  IdentityServiceGoogleConfig2({
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

  factory IdentityServiceGoogleConfig2.fromMap(Map<String, dynamic> map) {
    return IdentityServiceGoogleConfig2(
      disable: map['disable'] == null ? null : map['disable'] as bool,
    );
  }
}

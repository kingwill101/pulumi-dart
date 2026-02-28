// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for the Google Plugin Auth flow.
class IdentityServiceGoogleConfigGkehubV1beta {
  /// Disable automatic configuration of Google Plugin on supported platforms.
  final bool? disable;

  /// Creates a new [IdentityServiceGoogleConfigGkehubV1beta].
  /// [disable] Disable automatic configuration of Google Plugin on supported platforms.
  IdentityServiceGoogleConfigGkehubV1beta({
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

  factory IdentityServiceGoogleConfigGkehubV1beta.fromMap(
      Map<String, dynamic> map) {
    return IdentityServiceGoogleConfigGkehubV1beta(
      disable: map['disable'] == null ? null : map['disable'] as bool,
    );
  }
}

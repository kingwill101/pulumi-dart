// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for the Google Plugin Auth flow.
class IdentityServiceGoogleConfigResponseGkehubV1alpha {
  /// Disable automatic configuration of Google Plugin on supported platforms.
  final bool disable;

  IdentityServiceGoogleConfigResponseGkehubV1alpha({
    required this.disable,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['disable'] = disable;
    return map;
  }

  factory IdentityServiceGoogleConfigResponseGkehubV1alpha.fromMap(
      Map<String, dynamic> map) {
    return IdentityServiceGoogleConfigResponseGkehubV1alpha(
      disable: map['disable'] as bool,
    );
  }
}

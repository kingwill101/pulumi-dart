// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for the Google Plugin Auth flow.
class IdentityServiceGoogleConfigResponseGkehubV1beta {
  /// Disable automatic configuration of Google Plugin on supported platforms.
  final bool disable;

  IdentityServiceGoogleConfigResponseGkehubV1beta({
    required this.disable,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['disable'] = disable;
    return map;
  }

  factory IdentityServiceGoogleConfigResponseGkehubV1beta.fromMap(
      Map<String, dynamic> map) {
    return IdentityServiceGoogleConfigResponseGkehubV1beta(
      disable: map['disable'] as bool,
    );
  }
}

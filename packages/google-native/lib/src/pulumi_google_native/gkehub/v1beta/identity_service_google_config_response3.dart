// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for the Google Plugin Auth flow.
class IdentityServiceGoogleConfigResponse3 {
  /// Disable automatic configuration of Google Plugin on supported platforms.
  final bool disable;

  IdentityServiceGoogleConfigResponse3({
    required this.disable,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['disable'] = disable;
    return map;
  }

  factory IdentityServiceGoogleConfigResponse3.fromMap(
      Map<String, dynamic> map) {
    return IdentityServiceGoogleConfigResponse3(
      disable: map['disable'] as bool,
    );
  }
}

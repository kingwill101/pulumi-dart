// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for the Google Plugin Auth flow.
class IdentityServiceGoogleConfigResponse {
  /// Disable automatic configuration of Google Plugin on supported platforms.
  final bool disable;

  IdentityServiceGoogleConfigResponse({
    required this.disable,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['disable'] = disable;
    return map;
  }

  factory IdentityServiceGoogleConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return IdentityServiceGoogleConfigResponse(
      disable: map['disable'] as bool,
    );
  }
}

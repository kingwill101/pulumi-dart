// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for the Google Plugin Auth flow.
class IdentityServiceGoogleConfigResponse {
  /// Disable automatic configuration of Google Plugin on supported platforms.
  final bool disable;

  /// Creates a new [IdentityServiceGoogleConfigResponse].
  /// [disable] Disable automatic configuration of Google Plugin on supported platforms.
  IdentityServiceGoogleConfigResponse({required this.disable});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'disable': disable};
  }

  factory IdentityServiceGoogleConfigResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return IdentityServiceGoogleConfigResponse(disable: map['disable'] as bool);
  }
}

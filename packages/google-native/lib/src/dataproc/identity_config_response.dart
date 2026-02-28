// ignore_for_file: unused_element, unnecessary_cast

/// Identity related configuration, including service account based secure multi-tenancy user mappings.
class IdentityConfigResponse {
  /// Map of user to service account.
  final Map<String, String> userServiceAccountMapping;

  /// Creates a new [IdentityConfigResponse].
  /// [userServiceAccountMapping] Map of user to service account.
  IdentityConfigResponse({
    required this.userServiceAccountMapping,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['userServiceAccountMapping'] = userServiceAccountMapping;
    return map;
  }

  factory IdentityConfigResponse.fromMap(Map<String, dynamic> map) {
    return IdentityConfigResponse(
      userServiceAccountMapping:
          (map['userServiceAccountMapping'] as Map).cast<String, String>(),
    );
  }
}

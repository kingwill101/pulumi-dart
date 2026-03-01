// ignore_for_file: unused_element, unnecessary_cast

/// Identity related configuration, including service account based secure multi-tenancy user mappings.
class IdentityConfig {
  /// Map of user to service account.
  final Map<String, String> userServiceAccountMapping;

  /// Creates a new [IdentityConfig].
  /// [userServiceAccountMapping] Map of user to service account.
  IdentityConfig({required this.userServiceAccountMapping});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userServiceAccountMapping': userServiceAccountMapping,
    };
  }

  factory IdentityConfig.fromMap(Map<String, dynamic> map) {
    return IdentityConfig(
      userServiceAccountMapping: (map['userServiceAccountMapping'] as Map)
          .cast<String, String>(),
    );
  }
}

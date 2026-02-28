// ignore_for_file: unused_element, unnecessary_cast

class IdcApplicationServiceIntegrationS3AccessGrantsReadWriteAccess {
  /// Determines whether read/write scope is enabled or disabled.
  final String authorization;

  /// Creates a new [IdcApplicationServiceIntegrationS3AccessGrantsReadWriteAccess].
  /// [authorization] Determines whether read/write scope is enabled or disabled.
  IdcApplicationServiceIntegrationS3AccessGrantsReadWriteAccess({
    required this.authorization,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['authorization'] = authorization;
    return map;
  }

  factory IdcApplicationServiceIntegrationS3AccessGrantsReadWriteAccess.fromMap(
      Map<String, dynamic> map) {
    return IdcApplicationServiceIntegrationS3AccessGrantsReadWriteAccess(
      authorization: map['authorization'] as String,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

class IdcApplicationServiceIntegrationRedshiftConnect {
  /// Determines whether the connect integration is enabled or disabled.
  final String authorization;

  /// Creates a new [IdcApplicationServiceIntegrationRedshiftConnect].
  /// [authorization] Determines whether the connect integration is enabled or disabled.
  IdcApplicationServiceIntegrationRedshiftConnect({
    required this.authorization,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['authorization'] = authorization;
    return map;
  }

  factory IdcApplicationServiceIntegrationRedshiftConnect.fromMap(
      Map<String, dynamic> map) {
    return IdcApplicationServiceIntegrationRedshiftConnect(
      authorization: map['authorization'] as String,
    );
  }
}

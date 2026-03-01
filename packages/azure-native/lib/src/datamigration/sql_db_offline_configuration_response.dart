// ignore_for_file: unused_element, unnecessary_cast


/// Offline configuration
class SqlDbOfflineConfigurationResponse {
  /// Offline migration
  final bool offline;

  /// Creates a new [SqlDbOfflineConfigurationResponse].
  /// [offline] Offline migration
  SqlDbOfflineConfigurationResponse({
    required this.offline,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'offline': offline,
    };
  }

  factory SqlDbOfflineConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return SqlDbOfflineConfigurationResponse(
      offline: map['offline'] as bool,
    );
  }
}


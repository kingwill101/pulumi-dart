// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Offline configuration
class SqlDbOfflineConfigurationResponse {
  /// Offline migration
  final pulumi.Input<bool> offline;

  /// Creates a new [SqlDbOfflineConfigurationResponse].
  /// [offline] Offline migration
  SqlDbOfflineConfigurationResponse({required this.offline});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'offline': offline};
  }

  factory SqlDbOfflineConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return SqlDbOfflineConfigurationResponse(
      offline: pulumi.Input.fromValue(map['offline'] as bool),
    );
  }
}

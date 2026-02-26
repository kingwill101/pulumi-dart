// ignore_for_file: unused_element, unnecessary_cast

import 'networking_config_connection_type.dart';

/// Configuration options for networking connections in the Composer 2 environment.
class NetworkingConfig {
  /// Optional. Indicates the user requested specifc connection type between Tenant and Customer projects. You cannot set networking connection type in public IP environment.
  final NetworkingConfigConnectionType? connectionType;

  NetworkingConfig({
    this.connectionType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final connectionTypeValue = connectionType;
    if (connectionTypeValue != null) {
      map['connectionType'] = connectionTypeValue.value;
    }
    return map;
  }

  factory NetworkingConfig.fromMap(Map<String, dynamic> map) {
    return NetworkingConfig(
      connectionType: map['connectionType'] == null
          ? null
          : NetworkingConfigConnectionType.fromValue(
              map['connectionType'] as String),
    );
  }
}

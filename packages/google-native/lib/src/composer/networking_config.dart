// ignore_for_file: unused_element, unnecessary_cast

import 'networking_config_connection_type.dart';

/// Configuration options for networking connections in the Composer 2 environment.
class NetworkingConfig {
  /// Optional. Indicates the user requested specifc connection type between Tenant and Customer projects. You cannot set networking connection type in public IP environment.
  final NetworkingConfigConnectionType? connectionType;

  /// Creates a new [NetworkingConfig].
  /// [connectionType] Optional. Indicates the user requested specifc connection type between Tenant and Customer projects. You cannot set networking connection type in public IP environment.
  NetworkingConfig({
    this.connectionType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionType': ?connectionType == null ? null : connectionType!.value,
    };
  }

  factory NetworkingConfig.fromMap(Map<String, dynamic> map) {
    return NetworkingConfig(
      connectionType: map['connectionType'] == null ? null : NetworkingConfigConnectionType.fromValue(map['connectionType'] as String),
    );
  }
}


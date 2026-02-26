// ignore_for_file: unused_element, unnecessary_cast

import 'networking_config_connection_type2.dart';

/// Configuration options for networking connections in the Composer 2 environment.
class NetworkingConfig2 {
  /// Optional. Indicates the user requested specifc connection type between Tenant and Customer projects. You cannot set networking connection type in public IP environment.
  final NetworkingConfigConnectionType2? connectionType;

  NetworkingConfig2({
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

  factory NetworkingConfig2.fromMap(Map<String, dynamic> map) {
    return NetworkingConfig2(
      connectionType: map['connectionType'] == null
          ? null
          : NetworkingConfigConnectionType2.fromValue(
              map['connectionType'] as String),
    );
  }
}

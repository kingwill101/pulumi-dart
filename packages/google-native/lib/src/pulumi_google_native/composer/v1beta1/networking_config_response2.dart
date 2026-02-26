// ignore_for_file: unused_element, unnecessary_cast

/// Configuration options for networking connections in the Composer 2 environment.
class NetworkingConfigResponse2 {
  /// Optional. Indicates the user requested specifc connection type between Tenant and Customer projects. You cannot set networking connection type in public IP environment.
  final String connectionType;

  NetworkingConfigResponse2({
    required this.connectionType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['connectionType'] = connectionType;
    return map;
  }

  factory NetworkingConfigResponse2.fromMap(Map<String, dynamic> map) {
    return NetworkingConfigResponse2(
      connectionType: map['connectionType'] as String,
    );
  }
}

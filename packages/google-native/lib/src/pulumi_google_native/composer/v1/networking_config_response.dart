// ignore_for_file: unused_element, unnecessary_cast

/// Configuration options for networking connections in the Composer 2 environment.
class NetworkingConfigResponse {
  /// Optional. Indicates the user requested specifc connection type between Tenant and Customer projects. You cannot set networking connection type in public IP environment.
  final String connectionType;

  NetworkingConfigResponse({
    required this.connectionType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['connectionType'] = connectionType;
    return map;
  }

  factory NetworkingConfigResponse.fromMap(Map<String, dynamic> map) {
    return NetworkingConfigResponse(
      connectionType: map['connectionType'] as String,
    );
  }
}

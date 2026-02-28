// ignore_for_file: unused_element, unnecessary_cast

/// Specifies the login configuration for Runtime
class RuntimeAccessConfigResponse {
  /// The type of access mode this instance.
  final String accessType;

  /// The proxy endpoint that is used to access the runtime.
  final String proxyUri;

  /// The owner of this runtime after creation. Format: `alias@example.com` Currently supports one owner only.
  final String runtimeOwner;

  /// Creates a new [RuntimeAccessConfigResponse].
  /// [accessType] The type of access mode this instance.
  /// [proxyUri] The proxy endpoint that is used to access the runtime.
  /// [runtimeOwner] The owner of this runtime after creation. Format: `alias@example.com` Currently supports one owner only.
  RuntimeAccessConfigResponse({
    required this.accessType,
    required this.proxyUri,
    required this.runtimeOwner,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accessType'] = accessType;
    map['proxyUri'] = proxyUri;
    map['runtimeOwner'] = runtimeOwner;
    return map;
  }

  factory RuntimeAccessConfigResponse.fromMap(Map<String, dynamic> map) {
    return RuntimeAccessConfigResponse(
      accessType: map['accessType'] as String,
      proxyUri: map['proxyUri'] as String,
      runtimeOwner: map['runtimeOwner'] as String,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

/// PscConfig contains PSC related configuration at a cluster level. NEXT ID: 2
class PscConfigResponse {
  /// Optional. Create an instance that allows connections from Private Service Connect endpoints to the instance.
  final bool pscEnabled;

  /// Creates a new [PscConfigResponse].
  /// [pscEnabled] Optional. Create an instance that allows connections from Private Service Connect endpoints to the instance.
  PscConfigResponse({
    required this.pscEnabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['pscEnabled'] = pscEnabled;
    return map;
  }

  factory PscConfigResponse.fromMap(Map<String, dynamic> map) {
    return PscConfigResponse(
      pscEnabled: map['pscEnabled'] as bool,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

/// An access config attached to the TPU worker.
class AccessConfigResponse {
  /// An external IP address associated with the TPU worker.
  final String externalIp;

  /// Creates a new [AccessConfigResponse].
  /// [externalIp] An external IP address associated with the TPU worker.
  AccessConfigResponse({
    required this.externalIp,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['externalIp'] = externalIp;
    return map;
  }

  factory AccessConfigResponse.fromMap(Map<String, dynamic> map) {
    return AccessConfigResponse(
      externalIp: map['externalIp'] as String,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

/// An access config attached to the TPU worker.
class AccessConfigResponse4 {
  /// An external IP address associated with the TPU worker.
  final String externalIp;

  AccessConfigResponse4({
    required this.externalIp,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['externalIp'] = externalIp;
    return map;
  }

  factory AccessConfigResponse4.fromMap(Map<String, dynamic> map) {
    return AccessConfigResponse4(
      externalIp: map['externalIp'] as String,
    );
  }
}

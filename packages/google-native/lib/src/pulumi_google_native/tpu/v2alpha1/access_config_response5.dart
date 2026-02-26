// ignore_for_file: unused_element, unnecessary_cast

/// An access config attached to the TPU worker.
class AccessConfigResponse5 {
  /// An external IP address associated with the TPU worker.
  final String externalIp;

  AccessConfigResponse5({
    required this.externalIp,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['externalIp'] = externalIp;
    return map;
  }

  factory AccessConfigResponse5.fromMap(Map<String, dynamic> map) {
    return AccessConfigResponse5(
      externalIp: map['externalIp'] as String,
    );
  }
}

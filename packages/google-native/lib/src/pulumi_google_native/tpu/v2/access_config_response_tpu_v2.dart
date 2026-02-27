// ignore_for_file: unused_element, unnecessary_cast

/// An access config attached to the TPU worker.
class AccessConfigResponseTpuV2 {
  /// An external IP address associated with the TPU worker.
  final String externalIp;

  AccessConfigResponseTpuV2({
    required this.externalIp,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['externalIp'] = externalIp;
    return map;
  }

  factory AccessConfigResponseTpuV2.fromMap(Map<String, dynamic> map) {
    return AccessConfigResponseTpuV2(
      externalIp: map['externalIp'] as String,
    );
  }
}

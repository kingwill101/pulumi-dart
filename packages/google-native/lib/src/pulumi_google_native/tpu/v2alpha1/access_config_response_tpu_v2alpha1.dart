// ignore_for_file: unused_element, unnecessary_cast

/// An access config attached to the TPU worker.
class AccessConfigResponseTpuV2alpha1 {
  /// An external IP address associated with the TPU worker.
  final String externalIp;

  AccessConfigResponseTpuV2alpha1({
    required this.externalIp,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['externalIp'] = externalIp;
    return map;
  }

  factory AccessConfigResponseTpuV2alpha1.fromMap(Map<String, dynamic> map) {
    return AccessConfigResponseTpuV2alpha1(
      externalIp: map['externalIp'] as String,
    );
  }
}

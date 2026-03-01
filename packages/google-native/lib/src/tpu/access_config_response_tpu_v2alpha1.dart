// ignore_for_file: unused_element, unnecessary_cast

/// An access config attached to the TPU worker.
class AccessConfigResponseTpuV2alpha1 {
  /// An external IP address associated with the TPU worker.
  final String externalIp;

  /// Creates a new [AccessConfigResponseTpuV2alpha1].
  /// [externalIp] An external IP address associated with the TPU worker.
  AccessConfigResponseTpuV2alpha1({required this.externalIp});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'externalIp': externalIp};
  }

  factory AccessConfigResponseTpuV2alpha1.fromMap(Map<String, dynamic> map) {
    return AccessConfigResponseTpuV2alpha1(
      externalIp: map['externalIp'] as String,
    );
  }
}

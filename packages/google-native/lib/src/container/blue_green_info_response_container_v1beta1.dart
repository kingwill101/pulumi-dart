// ignore_for_file: unused_element, unnecessary_cast


/// Information relevant to blue-green upgrade.
class BlueGreenInfoResponseContainerV1beta1 {
  /// The resource URLs of the [managed instance groups] (/compute/docs/instance-groups/creating-groups-of-managed-instances) associated with blue pool.
  final List<String> blueInstanceGroupUrls;
  /// Time to start deleting blue pool to complete blue-green upgrade, in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.
  final String bluePoolDeletionStartTime;
  /// The resource URLs of the [managed instance groups] (/compute/docs/instance-groups/creating-groups-of-managed-instances) associated with green pool.
  final List<String> greenInstanceGroupUrls;
  /// Version of green pool.
  final String greenPoolVersion;
  /// Current blue-green upgrade phase.
  final String phase;

  /// Creates a new [BlueGreenInfoResponseContainerV1beta1].
  /// [blueInstanceGroupUrls] The resource URLs of the [managed instance groups] (/compute/docs/instance-groups/creating-groups-of-managed-instances) associated with blue pool.
  /// [bluePoolDeletionStartTime] Time to start deleting blue pool to complete blue-green upgrade, in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.
  /// [greenInstanceGroupUrls] The resource URLs of the [managed instance groups] (/compute/docs/instance-groups/creating-groups-of-managed-instances) associated with green pool.
  /// [greenPoolVersion] Version of green pool.
  /// [phase] Current blue-green upgrade phase.
  BlueGreenInfoResponseContainerV1beta1({
    required this.blueInstanceGroupUrls,
    required this.bluePoolDeletionStartTime,
    required this.greenInstanceGroupUrls,
    required this.greenPoolVersion,
    required this.phase,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blueInstanceGroupUrls': blueInstanceGroupUrls,
      'bluePoolDeletionStartTime': bluePoolDeletionStartTime,
      'greenInstanceGroupUrls': greenInstanceGroupUrls,
      'greenPoolVersion': greenPoolVersion,
      'phase': phase,
    };
  }

  factory BlueGreenInfoResponseContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return BlueGreenInfoResponseContainerV1beta1(
      blueInstanceGroupUrls: (map['blueInstanceGroupUrls'] as List).cast<String>(),
      bluePoolDeletionStartTime: map['bluePoolDeletionStartTime'] as String,
      greenInstanceGroupUrls: (map['greenInstanceGroupUrls'] as List).cast<String>(),
      greenPoolVersion: map['greenPoolVersion'] as String,
      phase: map['phase'] as String,
    );
  }
}


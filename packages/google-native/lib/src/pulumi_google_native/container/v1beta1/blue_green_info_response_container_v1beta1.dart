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

  BlueGreenInfoResponseContainerV1beta1({
    required this.blueInstanceGroupUrls,
    required this.bluePoolDeletionStartTime,
    required this.greenInstanceGroupUrls,
    required this.greenPoolVersion,
    required this.phase,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['blueInstanceGroupUrls'] = blueInstanceGroupUrls;
    map['bluePoolDeletionStartTime'] = bluePoolDeletionStartTime;
    map['greenInstanceGroupUrls'] = greenInstanceGroupUrls;
    map['greenPoolVersion'] = greenPoolVersion;
    map['phase'] = phase;
    return map;
  }

  factory BlueGreenInfoResponseContainerV1beta1.fromMap(
      Map<String, dynamic> map) {
    return BlueGreenInfoResponseContainerV1beta1(
      blueInstanceGroupUrls:
          (map['blueInstanceGroupUrls'] as List).cast<String>(),
      bluePoolDeletionStartTime: map['bluePoolDeletionStartTime'] as String,
      greenInstanceGroupUrls:
          (map['greenInstanceGroupUrls'] as List).cast<String>(),
      greenPoolVersion: map['greenPoolVersion'] as String,
      phase: map['phase'] as String,
    );
  }
}

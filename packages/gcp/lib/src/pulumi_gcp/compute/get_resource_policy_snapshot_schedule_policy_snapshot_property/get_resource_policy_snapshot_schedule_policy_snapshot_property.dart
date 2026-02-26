// ignore_for_file: unused_element, unnecessary_cast

class GetResourcePolicySnapshotSchedulePolicySnapshotProperty {
  /// Creates the new snapshot in the snapshot chain labeled with the
  /// specified name. The chain name must be 1-63 characters long and comply
  /// with RFC1035.
  final String chainName;

  /// Whether to perform a 'guest aware' snapshot.
  final bool guestFlush;

  /// A set of key-value pairs.
  final Map<String, String> labels;

  /// Cloud Storage bucket location to store the auto snapshot
  /// (regional or multi-regional)
  final List<String> storageLocations;

  GetResourcePolicySnapshotSchedulePolicySnapshotProperty({
    required this.chainName,
    required this.guestFlush,
    required this.labels,
    required this.storageLocations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['chainName'] = chainName;
    map['guestFlush'] = guestFlush;
    map['labels'] = labels;
    map['storageLocations'] = storageLocations;
    return map;
  }

  factory GetResourcePolicySnapshotSchedulePolicySnapshotProperty.fromMap(
      Map<String, dynamic> map) {
    return GetResourcePolicySnapshotSchedulePolicySnapshotProperty(
      chainName: map['chainName'] as String,
      guestFlush: map['guestFlush'] as bool,
      labels: (map['labels'] as Map).cast<String, String>(),
      storageLocations: (map['storageLocations'] as List).cast<String>(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

/// Specified snapshot properties for scheduled snapshots created by this policy.
class ResourcePolicySnapshotSchedulePolicySnapshotPropertiesResponse3 {
  /// Chain name that the snapshot is created in.
  final String chainName;

  /// Indication to perform a 'guest aware' snapshot.
  final bool guestFlush;

  /// Labels to apply to scheduled snapshots. These can be later modified by the setLabels method. Label values may be empty.
  final Map<String, String> labels;

  /// Cloud Storage bucket storage location of the auto snapshot (regional or multi-regional).
  final List<String> storageLocations;

  ResourcePolicySnapshotSchedulePolicySnapshotPropertiesResponse3({
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

  factory ResourcePolicySnapshotSchedulePolicySnapshotPropertiesResponse3.fromMap(
      Map<String, dynamic> map) {
    return ResourcePolicySnapshotSchedulePolicySnapshotPropertiesResponse3(
      chainName: map['chainName'] as String,
      guestFlush: map['guestFlush'] as bool,
      labels: (map['labels'] as Map).cast<String, String>(),
      storageLocations: (map['storageLocations'] as List).cast<String>(),
    );
  }
}

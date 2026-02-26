// ignore_for_file: unused_element, unnecessary_cast

class ResourcePolicySnapshotSchedulePolicySnapshotProperties {
  /// Creates the new snapshot in the snapshot chain labeled with the
  /// specified name. The chain name must be 1-63 characters long and comply
  /// with RFC1035.
  final String? chainName;

  /// Whether to perform a 'guest aware' snapshot.
  final bool? guestFlush;

  /// A set of key-value pairs.
  final Map<String, String>? labels;

  /// Cloud Storage bucket location to store the auto snapshot
  /// (regional or multi-regional)
  final String? storageLocations;

  ResourcePolicySnapshotSchedulePolicySnapshotProperties({
    this.chainName,
    this.guestFlush,
    this.labels,
    this.storageLocations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final chainNameValue = chainName;
    if (chainNameValue != null) {
      map['chainName'] = chainNameValue;
    }
    final guestFlushValue = guestFlush;
    if (guestFlushValue != null) {
      map['guestFlush'] = guestFlushValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final storageLocationsValue = storageLocations;
    if (storageLocationsValue != null) {
      map['storageLocations'] = storageLocationsValue;
    }
    return map;
  }

  factory ResourcePolicySnapshotSchedulePolicySnapshotProperties.fromMap(
      Map<String, dynamic> map) {
    return ResourcePolicySnapshotSchedulePolicySnapshotProperties(
      chainName: map['chainName'] == null ? null : map['chainName'] as String,
      guestFlush: map['guestFlush'] == null ? null : map['guestFlush'] as bool,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      storageLocations: map['storageLocations'] == null
          ? null
          : map['storageLocations'] as String,
    );
  }
}

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

  /// Creates a new [ResourcePolicySnapshotSchedulePolicySnapshotProperties].
  /// [chainName] Creates the new snapshot in the snapshot chain labeled with the
  /// [guestFlush] Whether to perform a 'guest aware' snapshot.
  /// [labels] A set of key-value pairs.
  /// [storageLocations] Cloud Storage bucket location to store the auto snapshot
  ResourcePolicySnapshotSchedulePolicySnapshotProperties({
    this.chainName,
    this.guestFlush,
    this.labels,
    this.storageLocations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chainName': ?chainName,
      'guestFlush': ?guestFlush,
      'labels': ?labels,
      'storageLocations': ?storageLocations,
    };
  }

  factory ResourcePolicySnapshotSchedulePolicySnapshotProperties.fromMap(Map<String, dynamic> map) {
    return ResourcePolicySnapshotSchedulePolicySnapshotProperties(
      chainName: map['chainName'] == null ? null : map['chainName'] as String,
      guestFlush: map['guestFlush'] == null ? null : map['guestFlush'] as bool,
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      storageLocations: map['storageLocations'] == null ? null : map['storageLocations'] as String,
    );
  }
}


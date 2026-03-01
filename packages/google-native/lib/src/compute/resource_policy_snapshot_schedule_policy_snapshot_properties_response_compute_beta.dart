// ignore_for_file: unused_element, unnecessary_cast

/// Specified snapshot properties for scheduled snapshots created by this policy.
class ResourcePolicySnapshotSchedulePolicySnapshotPropertiesResponseComputeBeta {
  /// Chain name that the snapshot is created in.
  final String chainName;

  /// Indication to perform a 'guest aware' snapshot.
  final bool guestFlush;

  /// Labels to apply to scheduled snapshots. These can be later modified by the setLabels method. Label values may be empty.
  final Map<String, String> labels;

  /// Cloud Storage bucket storage location of the auto snapshot (regional or multi-regional).
  final List<String> storageLocations;

  /// Creates a new [ResourcePolicySnapshotSchedulePolicySnapshotPropertiesResponseComputeBeta].
  /// [chainName] Chain name that the snapshot is created in.
  /// [guestFlush] Indication to perform a 'guest aware' snapshot.
  /// [labels] Labels to apply to scheduled snapshots. These can be later modified by the setLabels method. Label values may be empty.
  /// [storageLocations] Cloud Storage bucket storage location of the auto snapshot (regional or multi-regional).
  ResourcePolicySnapshotSchedulePolicySnapshotPropertiesResponseComputeBeta({
    required this.chainName,
    required this.guestFlush,
    required this.labels,
    required this.storageLocations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chainName': chainName,
      'guestFlush': guestFlush,
      'labels': labels,
      'storageLocations': storageLocations,
    };
  }

  factory ResourcePolicySnapshotSchedulePolicySnapshotPropertiesResponseComputeBeta.fromMap(
    Map<String, dynamic> map,
  ) {
    return ResourcePolicySnapshotSchedulePolicySnapshotPropertiesResponseComputeBeta(
      chainName: map['chainName'] as String,
      guestFlush: map['guestFlush'] as bool,
      labels: (map['labels'] as Map).cast<String, String>(),
      storageLocations: (map['storageLocations'] as List).cast<String>(),
    );
  }
}

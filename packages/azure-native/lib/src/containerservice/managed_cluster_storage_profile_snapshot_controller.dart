// ignore_for_file: unused_element, unnecessary_cast


/// Snapshot Controller settings for the storage profile.
class ManagedClusterStorageProfileSnapshotController {
  /// Whether to enable Snapshot Controller. The default value is true.
  final bool? enabled;

  /// Creates a new [ManagedClusterStorageProfileSnapshotController].
  /// [enabled] Whether to enable Snapshot Controller. The default value is true.
  ManagedClusterStorageProfileSnapshotController({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory ManagedClusterStorageProfileSnapshotController.fromMap(Map<String, dynamic> map) {
    return ManagedClusterStorageProfileSnapshotController(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}


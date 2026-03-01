// ignore_for_file: unused_element, unnecessary_cast


/// Snapshot Controller settings for the storage profile.
class ManagedClusterStorageProfileSnapshotControllerResponse {
  /// Whether to enable Snapshot Controller. The default value is true.
  final bool? enabled;

  /// Creates a new [ManagedClusterStorageProfileSnapshotControllerResponse].
  /// [enabled] Whether to enable Snapshot Controller. The default value is true.
  ManagedClusterStorageProfileSnapshotControllerResponse({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory ManagedClusterStorageProfileSnapshotControllerResponse.fromMap(Map<String, dynamic> map) {
    return ManagedClusterStorageProfileSnapshotControllerResponse(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}


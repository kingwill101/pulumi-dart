// ignore_for_file: unused_element, unnecessary_cast


class KubernetesClusterStorageProfile {
  /// Is the Blob CSI driver enabled? Defaults to `false`.
  final bool? blobDriverEnabled;
  /// Is the Disk CSI driver enabled? Defaults to `true`.
  final bool? diskDriverEnabled;
  /// Is the File CSI driver enabled? Defaults to `true`.
  final bool? fileDriverEnabled;
  /// Is the Snapshot Controller enabled? Defaults to `true`.
  final bool? snapshotControllerEnabled;

  /// Creates a new [KubernetesClusterStorageProfile].
  /// [blobDriverEnabled] Is the Blob CSI driver enabled? Defaults to `false`.
  /// [diskDriverEnabled] Is the Disk CSI driver enabled? Defaults to `true`.
  /// [fileDriverEnabled] Is the File CSI driver enabled? Defaults to `true`.
  /// [snapshotControllerEnabled] Is the Snapshot Controller enabled? Defaults to `true`.
  KubernetesClusterStorageProfile({
    this.blobDriverEnabled,
    this.diskDriverEnabled,
    this.fileDriverEnabled,
    this.snapshotControllerEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blobDriverEnabled': ?blobDriverEnabled,
      'diskDriverEnabled': ?diskDriverEnabled,
      'fileDriverEnabled': ?fileDriverEnabled,
      'snapshotControllerEnabled': ?snapshotControllerEnabled,
    };
  }

  factory KubernetesClusterStorageProfile.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterStorageProfile(
      blobDriverEnabled: map['blobDriverEnabled'] == null ? null : map['blobDriverEnabled'] as bool,
      diskDriverEnabled: map['diskDriverEnabled'] == null ? null : map['diskDriverEnabled'] as bool,
      fileDriverEnabled: map['fileDriverEnabled'] == null ? null : map['fileDriverEnabled'] as bool,
      snapshotControllerEnabled: map['snapshotControllerEnabled'] == null ? null : map['snapshotControllerEnabled'] as bool,
    );
  }
}


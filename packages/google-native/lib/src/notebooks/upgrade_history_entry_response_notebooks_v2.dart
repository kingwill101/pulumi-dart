// ignore_for_file: unused_element, unnecessary_cast

/// The entry of VM image upgrade history.
class UpgradeHistoryEntryResponseNotebooksV2 {
  /// Optional. Action. Rolloback or Upgrade.
  final String action;

  /// Optional. The container image before this instance upgrade.
  final String containerImage;

  /// Immutable. The time that this instance upgrade history entry is created.
  final String createTime;

  /// Optional. The framework of this notebook instance.
  final String framework;

  /// Optional. The snapshot of the boot disk of this notebook instance before upgrade.
  final String snapshot;

  /// The state of this instance upgrade history entry.
  final String state;

  /// Optional. Target VM Version, like m63.
  final String targetVersion;

  /// Optional. The version of the notebook instance before this upgrade.
  final String version;

  /// Optional. The VM image before this instance upgrade.
  final String vmImage;

  /// Creates a new [UpgradeHistoryEntryResponseNotebooksV2].
  /// [action] Optional. Action. Rolloback or Upgrade.
  /// [containerImage] Optional. The container image before this instance upgrade.
  /// [createTime] Immutable. The time that this instance upgrade history entry is created.
  /// [framework] Optional. The framework of this notebook instance.
  /// [snapshot] Optional. The snapshot of the boot disk of this notebook instance before upgrade.
  /// [state] The state of this instance upgrade history entry.
  /// [targetVersion] Optional. Target VM Version, like m63.
  /// [version] Optional. The version of the notebook instance before this upgrade.
  /// [vmImage] Optional. The VM image before this instance upgrade.
  UpgradeHistoryEntryResponseNotebooksV2({
    required this.action,
    required this.containerImage,
    required this.createTime,
    required this.framework,
    required this.snapshot,
    required this.state,
    required this.targetVersion,
    required this.version,
    required this.vmImage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'containerImage': containerImage,
      'createTime': createTime,
      'framework': framework,
      'snapshot': snapshot,
      'state': state,
      'targetVersion': targetVersion,
      'version': version,
      'vmImage': vmImage,
    };
  }

  factory UpgradeHistoryEntryResponseNotebooksV2.fromMap(
    Map<String, dynamic> map,
  ) {
    return UpgradeHistoryEntryResponseNotebooksV2(
      action: map['action'] as String,
      containerImage: map['containerImage'] as String,
      createTime: map['createTime'] as String,
      framework: map['framework'] as String,
      snapshot: map['snapshot'] as String,
      state: map['state'] as String,
      targetVersion: map['targetVersion'] as String,
      version: map['version'] as String,
      vmImage: map['vmImage'] as String,
    );
  }
}

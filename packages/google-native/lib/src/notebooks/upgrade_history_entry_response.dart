// ignore_for_file: unused_element, unnecessary_cast

/// The entry of VM image upgrade history.
class UpgradeHistoryEntryResponse {
  /// Action. Rolloback or Upgrade.
  final String action;

  /// The container image before this instance upgrade.
  final String containerImage;

  /// The time that this instance upgrade history entry is created.
  final String createTime;

  /// The framework of this notebook instance.
  final String framework;

  /// The snapshot of the boot disk of this notebook instance before upgrade.
  final String snapshot;

  /// The state of this instance upgrade history entry.
  final String state;

  /// Target VM Image. Format: `ainotebooks-vm/project/image-name/name`.
  final String targetImage;

  /// Target VM Version, like m63.
  final String targetVersion;

  /// The version of the notebook instance before this upgrade.
  final String version;

  /// The VM image before this instance upgrade.
  final String vmImage;

  /// Creates a new [UpgradeHistoryEntryResponse].
  /// [action] Action. Rolloback or Upgrade.
  /// [containerImage] The container image before this instance upgrade.
  /// [createTime] The time that this instance upgrade history entry is created.
  /// [framework] The framework of this notebook instance.
  /// [snapshot] The snapshot of the boot disk of this notebook instance before upgrade.
  /// [state] The state of this instance upgrade history entry.
  /// [targetImage] Target VM Image. Format: `ainotebooks-vm/project/image-name/name`.
  /// [targetVersion] Target VM Version, like m63.
  /// [version] The version of the notebook instance before this upgrade.
  /// [vmImage] The VM image before this instance upgrade.
  UpgradeHistoryEntryResponse({
    required this.action,
    required this.containerImage,
    required this.createTime,
    required this.framework,
    required this.snapshot,
    required this.state,
    required this.targetImage,
    required this.targetVersion,
    required this.version,
    required this.vmImage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['action'] = action;
    map['containerImage'] = containerImage;
    map['createTime'] = createTime;
    map['framework'] = framework;
    map['snapshot'] = snapshot;
    map['state'] = state;
    map['targetImage'] = targetImage;
    map['targetVersion'] = targetVersion;
    map['version'] = version;
    map['vmImage'] = vmImage;
    return map;
  }

  factory UpgradeHistoryEntryResponse.fromMap(Map<String, dynamic> map) {
    return UpgradeHistoryEntryResponse(
      action: map['action'] as String,
      containerImage: map['containerImage'] as String,
      createTime: map['createTime'] as String,
      framework: map['framework'] as String,
      snapshot: map['snapshot'] as String,
      state: map['state'] as String,
      targetImage: map['targetImage'] as String,
      targetVersion: map['targetVersion'] as String,
      version: map['version'] as String,
      vmImage: map['vmImage'] as String,
    );
  }
}

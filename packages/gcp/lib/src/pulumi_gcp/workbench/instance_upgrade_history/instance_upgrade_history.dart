// ignore_for_file: unused_element, unnecessary_cast

class InstanceUpgradeHistory {
  /// Optional. Action. Rolloback or Upgrade.
  final String? action;

  /// Optional. The container image before this instance upgrade.
  final String? containerImage;

  /// An RFC3339 timestamp in UTC time. This in the format of yyyy-MM-ddTHH:mm:ss.SSSZ.
  /// The milliseconds portion (".SSS") is optional.
  final String? createTime;

  /// Optional. The framework of this workbench instance.
  final String? framework;

  /// Optional. The snapshot of the boot disk of this workbench instance before upgrade.
  final String? snapshot;

  /// (Output)
  /// Output only. The state of this instance upgrade history entry.
  final String? state;

  /// Optional. Target VM Version, like m63.
  final String? targetVersion;

  /// Optional. The version of the workbench instance before this upgrade.
  final String? version;

  /// Optional. The VM image before this instance upgrade.
  final String? vmImage;

  InstanceUpgradeHistory({
    this.action,
    this.containerImage,
    this.createTime,
    this.framework,
    this.snapshot,
    this.state,
    this.targetVersion,
    this.version,
    this.vmImage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final actionValue = action;
    if (actionValue != null) {
      map['action'] = actionValue;
    }
    final containerImageValue = containerImage;
    if (containerImageValue != null) {
      map['containerImage'] = containerImageValue;
    }
    final createTimeValue = createTime;
    if (createTimeValue != null) {
      map['createTime'] = createTimeValue;
    }
    final frameworkValue = framework;
    if (frameworkValue != null) {
      map['framework'] = frameworkValue;
    }
    final snapshotValue = snapshot;
    if (snapshotValue != null) {
      map['snapshot'] = snapshotValue;
    }
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = stateValue;
    }
    final targetVersionValue = targetVersion;
    if (targetVersionValue != null) {
      map['targetVersion'] = targetVersionValue;
    }
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue;
    }
    final vmImageValue = vmImage;
    if (vmImageValue != null) {
      map['vmImage'] = vmImageValue;
    }
    return map;
  }

  factory InstanceUpgradeHistory.fromMap(Map<String, dynamic> map) {
    return InstanceUpgradeHistory(
      action: map['action'] == null ? null : map['action'] as String,
      containerImage: map['containerImage'] == null
          ? null
          : map['containerImage'] as String,
      createTime:
          map['createTime'] == null ? null : map['createTime'] as String,
      framework: map['framework'] == null ? null : map['framework'] as String,
      snapshot: map['snapshot'] == null ? null : map['snapshot'] as String,
      state: map['state'] == null ? null : map['state'] as String,
      targetVersion:
          map['targetVersion'] == null ? null : map['targetVersion'] as String,
      version: map['version'] == null ? null : map['version'] as String,
      vmImage: map['vmImage'] == null ? null : map['vmImage'] as String,
    );
  }
}

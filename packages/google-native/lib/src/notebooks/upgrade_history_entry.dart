// ignore_for_file: unused_element, unnecessary_cast

import 'upgrade_history_entry_action.dart';
import 'upgrade_history_entry_state.dart';

/// The entry of VM image upgrade history.
class UpgradeHistoryEntry {
  /// Action. Rolloback or Upgrade.
  final UpgradeHistoryEntryAction? action;
  /// The container image before this instance upgrade.
  final String? containerImage;
  /// The time that this instance upgrade history entry is created.
  final String? createTime;
  /// The framework of this notebook instance.
  final String? framework;
  /// The snapshot of the boot disk of this notebook instance before upgrade.
  final String? snapshot;
  /// The state of this instance upgrade history entry.
  final UpgradeHistoryEntryState? state;
  /// Target VM Image. Format: `ainotebooks-vm/project/image-name/name`.
  final String? targetImage;
  /// Target VM Version, like m63.
  final String? targetVersion;
  /// The version of the notebook instance before this upgrade.
  final String? version;
  /// The VM image before this instance upgrade.
  final String? vmImage;

  /// Creates a new [UpgradeHistoryEntry].
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
  UpgradeHistoryEntry({
    this.action,
    this.containerImage,
    this.createTime,
    this.framework,
    this.snapshot,
    this.state,
    this.targetImage,
    this.targetVersion,
    this.version,
    this.vmImage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action == null ? null : action!.value,
      'containerImage': ?containerImage,
      'createTime': ?createTime,
      'framework': ?framework,
      'snapshot': ?snapshot,
      'state': ?state == null ? null : state!.value,
      'targetImage': ?targetImage,
      'targetVersion': ?targetVersion,
      'version': ?version,
      'vmImage': ?vmImage,
    };
  }

  factory UpgradeHistoryEntry.fromMap(Map<String, dynamic> map) {
    return UpgradeHistoryEntry(
      action: map['action'] == null ? null : UpgradeHistoryEntryAction.fromValue(map['action'] as String),
      containerImage: map['containerImage'] == null ? null : map['containerImage'] as String,
      createTime: map['createTime'] == null ? null : map['createTime'] as String,
      framework: map['framework'] == null ? null : map['framework'] as String,
      snapshot: map['snapshot'] == null ? null : map['snapshot'] as String,
      state: map['state'] == null ? null : UpgradeHistoryEntryState.fromValue(map['state'] as String),
      targetImage: map['targetImage'] == null ? null : map['targetImage'] as String,
      targetVersion: map['targetVersion'] == null ? null : map['targetVersion'] as String,
      version: map['version'] == null ? null : map['version'] as String,
      vmImage: map['vmImage'] == null ? null : map['vmImage'] as String,
    );
  }
}


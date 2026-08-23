// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'absolute_delete_option.dart';
import 'data_store_info_base.dart';
import 'target_copy_setting.dart';

/// Source LifeCycle
class SourceLifeCycle {
  /// Delete Option
  final pulumi.Input<AbsoluteDeleteOption> deleteAfter;
  /// DataStoreInfo base
  final pulumi.Input<DataStoreInfoBase> sourceDataStore;
  final pulumi.Input<List<TargetCopySetting>>? targetDataStoreCopySettings;

  /// Creates a new [SourceLifeCycle].
  /// [deleteAfter] Delete Option
  /// [sourceDataStore] DataStoreInfo base
  /// [targetDataStoreCopySettings] Optional.
  const SourceLifeCycle({
    required this.deleteAfter,
    required this.sourceDataStore,
    this.targetDataStoreCopySettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteAfter': pulumi.Input.mapInputValue<AbsoluteDeleteOption, Map<String, dynamic>>(deleteAfter, (value) => value.toMap()),
      'sourceDataStore': pulumi.Input.mapInputValue<DataStoreInfoBase, Map<String, dynamic>>(sourceDataStore, (value) => value.toMap()),
      'targetDataStoreCopySettings': ?pulumi.Input.mapOptionalInputValue<List<TargetCopySetting>, List<Map<String, dynamic>>>(targetDataStoreCopySettings, (value) => pulumi.Input.encodeList<TargetCopySetting, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SourceLifeCycle.fromMap(Map<String, dynamic> map) {
    return SourceLifeCycle(
      deleteAfter: pulumi.Input.fromValue(AbsoluteDeleteOption.fromMap((map['deleteAfter']! as Map).cast<String, dynamic>())),
      sourceDataStore: pulumi.Input.fromValue(DataStoreInfoBase.fromMap((map['sourceDataStore']! as Map).cast<String, dynamic>())),
      targetDataStoreCopySettings: (() { final guardedValue = map['targetDataStoreCopySettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TargetCopySetting>(guardedValue, (value) => TargetCopySetting.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

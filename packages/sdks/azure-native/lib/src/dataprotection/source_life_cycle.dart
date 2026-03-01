// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'absolute_delete_option.dart';
import 'data_store_info_base.dart';
import 'target_copy_setting.dart';

/// Source LifeCycle
class SourceLifeCycle {
  /// Delete Option
  final AbsoluteDeleteOption deleteAfter;
  /// DataStoreInfo base
  final DataStoreInfoBase sourceDataStore;
  final List<TargetCopySetting>? targetDataStoreCopySettings;

  /// Creates a new [SourceLifeCycle].
  /// [deleteAfter] Delete Option
  /// [sourceDataStore] DataStoreInfo base
  /// [targetDataStoreCopySettings] Optional.
  SourceLifeCycle({
    required this.deleteAfter,
    required this.sourceDataStore,
    this.targetDataStoreCopySettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteAfter': deleteAfter.toMap(),
      'sourceDataStore': sourceDataStore.toMap(),
      'targetDataStoreCopySettings': ?targetDataStoreCopySettings == null ? null : pulumi.Input.encodeList<TargetCopySetting, Map<String, dynamic>>(targetDataStoreCopySettings!, (value) => value.toMap()),
    };
  }

  factory SourceLifeCycle.fromMap(Map<String, dynamic> map) {
    return SourceLifeCycle(
      deleteAfter: AbsoluteDeleteOption.fromMap((map['deleteAfter'] as Map).cast<String, dynamic>()),
      sourceDataStore: DataStoreInfoBase.fromMap((map['sourceDataStore'] as Map).cast<String, dynamic>()),
      targetDataStoreCopySettings: map['targetDataStoreCopySettings'] == null ? null : pulumi.Input.decodeList<TargetCopySetting>(map['targetDataStoreCopySettings'], (value) => TargetCopySetting.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}


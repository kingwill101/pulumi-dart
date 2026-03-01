// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'absolute_delete_option_response.dart';
import 'data_store_info_base_response.dart';
import 'target_copy_setting_response.dart';

/// Source LifeCycle
class SourceLifeCycleResponse {
  /// Delete Option
  final AbsoluteDeleteOptionResponse deleteAfter;
  /// DataStoreInfo base
  final DataStoreInfoBaseResponse sourceDataStore;
  final List<TargetCopySettingResponse>? targetDataStoreCopySettings;

  /// Creates a new [SourceLifeCycleResponse].
  /// [deleteAfter] Delete Option
  /// [sourceDataStore] DataStoreInfo base
  /// [targetDataStoreCopySettings] Optional.
  SourceLifeCycleResponse({
    required this.deleteAfter,
    required this.sourceDataStore,
    this.targetDataStoreCopySettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteAfter': deleteAfter.toMap(),
      'sourceDataStore': sourceDataStore.toMap(),
      'targetDataStoreCopySettings': ?targetDataStoreCopySettings == null ? null : pulumi.Input.encodeList<TargetCopySettingResponse, Map<String, dynamic>>(targetDataStoreCopySettings!, (value) => value.toMap()),
    };
  }

  factory SourceLifeCycleResponse.fromMap(Map<String, dynamic> map) {
    return SourceLifeCycleResponse(
      deleteAfter: AbsoluteDeleteOptionResponse.fromMap((map['deleteAfter'] as Map).cast<String, dynamic>()),
      sourceDataStore: DataStoreInfoBaseResponse.fromMap((map['sourceDataStore'] as Map).cast<String, dynamic>()),
      targetDataStoreCopySettings: map['targetDataStoreCopySettings'] == null ? null : pulumi.Input.decodeList<TargetCopySettingResponse>(map['targetDataStoreCopySettings'], (value) => TargetCopySettingResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}


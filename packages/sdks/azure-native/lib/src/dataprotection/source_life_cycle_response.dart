// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'absolute_delete_option_response.dart';
import 'data_store_info_base_response.dart';
import 'target_copy_setting_response.dart';

/// Source LifeCycle
class SourceLifeCycleResponse {
  /// Delete Option
  final pulumi.Input<AbsoluteDeleteOptionResponse> deleteAfter;
  /// DataStoreInfo base
  final pulumi.Input<DataStoreInfoBaseResponse> sourceDataStore;
  final pulumi.Input<List<TargetCopySettingResponse>>? targetDataStoreCopySettings;

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
      'deleteAfter': pulumi.Input.mapInputValue<AbsoluteDeleteOptionResponse, Map<String, dynamic>>(deleteAfter, (value) => value.toMap()),
      'sourceDataStore': pulumi.Input.mapInputValue<DataStoreInfoBaseResponse, Map<String, dynamic>>(sourceDataStore, (value) => value.toMap()),
      'targetDataStoreCopySettings': ?pulumi.Input.mapOptionalInputValue<List<TargetCopySettingResponse>, List<Map<String, dynamic>>>(targetDataStoreCopySettings, (value) => pulumi.Input.encodeList<TargetCopySettingResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SourceLifeCycleResponse.fromMap(Map<String, dynamic> map) {
    return SourceLifeCycleResponse(
      deleteAfter: (AbsoluteDeleteOptionResponse.fromMap((map['deleteAfter'] as Map).cast<String, dynamic>())).input(),
      sourceDataStore: (DataStoreInfoBaseResponse.fromMap((map['sourceDataStore'] as Map).cast<String, dynamic>())).input(),
      targetDataStoreCopySettings: map['targetDataStoreCopySettings'] == null ? null : (pulumi.Input.decodeList<TargetCopySettingResponse>(map['targetDataStoreCopySettings']!, (value) => TargetCopySettingResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}


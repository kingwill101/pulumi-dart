// ignore_for_file: unused_element, unnecessary_cast

import 'copy_on_expiry_option_response.dart';
import 'data_store_info_base_response.dart';

/// Target copy settings
class TargetCopySettingResponse {
  /// It can be CustomCopyOption or ImmediateCopyOption.
  final CopyOnExpiryOptionResponse copyAfter;
  /// Info of target datastore
  final DataStoreInfoBaseResponse dataStore;

  /// Creates a new [TargetCopySettingResponse].
  /// [copyAfter] It can be CustomCopyOption or ImmediateCopyOption.
  /// [dataStore] Info of target datastore
  TargetCopySettingResponse({
    required this.copyAfter,
    required this.dataStore,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'copyAfter': copyAfter.toMap(),
      'dataStore': dataStore.toMap(),
    };
  }

  factory TargetCopySettingResponse.fromMap(Map<String, dynamic> map) {
    return TargetCopySettingResponse(
      copyAfter: CopyOnExpiryOptionResponse.fromMap((map['copyAfter'] as Map).cast<String, dynamic>()),
      dataStore: DataStoreInfoBaseResponse.fromMap((map['dataStore'] as Map).cast<String, dynamic>()),
    );
  }
}


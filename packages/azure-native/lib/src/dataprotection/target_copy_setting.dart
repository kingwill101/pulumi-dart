// ignore_for_file: unused_element, unnecessary_cast

import 'copy_on_expiry_option.dart';
import 'data_store_info_base.dart';

/// Target copy settings
class TargetCopySetting {
  /// It can be CustomCopyOption or ImmediateCopyOption.
  final CopyOnExpiryOption copyAfter;
  /// Info of target datastore
  final DataStoreInfoBase dataStore;

  /// Creates a new [TargetCopySetting].
  /// [copyAfter] It can be CustomCopyOption or ImmediateCopyOption.
  /// [dataStore] Info of target datastore
  TargetCopySetting({
    required this.copyAfter,
    required this.dataStore,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'copyAfter': copyAfter.toMap(),
      'dataStore': dataStore.toMap(),
    };
  }

  factory TargetCopySetting.fromMap(Map<String, dynamic> map) {
    return TargetCopySetting(
      copyAfter: CopyOnExpiryOption.fromMap((map['copyAfter'] as Map).cast<String, dynamic>()),
      dataStore: DataStoreInfoBase.fromMap((map['dataStore'] as Map).cast<String, dynamic>()),
    );
  }
}


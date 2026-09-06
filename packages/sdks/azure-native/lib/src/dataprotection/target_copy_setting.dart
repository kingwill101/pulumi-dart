// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_store_info_base.dart';

/// Target copy settings
class TargetCopySetting {
  /// It can be CustomCopyOption or ImmediateCopyOption.
  final pulumi.Input<dynamic> copyAfter;
  /// Info of target datastore
  final pulumi.Input<DataStoreInfoBase> dataStore;

  /// Creates a new [TargetCopySetting].
  /// [copyAfter] It can be CustomCopyOption or ImmediateCopyOption.
  /// [dataStore] Info of target datastore
  const TargetCopySetting({
    required this.copyAfter,
    required this.dataStore,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'copyAfter': copyAfter,
      'dataStore': pulumi.Input.mapInputValue<DataStoreInfoBase, Map<String, dynamic>>(dataStore, (value) => value.toMap()),
    };
  }

  factory TargetCopySetting.fromMap(Map<String, dynamic> map) {
    return TargetCopySetting(
      copyAfter: pulumi.Input.fromValue(map['copyAfter']),
      dataStore: pulumi.Input.fromValue(DataStoreInfoBase.fromMap((map['dataStore']! as Map).cast<String, dynamic>())),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'copy_on_expiry_option.dart';
import 'data_store_info_base.dart';

/// Target copy settings
class TargetCopySetting {
  /// It can be CustomCopyOption or ImmediateCopyOption.
  final pulumi.Input<CopyOnExpiryOption> copyAfter;

  /// Info of target datastore
  final pulumi.Input<DataStoreInfoBase> dataStore;

  /// Creates a new [TargetCopySetting].
  /// [copyAfter] It can be CustomCopyOption or ImmediateCopyOption.
  /// [dataStore] Info of target datastore
  TargetCopySetting({required this.copyAfter, required this.dataStore});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'copyAfter':
          pulumi.Input.mapInputValue<CopyOnExpiryOption, Map<String, dynamic>>(
            copyAfter,
            (value) => value.toMap(),
          ),
      'dataStore':
          pulumi.Input.mapInputValue<DataStoreInfoBase, Map<String, dynamic>>(
            dataStore,
            (value) => value.toMap(),
          ),
    };
  }

  factory TargetCopySetting.fromMap(Map<String, dynamic> map) {
    return TargetCopySetting(
      copyAfter: pulumi.Input.fromValue(
        CopyOnExpiryOption.fromMap(
          (map['copyAfter']! as Map).cast<String, dynamic>(),
        ),
      ),
      dataStore: pulumi.Input.fromValue(
        DataStoreInfoBase.fromMap(
          (map['dataStore']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}

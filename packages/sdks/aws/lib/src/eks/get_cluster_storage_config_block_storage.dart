// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterStorageConfigBlockStorage {
  /// Whether zonal shift is enabled.
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetClusterStorageConfigBlockStorage].
  /// [enabled] Whether zonal shift is enabled.
  GetClusterStorageConfigBlockStorage({required this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': enabled};
  }

  factory GetClusterStorageConfigBlockStorage.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetClusterStorageConfigBlockStorage(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}

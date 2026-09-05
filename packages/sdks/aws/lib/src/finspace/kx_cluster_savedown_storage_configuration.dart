// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KxClusterSavedownStorageConfiguration {
  /// Size of temporary storage in gigabytes. Must be between 10 and 16000.
  final pulumi.Input<int?>? size;
  /// Type of writeable storage space for temporarily storing your savedown data. Valid value is `SDS01`, which represents 3000 IOPS and io2 ebs volume type.
  final pulumi.Input<String?>? type;
  /// Name of the kdb volume that you want to use as writeable save-down storage for clusters.
  final pulumi.Input<String?>? volumeName;

  /// Creates a new [KxClusterSavedownStorageConfiguration].
  /// [size] Size of temporary storage in gigabytes. Must be between 10 and 16000.
  /// [type] Type of writeable storage space for temporarily storing your savedown data. Valid value is `SDS01`, which represents 3000 IOPS and io2 ebs volume type.
  /// [volumeName] Name of the kdb volume that you want to use as writeable save-down storage for clusters.
  const KxClusterSavedownStorageConfiguration({
    this.size,
    this.type,
    this.volumeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'size': ?size,
      'type': ?type,
      'volumeName': ?volumeName,
    };
  }

  factory KxClusterSavedownStorageConfiguration.fromMap(Map<String, dynamic> map) {
    return KxClusterSavedownStorageConfiguration(
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      volumeName: (() { final guardedValue = map['volumeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

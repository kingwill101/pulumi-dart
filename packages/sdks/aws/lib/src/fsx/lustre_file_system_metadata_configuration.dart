// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LustreFileSystemMetadataConfiguration {
  /// Amount of IOPS provisioned for metadata. This parameter should only be used when the mode is set to `USER_PROVISIONED`. Valid Values are `1500`,`3000`,`6000` and `12000` through `192000` in increments of `12000`. Valid values for `INTELLIGENT_TIERING` storage type are `6000` or `12000`.
  final pulumi.Input<int?>? iops;
  /// Mode for the metadata configuration of the file system. Valid values are `AUTOMATIC`, and `USER_PROVISIONED`. Must be set to `USER_PROVISIONED` for `INTELLIGENT_TIERING` storage type.
  ///
  /// &gt; **WARNING:** Updating the value of `iops` from a higher to a lower value will force a recreation of the resource. Any data on the file system will be lost when recreating.
  final pulumi.Input<String?>? mode;

  /// Creates a new [LustreFileSystemMetadataConfiguration].
  /// [iops] Amount of IOPS provisioned for metadata. This parameter should only be used when the mode is set to `USER_PROVISIONED`. Valid Values are `1500`,`3000`,`6000` and `12000` through `192000` in increments of `12000`. Valid values for `INTELLIGENT_TIERING` storage type are `6000` or `12000`.
  /// [mode] Mode for the metadata configuration of the file system. Valid values are `AUTOMATIC`, and `USER_PROVISIONED`. Must be set to `USER_PROVISIONED` for `INTELLIGENT_TIERING` storage type.
  const LustreFileSystemMetadataConfiguration({
    this.iops,
    this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iops': ?iops,
      'mode': ?mode,
    };
  }

  factory LustreFileSystemMetadataConfiguration.fromMap(Map<String, dynamic> map) {
    return LustreFileSystemMetadataConfiguration(
      iops: (() { final guardedValue = map['iops']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

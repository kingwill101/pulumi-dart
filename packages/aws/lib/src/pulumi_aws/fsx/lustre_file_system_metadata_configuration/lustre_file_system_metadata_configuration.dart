// ignore_for_file: unused_element, unnecessary_cast

class LustreFileSystemMetadataConfiguration {
  /// Amount of IOPS provisioned for metadata. This parameter should only be used when the mode is set to `USER_PROVISIONED`. Valid Values are `1500`,`3000`,`6000` and `12000` through `192000` in increments of `12000`. Valid values for `INTELLIGENT_TIERING` storage type are `6000` or `12000`.
  final int? iops;

  /// Mode for the metadata configuration of the file system. Valid values are `AUTOMATIC`, and `USER_PROVISIONED`. Must be set to `USER_PROVISIONED` for `INTELLIGENT_TIERING` storage type.
  ///
  /// !> **WARNING:** Updating the value of `iops` from a higher to a lower value will force a recreation of the resource. Any data on the file system will be lost when recreating.
  final String? mode;

  LustreFileSystemMetadataConfiguration({
    this.iops,
    this.mode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final iopsValue = iops;
    if (iopsValue != null) {
      map['iops'] = iopsValue;
    }
    final modeValue = mode;
    if (modeValue != null) {
      map['mode'] = modeValue;
    }
    return map;
  }

  factory LustreFileSystemMetadataConfiguration.fromMap(
      Map<String, dynamic> map) {
    return LustreFileSystemMetadataConfiguration(
      iops: map['iops'] == null ? null : map['iops'] as int,
      mode: map['mode'] == null ? null : map['mode'] as String,
    );
  }
}

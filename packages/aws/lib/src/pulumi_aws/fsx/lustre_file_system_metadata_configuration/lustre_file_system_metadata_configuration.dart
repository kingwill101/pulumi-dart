// ignore_for_file: unused_element, unnecessary_cast

class LustreFileSystemMetadataConfiguration {
  /// Amount of IOPS provisioned for metadata. This parameter should only be used when the mode is set to `USER_PROVISIONED`. Valid Values are <span pulumi-lang-nodejs="`1500`" pulumi-lang-dotnet="`1500`" pulumi-lang-go="`1500`" pulumi-lang-python="`1500`" pulumi-lang-yaml="`1500`" pulumi-lang-java="`1500`">`1500`</span>,<span pulumi-lang-nodejs="`3000`" pulumi-lang-dotnet="`3000`" pulumi-lang-go="`3000`" pulumi-lang-python="`3000`" pulumi-lang-yaml="`3000`" pulumi-lang-java="`3000`">`3000`</span>,<span pulumi-lang-nodejs="`6000`" pulumi-lang-dotnet="`6000`" pulumi-lang-go="`6000`" pulumi-lang-python="`6000`" pulumi-lang-yaml="`6000`" pulumi-lang-java="`6000`">`6000`</span> and <span pulumi-lang-nodejs="`12000`" pulumi-lang-dotnet="`12000`" pulumi-lang-go="`12000`" pulumi-lang-python="`12000`" pulumi-lang-yaml="`12000`" pulumi-lang-java="`12000`">`12000`</span> through <span pulumi-lang-nodejs="`192000`" pulumi-lang-dotnet="`192000`" pulumi-lang-go="`192000`" pulumi-lang-python="`192000`" pulumi-lang-yaml="`192000`" pulumi-lang-java="`192000`">`192000`</span> in increments of <span pulumi-lang-nodejs="`12000`" pulumi-lang-dotnet="`12000`" pulumi-lang-go="`12000`" pulumi-lang-python="`12000`" pulumi-lang-yaml="`12000`" pulumi-lang-java="`12000`">`12000`</span>. Valid values for `INTELLIGENT_TIERING` storage type are <span pulumi-lang-nodejs="`6000`" pulumi-lang-dotnet="`6000`" pulumi-lang-go="`6000`" pulumi-lang-python="`6000`" pulumi-lang-yaml="`6000`" pulumi-lang-java="`6000`">`6000`</span> or <span pulumi-lang-nodejs="`12000`" pulumi-lang-dotnet="`12000`" pulumi-lang-go="`12000`" pulumi-lang-python="`12000`" pulumi-lang-yaml="`12000`" pulumi-lang-java="`12000`">`12000`</span>.
  final int? iops;

  /// Mode for the metadata configuration of the file system. Valid values are `AUTOMATIC`, and `USER_PROVISIONED`. Must be set to `USER_PROVISIONED` for `INTELLIGENT_TIERING` storage type.
  ///
  /// !> **WARNING:** Updating the value of <span pulumi-lang-nodejs="`iops`" pulumi-lang-dotnet="`Iops`" pulumi-lang-go="`iops`" pulumi-lang-python="`iops`" pulumi-lang-yaml="`iops`" pulumi-lang-java="`iops`">`iops`</span> from a higher to a lower value will force a recreation of the resource. Any data on the file system will be lost when recreating.
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

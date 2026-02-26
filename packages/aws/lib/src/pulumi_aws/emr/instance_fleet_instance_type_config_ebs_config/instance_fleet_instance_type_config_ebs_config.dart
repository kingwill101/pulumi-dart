// ignore_for_file: unused_element, unnecessary_cast

class InstanceFleetInstanceTypeConfigEbsConfig {
  /// The number of I/O operations per second (IOPS) that the volume supports
  final int? iops;

  /// The volume size, in gibibytes (GiB).
  final int size;

  /// The volume type. Valid options are <span pulumi-lang-nodejs="`gp2`" pulumi-lang-dotnet="`Gp2`" pulumi-lang-go="`gp2`" pulumi-lang-python="`gp2`" pulumi-lang-yaml="`gp2`" pulumi-lang-java="`gp2`">`gp2`</span>, <span pulumi-lang-nodejs="`io1`" pulumi-lang-dotnet="`Io1`" pulumi-lang-go="`io1`" pulumi-lang-python="`io1`" pulumi-lang-yaml="`io1`" pulumi-lang-java="`io1`">`io1`</span>, <span pulumi-lang-nodejs="`standard`" pulumi-lang-dotnet="`Standard`" pulumi-lang-go="`standard`" pulumi-lang-python="`standard`" pulumi-lang-yaml="`standard`" pulumi-lang-java="`standard`">`standard`</span> and <span pulumi-lang-nodejs="`st1`" pulumi-lang-dotnet="`St1`" pulumi-lang-go="`st1`" pulumi-lang-python="`st1`" pulumi-lang-yaml="`st1`" pulumi-lang-java="`st1`">`st1`</span>. See [EBS Volume Types](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html).
  final String type;

  /// The number of EBS volumes with this configuration to attach to each EC2 instance in the instance group (default is 1)
  final int? volumesPerInstance;

  InstanceFleetInstanceTypeConfigEbsConfig({
    this.iops,
    required this.size,
    required this.type,
    this.volumesPerInstance,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final iopsValue = iops;
    if (iopsValue != null) {
      map['iops'] = iopsValue;
    }
    map['size'] = size;
    map['type'] = type;
    final volumesPerInstanceValue = volumesPerInstance;
    if (volumesPerInstanceValue != null) {
      map['volumesPerInstance'] = volumesPerInstanceValue;
    }
    return map;
  }

  factory InstanceFleetInstanceTypeConfigEbsConfig.fromMap(
      Map<String, dynamic> map) {
    return InstanceFleetInstanceTypeConfigEbsConfig(
      iops: map['iops'] == null ? null : map['iops'] as int,
      size: map['size'] as int,
      type: map['type'] as String,
      volumesPerInstance: map['volumesPerInstance'] == null
          ? null
          : map['volumesPerInstance'] as int,
    );
  }
}

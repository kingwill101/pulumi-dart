// ignore_for_file: unused_element, unnecessary_cast


class GetDdosBgpInstancesInstance {
  /// The instance's elastic defend bandwidth.
  final int bandwidth;
  /// The instance's base defend bandwidth.
  final int baseBandwidth;
  /// The instance's id.
  final String id;
  /// The instance's count of ip config.
  final int ipCount;
  /// The instance's IP version.
  final String ipType;
  /// The instance's remark.
  final String name;
  /// Normal defend bandwidth of the instance. The unit is Gbps.
  final int normalBandwidth;
  /// The instance's region.
  final String region;
  /// The instance's type.
  final String type;

  /// Creates a new [GetDdosBgpInstancesInstance].
  /// [bandwidth] The instance's elastic defend bandwidth.
  /// [baseBandwidth] The instance's base defend bandwidth.
  /// [id] The instance's id.
  /// [ipCount] The instance's count of ip config.
  /// [ipType] The instance's IP version.
  /// [name] The instance's remark.
  /// [normalBandwidth] Normal defend bandwidth of the instance. The unit is Gbps.
  /// [region] The instance's region.
  /// [type] The instance's type.
  GetDdosBgpInstancesInstance({
    required this.bandwidth,
    required this.baseBandwidth,
    required this.id,
    required this.ipCount,
    required this.ipType,
    required this.name,
    required this.normalBandwidth,
    required this.region,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidth': bandwidth,
      'baseBandwidth': baseBandwidth,
      'id': id,
      'ipCount': ipCount,
      'ipType': ipType,
      'name': name,
      'normalBandwidth': normalBandwidth,
      'region': region,
      'type': type,
    };
  }

  factory GetDdosBgpInstancesInstance.fromMap(Map<String, dynamic> map) {
    return GetDdosBgpInstancesInstance(
      bandwidth: map['bandwidth'] as int,
      baseBandwidth: map['baseBandwidth'] as int,
      id: map['id'] as String,
      ipCount: map['ipCount'] as int,
      ipType: map['ipType'] as String,
      name: map['name'] as String,
      normalBandwidth: map['normalBandwidth'] as int,
      region: map['region'] as String,
      type: map['type'] as String,
    );
  }
}


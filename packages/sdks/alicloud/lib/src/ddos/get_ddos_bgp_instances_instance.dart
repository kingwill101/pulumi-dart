// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDdosBgpInstancesInstance {
  /// The instance's elastic defend bandwidth.
  final pulumi.Input<int> bandwidth;
  /// The instance's base defend bandwidth.
  final pulumi.Input<int> baseBandwidth;
  /// The instance's id.
  final pulumi.Input<String> id;
  /// The instance's count of ip config.
  final pulumi.Input<int> ipCount;
  /// The instance's IP version.
  final pulumi.Input<String> ipType;
  /// The instance's remark.
  final pulumi.Input<String> name;
  /// Normal defend bandwidth of the instance. The unit is Gbps.
  final pulumi.Input<int> normalBandwidth;
  /// The instance's region.
  final pulumi.Input<String> region;
  /// The instance's type.
  final pulumi.Input<String> type;

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
      bandwidth: (map['bandwidth'] as int).input(),
      baseBandwidth: (map['baseBandwidth'] as int).input(),
      id: (map['id'] as String).input(),
      ipCount: (map['ipCount'] as int).input(),
      ipType: (map['ipType'] as String).input(),
      name: (map['name'] as String).input(),
      normalBandwidth: (map['normalBandwidth'] as int).input(),
      region: (map['region'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}


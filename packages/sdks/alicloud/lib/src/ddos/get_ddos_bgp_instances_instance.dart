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
      bandwidth: pulumi.Input.fromValue(map['bandwidth'] as int),
      baseBandwidth: pulumi.Input.fromValue(map['baseBandwidth'] as int),
      id: pulumi.Input.fromValue(map['id'] as String),
      ipCount: pulumi.Input.fromValue(map['ipCount'] as int),
      ipType: pulumi.Input.fromValue(map['ipType'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      normalBandwidth: pulumi.Input.fromValue(map['normalBandwidth'] as int),
      region: pulumi.Input.fromValue(map['region'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}


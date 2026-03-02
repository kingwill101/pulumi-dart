// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NodePoolScalingConfig {
  /// Peak EIP bandwidth. Its valid value range [1~500] in Mbps. It works if `is_bond_eip=true`. Default to `5`.
  final pulumi.Input<int>? eipBandwidth;
  /// EIP billing type. `PayByBandwidth`: Charged at fixed bandwidth. `PayByTraffic`: Billed as used traffic. Default: `PayByBandwidth`. It works if `is_bond_eip=true`, conflict with `internet_charge_type`. EIP and public network IP can only choose one.
  final pulumi.Input<String>? eipInternetChargeType;
  /// Whether to enable automatic scaling. Value:
  final pulumi.Input<bool>? enable;
  /// Whether to bind EIP for an instance. Default: `false`.
  final pulumi.Input<bool>? isBondEip;
  /// Max number of instances in a auto scaling group, its valid value range [0~1000]. `max_size` has to be greater than `min_size`.
  final pulumi.Input<int>? maxSize;
  /// Min number of instances in a auto scaling group, its valid value range [0~1000].
  final pulumi.Input<int>? minSize;
  /// Instance classification, not required. Vaild value: `cpu`, `gpu`, `gpushare` and `spot`. Default: `cpu`. The actual instance type is determined by `instance_types`.
  final pulumi.Input<String>? type;

  /// Creates a new [NodePoolScalingConfig].
  /// [eipBandwidth] Peak EIP bandwidth. Its valid value range [1~500] in Mbps. It works if `is_bond_eip=true`. Default to `5`.
  /// [eipInternetChargeType] EIP billing type. `PayByBandwidth`: Charged at fixed bandwidth. `PayByTraffic`: Billed as used traffic. Default: `PayByBandwidth`. It works if `is_bond_eip=true`, conflict with `internet_charge_type`. EIP and public network IP can only choose one.
  /// [enable] Whether to enable automatic scaling. Value:
  /// [isBondEip] Whether to bind EIP for an instance. Default: `false`.
  /// [maxSize] Max number of instances in a auto scaling group, its valid value range [0~1000]. `max_size` has to be greater than `min_size`.
  /// [minSize] Min number of instances in a auto scaling group, its valid value range [0~1000].
  /// [type] Instance classification, not required. Vaild value: `cpu`, `gpu`, `gpushare` and `spot`. Default: `cpu`. The actual instance type is determined by `instance_types`.
  NodePoolScalingConfig({
    this.eipBandwidth,
    this.eipInternetChargeType,
    this.enable,
    this.isBondEip,
    this.maxSize,
    this.minSize,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eipBandwidth': ?eipBandwidth,
      'eipInternetChargeType': ?eipInternetChargeType,
      'enable': ?enable,
      'isBondEip': ?isBondEip,
      'maxSize': ?maxSize,
      'minSize': ?minSize,
      'type': ?type,
    };
  }

  factory NodePoolScalingConfig.fromMap(Map<String, dynamic> map) {
    return NodePoolScalingConfig(
      eipBandwidth: map['eipBandwidth'] == null ? null : (map['eipBandwidth']! as int).input(),
      eipInternetChargeType: map['eipInternetChargeType'] == null ? null : (map['eipInternetChargeType']! as String).input(),
      enable: map['enable'] == null ? null : (map['enable']! as bool).input(),
      isBondEip: map['isBondEip'] == null ? null : (map['isBondEip']! as bool).input(),
      maxSize: map['maxSize'] == null ? null : (map['maxSize']! as int).input(),
      minSize: map['minSize'] == null ? null : (map['minSize']! as int).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}


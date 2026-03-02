// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DdosCooInstance resources.
class DdosCooInstanceState {
  /// The IP version of the IP address. Default value: `Ipv4`. Valid values: `Ipv4`, `Ipv6`. **NOTE:** `address_type` is valid only when `product_type` is set to `ddoscoo` or `ddoscoo_intl`.
  final pulumi.Input<String>? addressType;
  /// Elastic defend bandwidth of the instance. This value must be larger than the base defend bandwidth. Valid values: `30`, `60`, `100`, `300`, `400`, `500`, `600`. The unit is Gbps. Only support upgrade. **NOTE:** `bandwidth` is valid only when `product_type` is set to `ddoscoo` or `ddoscoo_intl`.
  final pulumi.Input<String>? bandwidth;
  /// The mitigation plan of the instance. Valid values:
  final pulumi.Input<String>? bandwidthMode;
  /// Base defend bandwidth of the instance. Valid values: `30`, `60`, `100`, `300`, `400`, `500`, `600`. The unit is Gbps. Only support upgrade. **NOTE:** `base_bandwidth` is valid only when `product_type` is set to `ddoscoo` or `ddoscoo_intl`.
  final pulumi.Input<String>? baseBandwidth;
  /// (Available since v1.248.0) The time when the instance was created.
  final pulumi.Input<int>? createTime;
  /// Domain retransmission rule count of the instance. At least 50. Increase 5 per step, such as 55, 60, 65. Only support upgrade.
  final pulumi.Input<String>? domainCount;
  /// The mitigation plan of the instance. Default value: `coop`. Valid values:
  final pulumi.Input<String>? editionSale;
  /// The function plan of the instance. Valid values:
  final pulumi.Input<String>? functionVersion;
  /// (Available since v1.212.0) The IP address of the Instance.
  final pulumi.Input<String>? ip;
  /// The type of modification. Valid values: `UPGRADE`, `DOWNGRADE`.
  final pulumi.Input<String>? modifyType;
  /// Name of the instance. This name can have a string of `1` to `64` characters.
  final pulumi.Input<String>? name;
  /// The clean bandwidth provided by the instance. **NOTE:** `normal_bandwidth` is valid only when `product_type` is set to `ddosDip`. From version 1.248.0, `normal_bandwidth` can be modified.
  final pulumi.Input<String>? normalBandwidth;
  /// The clean QPS provided by the instance. **NOTE:** `normal_qps` is valid only when `product_type` is set to `ddosDip`. From version 1.248.0, `normal_qps` can be modified.
  final pulumi.Input<String>? normalQps;
  /// The duration that you will buy DdosCoo instance (in month). Valid values: [1~9], `12`, `24`, `36`. Default value: `1`. At present, the provider does not support modify `period`.
  final pulumi.Input<int>? period;
  /// Port retransmission rule count of the instance. At least 50. Increase 5 per step, such as 55, 60, 65. Only support upgrade.
  final pulumi.Input<String>? portCount;
  /// The mitigation plan of the instance. Valid values:
  final pulumi.Input<String>? productPlan;
  /// The product type for purchasing DDOSCOO instances used to differ different account type. Default value: `ddoscoo`. Valid values:
  final pulumi.Input<String>? productType;
  /// Business bandwidth of the instance. At leaset 100. Increased 100 per step, such as 100, 200, 300. The unit is Mbps. Only support upgrade. **NOTE:** `service_bandwidth` is valid only when `product_type` is set to `ddoscoo` or `ddoscoo_intl`.
  final pulumi.Input<String>? serviceBandwidth;
  /// (Available since v1.248.0) The status of the instance.
  final pulumi.Input<int>? status;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DdosCooInstanceState].
  /// [addressType] The IP version of the IP address. Default value: `Ipv4`. Valid values: `Ipv4`, `Ipv6`. **NOTE:** `address_type` is valid only when `product_type` is set to `ddoscoo` or `ddoscoo_intl`.
  /// [bandwidth] Elastic defend bandwidth of the instance. This value must be larger than the base defend bandwidth. Valid values: `30`, `60`, `100`, `300`, `400`, `500`, `600`. The unit is Gbps. Only support upgrade. **NOTE:** `bandwidth` is valid only when `product_type` is set to `ddoscoo` or `ddoscoo_intl`.
  /// [bandwidthMode] The mitigation plan of the instance. Valid values:
  /// [baseBandwidth] Base defend bandwidth of the instance. Valid values: `30`, `60`, `100`, `300`, `400`, `500`, `600`. The unit is Gbps. Only support upgrade. **NOTE:** `base_bandwidth` is valid only when `product_type` is set to `ddoscoo` or `ddoscoo_intl`.
  /// [createTime] (Available since v1.248.0) The time when the instance was created.
  /// [domainCount] Domain retransmission rule count of the instance. At least 50. Increase 5 per step, such as 55, 60, 65. Only support upgrade.
  /// [editionSale] The mitigation plan of the instance. Default value: `coop`. Valid values:
  /// [functionVersion] The function plan of the instance. Valid values:
  /// [ip] (Available since v1.212.0) The IP address of the Instance.
  /// [modifyType] The type of modification. Valid values: `UPGRADE`, `DOWNGRADE`.
  /// [name] Name of the instance. This name can have a string of `1` to `64` characters.
  /// [normalBandwidth] The clean bandwidth provided by the instance. **NOTE:** `normal_bandwidth` is valid only when `product_type` is set to `ddosDip`. From version 1.248.0, `normal_bandwidth` can be modified.
  /// [normalQps] The clean QPS provided by the instance. **NOTE:** `normal_qps` is valid only when `product_type` is set to `ddosDip`. From version 1.248.0, `normal_qps` can be modified.
  /// [period] The duration that you will buy DdosCoo instance (in month). Valid values: [1~9], `12`, `24`, `36`. Default value: `1`. At present, the provider does not support modify `period`.
  /// [portCount] Port retransmission rule count of the instance. At least 50. Increase 5 per step, such as 55, 60, 65. Only support upgrade.
  /// [productPlan] The mitigation plan of the instance. Valid values:
  /// [productType] The product type for purchasing DDOSCOO instances used to differ different account type. Default value: `ddoscoo`. Valid values:
  /// [serviceBandwidth] Business bandwidth of the instance. At leaset 100. Increased 100 per step, such as 100, 200, 300. The unit is Mbps. Only support upgrade. **NOTE:** `service_bandwidth` is valid only when `product_type` is set to `ddoscoo` or `ddoscoo_intl`.
  /// [status] (Available since v1.248.0) The status of the instance.
  /// [tags] A mapping of tags to assign to the resource.
  DdosCooInstanceState({
    this.addressType,
    this.bandwidth,
    this.bandwidthMode,
    this.baseBandwidth,
    this.createTime,
    this.domainCount,
    this.editionSale,
    this.functionVersion,
    this.ip,
    this.modifyType,
    this.name,
    this.normalBandwidth,
    this.normalQps,
    this.period,
    this.portCount,
    this.productPlan,
    this.productType,
    this.serviceBandwidth,
    this.status,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressType': ?addressType,
      'bandwidth': ?bandwidth,
      'bandwidthMode': ?bandwidthMode,
      'baseBandwidth': ?baseBandwidth,
      'createTime': ?createTime,
      'domainCount': ?domainCount,
      'editionSale': ?editionSale,
      'functionVersion': ?functionVersion,
      'ip': ?ip,
      'modifyType': ?modifyType,
      'name': ?name,
      'normalBandwidth': ?normalBandwidth,
      'normalQps': ?normalQps,
      'period': ?period,
      'portCount': ?portCount,
      'productPlan': ?productPlan,
      'productType': ?productType,
      'serviceBandwidth': ?serviceBandwidth,
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory DdosCooInstanceState.fromMap(Map<String, dynamic> map) {
    return DdosCooInstanceState(
      addressType: map['addressType'] == null ? null : (map['addressType'] as String).input(),
      bandwidth: map['bandwidth'] == null ? null : (map['bandwidth'] as String).input(),
      bandwidthMode: map['bandwidthMode'] == null ? null : (map['bandwidthMode'] as String).input(),
      baseBandwidth: map['baseBandwidth'] == null ? null : (map['baseBandwidth'] as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as int).input(),
      domainCount: map['domainCount'] == null ? null : (map['domainCount'] as String).input(),
      editionSale: map['editionSale'] == null ? null : (map['editionSale'] as String).input(),
      functionVersion: map['functionVersion'] == null ? null : (map['functionVersion'] as String).input(),
      ip: map['ip'] == null ? null : (map['ip'] as String).input(),
      modifyType: map['modifyType'] == null ? null : (map['modifyType'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      normalBandwidth: map['normalBandwidth'] == null ? null : (map['normalBandwidth'] as String).input(),
      normalQps: map['normalQps'] == null ? null : (map['normalQps'] as String).input(),
      period: map['period'] == null ? null : (map['period'] as int).input(),
      portCount: map['portCount'] == null ? null : (map['portCount'] as String).input(),
      productPlan: map['productPlan'] == null ? null : (map['productPlan'] as String).input(),
      productType: map['productType'] == null ? null : (map['productType'] as String).input(),
      serviceBandwidth: map['serviceBandwidth'] == null ? null : (map['serviceBandwidth'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as int).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}


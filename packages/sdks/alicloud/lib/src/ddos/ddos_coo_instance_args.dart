// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ddos_ddos_coo_instance_ddos_coo_instance_args_doc}
/// The set of arguments for DdosCooInstance.
/// {@endtemplate}
/// {@macro pulumi_ddos_ddos_coo_instance_ddos_coo_instance_args_doc}
class DdosCooInstanceArgs {
  /// The IP version of the IP address. Default value: `Ipv4`. Valid values: `Ipv4`, `Ipv6`. **NOTE:** `address_type` is valid only when `product_type` is set to `ddoscoo` or `ddoscoo_intl`.
  final pulumi.Input<String>? addressType;
  /// Elastic defend bandwidth of the instance. This value must be larger than the base defend bandwidth. Valid values: `30`, `60`, `100`, `300`, `400`, `500`, `600`. The unit is Gbps. Only support upgrade. **NOTE:** `bandwidth` is valid only when `product_type` is set to `ddoscoo` or `ddoscoo_intl`.
  final pulumi.Input<String>? bandwidth;
  /// The mitigation plan of the instance. Valid values:
  final pulumi.Input<String>? bandwidthMode;
  /// Base defend bandwidth of the instance. Valid values: `30`, `60`, `100`, `300`, `400`, `500`, `600`. The unit is Gbps. Only support upgrade. **NOTE:** `base_bandwidth` is valid only when `product_type` is set to `ddoscoo` or `ddoscoo_intl`.
  final pulumi.Input<String>? baseBandwidth;
  /// Domain retransmission rule count of the instance. At least 50. Increase 5 per step, such as 55, 60, 65. Only support upgrade.
  final pulumi.Input<String> domainCount;
  /// The mitigation plan of the instance. Default value: `coop`. Valid values:
  final pulumi.Input<String>? editionSale;
  /// The function plan of the instance. Valid values:
  final pulumi.Input<String>? functionVersion;
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
  final pulumi.Input<String> portCount;
  /// The mitigation plan of the instance. Valid values:
  final pulumi.Input<String>? productPlan;
  /// The product type for purchasing DDOSCOO instances used to differ different account type. Default value: `ddoscoo`. Valid values:
  final pulumi.Input<String>? productType;
  /// Business bandwidth of the instance. At leaset 100. Increased 100 per step, such as 100, 200, 300. The unit is Mbps. Only support upgrade. **NOTE:** `service_bandwidth` is valid only when `product_type` is set to `ddoscoo` or `ddoscoo_intl`.
  final pulumi.Input<String>? serviceBandwidth;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DdosCooInstanceArgs].
  /// [addressType] The IP version of the IP address. Default value: `Ipv4`. Valid values: `Ipv4`, `Ipv6`. **NOTE:** `address_type` is valid only when `product_type` is set to `ddoscoo` or `ddoscoo_intl`.
  /// [bandwidth] Elastic defend bandwidth of the instance. This value must be larger than the base defend bandwidth. Valid values: `30`, `60`, `100`, `300`, `400`, `500`, `600`. The unit is Gbps. Only support upgrade. **NOTE:** `bandwidth` is valid only when `product_type` is set to `ddoscoo` or `ddoscoo_intl`.
  /// [bandwidthMode] The mitigation plan of the instance. Valid values:
  /// [baseBandwidth] Base defend bandwidth of the instance. Valid values: `30`, `60`, `100`, `300`, `400`, `500`, `600`. The unit is Gbps. Only support upgrade. **NOTE:** `base_bandwidth` is valid only when `product_type` is set to `ddoscoo` or `ddoscoo_intl`.
  /// [domainCount] Domain retransmission rule count of the instance. At least 50. Increase 5 per step, such as 55, 60, 65. Only support upgrade.
  /// [editionSale] The mitigation plan of the instance. Default value: `coop`. Valid values:
  /// [functionVersion] The function plan of the instance. Valid values:
  /// [modifyType] The type of modification. Valid values: `UPGRADE`, `DOWNGRADE`.
  /// [name] Name of the instance. This name can have a string of `1` to `64` characters.
  /// [normalBandwidth] The clean bandwidth provided by the instance. **NOTE:** `normal_bandwidth` is valid only when `product_type` is set to `ddosDip`. From version 1.248.0, `normal_bandwidth` can be modified.
  /// [normalQps] The clean QPS provided by the instance. **NOTE:** `normal_qps` is valid only when `product_type` is set to `ddosDip`. From version 1.248.0, `normal_qps` can be modified.
  /// [period] The duration that you will buy DdosCoo instance (in month). Valid values: [1~9], `12`, `24`, `36`. Default value: `1`. At present, the provider does not support modify `period`.
  /// [portCount] Port retransmission rule count of the instance. At least 50. Increase 5 per step, such as 55, 60, 65. Only support upgrade.
  /// [productPlan] The mitigation plan of the instance. Valid values:
  /// [productType] The product type for purchasing DDOSCOO instances used to differ different account type. Default value: `ddoscoo`. Valid values:
  /// [serviceBandwidth] Business bandwidth of the instance. At leaset 100. Increased 100 per step, such as 100, 200, 300. The unit is Mbps. Only support upgrade. **NOTE:** `service_bandwidth` is valid only when `product_type` is set to `ddoscoo` or `ddoscoo_intl`.
  /// [tags] A mapping of tags to assign to the resource.
  DdosCooInstanceArgs({
    pulumi.Output<String>? addressType,
    pulumi.Output<String>? bandwidth,
    pulumi.Output<String>? bandwidthMode,
    pulumi.Output<String>? baseBandwidth,
    required pulumi.Output<String> domainCount,
    pulumi.Output<String>? editionSale,
    pulumi.Output<String>? functionVersion,
    pulumi.Output<String>? modifyType,
    pulumi.Output<String>? name,
    pulumi.Output<String>? normalBandwidth,
    pulumi.Output<String>? normalQps,
    pulumi.Output<int>? period,
    required pulumi.Output<String> portCount,
    pulumi.Output<String>? productPlan,
    pulumi.Output<String>? productType,
    pulumi.Output<String>? serviceBandwidth,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      addressType = pulumi.Input.asOptionalInput<String>(addressType),
      bandwidth = pulumi.Input.asOptionalInput<String>(bandwidth),
      bandwidthMode = pulumi.Input.asOptionalInput<String>(bandwidthMode),
      baseBandwidth = pulumi.Input.asOptionalInput<String>(baseBandwidth),
      domainCount = pulumi.Input.asInput<String>(domainCount),
      editionSale = pulumi.Input.asOptionalInput<String>(editionSale),
      functionVersion = pulumi.Input.asOptionalInput<String>(functionVersion),
      modifyType = pulumi.Input.asOptionalInput<String>(modifyType),
      name = pulumi.Input.asOptionalInput<String>(name),
      normalBandwidth = pulumi.Input.asOptionalInput<String>(normalBandwidth),
      normalQps = pulumi.Input.asOptionalInput<String>(normalQps),
      period = pulumi.Input.asOptionalInput<int>(period),
      portCount = pulumi.Input.asInput<String>(portCount),
      productPlan = pulumi.Input.asOptionalInput<String>(productPlan),
      productType = pulumi.Input.asOptionalInput<String>(productType),
      serviceBandwidth = pulumi.Input.asOptionalInput<String>(serviceBandwidth),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressType': ?addressType,
      'bandwidth': ?bandwidth,
      'bandwidthMode': ?bandwidthMode,
      'baseBandwidth': ?baseBandwidth,
      'domainCount': domainCount,
      'editionSale': ?editionSale,
      'functionVersion': ?functionVersion,
      'modifyType': ?modifyType,
      'name': ?name,
      'normalBandwidth': ?normalBandwidth,
      'normalQps': ?normalQps,
      'period': ?period,
      'portCount': portCount,
      'productPlan': ?productPlan,
      'productType': ?productType,
      'serviceBandwidth': ?serviceBandwidth,
      'tags': ?tags,
    };
  }

  factory DdosCooInstanceArgs.fromMap(Map<String, dynamic> map) {
    return DdosCooInstanceArgs(
      addressType: map['addressType'] == null ? null : pulumi.Output.create<String>(map['addressType'] as String),
      bandwidth: map['bandwidth'] == null ? null : pulumi.Output.create<String>(map['bandwidth'] as String),
      bandwidthMode: map['bandwidthMode'] == null ? null : pulumi.Output.create<String>(map['bandwidthMode'] as String),
      baseBandwidth: map['baseBandwidth'] == null ? null : pulumi.Output.create<String>(map['baseBandwidth'] as String),
      domainCount: pulumi.Output.create<String>(map['domainCount'] as String),
      editionSale: map['editionSale'] == null ? null : pulumi.Output.create<String>(map['editionSale'] as String),
      functionVersion: map['functionVersion'] == null ? null : pulumi.Output.create<String>(map['functionVersion'] as String),
      modifyType: map['modifyType'] == null ? null : pulumi.Output.create<String>(map['modifyType'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      normalBandwidth: map['normalBandwidth'] == null ? null : pulumi.Output.create<String>(map['normalBandwidth'] as String),
      normalQps: map['normalQps'] == null ? null : pulumi.Output.create<String>(map['normalQps'] as String),
      period: map['period'] == null ? null : pulumi.Output.create<int>(map['period'] as int),
      portCount: pulumi.Output.create<String>(map['portCount'] as String),
      productPlan: map['productPlan'] == null ? null : pulumi.Output.create<String>(map['productPlan'] as String),
      productType: map['productType'] == null ? null : pulumi.Output.create<String>(map['productType'] as String),
      serviceBandwidth: map['serviceBandwidth'] == null ? null : pulumi.Output.create<String>(map['serviceBandwidth'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}


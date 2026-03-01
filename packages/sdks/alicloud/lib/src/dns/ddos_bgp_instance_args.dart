// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dns_ddos_bgp_instance_ddos_bgp_instance_args_doc}
/// The set of arguments for DdosBgpInstance.
/// {@endtemplate}
/// {@macro pulumi_dns_ddos_bgp_instance_ddos_bgp_instance_args_doc}
class DdosBgpInstanceArgs {
  /// The bandwidth of the package configuration.
  final pulumi.Input<int> bandwidth;
  /// The basic protection bandwidth of the Anti-DDoS Origin Enterprise instance. Default value: `20`. Valid values: `20`.
  final pulumi.Input<int>? baseBandwidth;
  /// The name of the instance.
  final pulumi.Input<String>? instanceName;
  /// The number of IP addresses that can be protected by the Anti-DDoS Origin Enterprise instance.
  final pulumi.Input<int> ipCount;
  /// The protection IP address type of the protection package. Valid values:
  /// - `IPv4`
  /// - `IPv6`
  final pulumi.Input<String> ipType;
  /// Field `name` has been deprecated from provider version 1.259.0. New field `instance_name` instead.
  final pulumi.Input<String>? name;
  /// The normal clean bandwidth. Unit: Mbit/s.
  final pulumi.Input<int> normalBandwidth;
  /// The duration that you will buy Ddosbgp instance (in month). Valid values: [1~9], 12, 24, 36. Default to 12. At present, the provider does not support modify "period".
  final pulumi.Input<int>? period;
  /// Resource Group ID
  final pulumi.Input<String>? resourceGroupId;
  /// The key of the tag that is added to the Anti-DDoS Origin instance.
  final pulumi.Input<Map<String, String>>? tags;
  /// The protection package type of the DDoS native protection instance. Default value: `Enterprise`. Valid values: `Enterprise`, `Professional`.
  final pulumi.Input<String>? type;

  /// Creates a new [DdosBgpInstanceArgs].
  /// [bandwidth] The bandwidth of the package configuration.
  /// [baseBandwidth] The basic protection bandwidth of the Anti-DDoS Origin Enterprise instance. Default value: `20`. Valid values: `20`.
  /// [instanceName] The name of the instance.
  /// [ipCount] The number of IP addresses that can be protected by the Anti-DDoS Origin Enterprise instance.
  /// [ipType] The protection IP address type of the protection package. Valid values:
  /// [name] Field `name` has been deprecated from provider version 1.259.0. New field `instance_name` instead.
  /// [normalBandwidth] The normal clean bandwidth. Unit: Mbit/s.
  /// [period] The duration that you will buy Ddosbgp instance (in month). Valid values: [1~9], 12, 24, 36. Default to 12. At present, the provider does not support modify "period".
  /// [resourceGroupId] Resource Group ID
  /// [tags] The key of the tag that is added to the Anti-DDoS Origin instance.
  /// [type] The protection package type of the DDoS native protection instance. Default value: `Enterprise`. Valid values: `Enterprise`, `Professional`.
  DdosBgpInstanceArgs({
    required pulumi.Output<int> bandwidth,
    pulumi.Output<int>? baseBandwidth,
    pulumi.Output<String>? instanceName,
    required pulumi.Output<int> ipCount,
    required pulumi.Output<String> ipType,
    pulumi.Output<String>? name,
    required pulumi.Output<int> normalBandwidth,
    pulumi.Output<int>? period,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? type,
  }) :
      bandwidth = pulumi.Input.asInput<int>(bandwidth),
      baseBandwidth = pulumi.Input.asOptionalInput<int>(baseBandwidth),
      instanceName = pulumi.Input.asOptionalInput<String>(instanceName),
      ipCount = pulumi.Input.asInput<int>(ipCount),
      ipType = pulumi.Input.asInput<String>(ipType),
      name = pulumi.Input.asOptionalInput<String>(name),
      normalBandwidth = pulumi.Input.asInput<int>(normalBandwidth),
      period = pulumi.Input.asOptionalInput<int>(period),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidth': bandwidth,
      'baseBandwidth': ?baseBandwidth,
      'instanceName': ?instanceName,
      'ipCount': ipCount,
      'ipType': ipType,
      'name': ?name,
      'normalBandwidth': normalBandwidth,
      'period': ?period,
      'resourceGroupId': ?resourceGroupId,
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory DdosBgpInstanceArgs.fromMap(Map<String, dynamic> map) {
    return DdosBgpInstanceArgs(
      bandwidth: pulumi.Output.create<int>(map['bandwidth'] as int),
      baseBandwidth: map['baseBandwidth'] == null ? null : pulumi.Output.create<int>(map['baseBandwidth'] as int),
      instanceName: map['instanceName'] == null ? null : pulumi.Output.create<String>(map['instanceName'] as String),
      ipCount: pulumi.Output.create<int>(map['ipCount'] as int),
      ipType: pulumi.Output.create<String>(map['ipType'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      normalBandwidth: pulumi.Output.create<int>(map['normalBandwidth'] as int),
      period: map['period'] == null ? null : pulumi.Output.create<int>(map['period'] as int),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}


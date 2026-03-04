// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ddos_ddos_bgp_instance_ddos_bgp_instance_args_doc}
/// The set of arguments for DdosBgpInstance.
/// {@endtemplate}
/// {@macro pulumi_ddos_ddos_bgp_instance_ddos_bgp_instance_args_doc}
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
    required this.bandwidth,
    this.baseBandwidth,
    this.instanceName,
    required this.ipCount,
    required this.ipType,
    this.name,
    required this.normalBandwidth,
    this.period,
    this.resourceGroupId,
    this.tags,
    this.type,
  });

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
      bandwidth: pulumi.Input.fromValue(map['bandwidth'] as int),
      baseBandwidth: (() {
        final guardedValue = map['baseBandwidth'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      instanceName: (() {
        final guardedValue = map['instanceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ipCount: pulumi.Input.fromValue(map['ipCount'] as int),
      ipType: pulumi.Input.fromValue(map['ipType'] as String),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      normalBandwidth: pulumi.Input.fromValue(map['normalBandwidth'] as int),
      period: (() {
        final guardedValue = map['period'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      resourceGroupId: (() {
        final guardedValue = map['resourceGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

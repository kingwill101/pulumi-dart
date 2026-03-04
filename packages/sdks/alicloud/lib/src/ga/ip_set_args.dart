// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ga_ip_set_ip_set_args_doc}
/// The set of arguments for IpSet.
/// {@endtemplate}
/// {@macro pulumi_ga_ip_set_ip_set_args_doc}
class IpSetArgs {
  /// The ID of an acceleration region.
  final pulumi.Input<String> accelerateRegionId;

  /// The ID of the Global Accelerator (GA) instance.
  final pulumi.Input<String> acceleratorId;

  /// The bandwidth allocated to the acceleration region.
  /// &gt; **NOTE:** The minimum bandwidth of each accelerated region is 2Mbps. The total bandwidth of the acceleration region should be less than or equal to the bandwidth of the basic bandwidth package you purchased.
  final pulumi.Input<int>? bandwidth;

  /// The IP protocol used by the GA instance. Default value: `IPv4`. Valid values: `IPv4`, `IPv6`, `DUAL_STACK`. **NOTE:** From version 1.220.0, `ip_version` can be set to `DUAL_STACK`.
  final pulumi.Input<String>? ipVersion;

  /// The line type of the elastic IP address (EIP) in the acceleration region. Valid values: `BGP`, `BGP_PRO`.
  final pulumi.Input<String>? ispType;

  /// Creates a new [IpSetArgs].
  /// [accelerateRegionId] The ID of an acceleration region.
  /// [acceleratorId] The ID of the Global Accelerator (GA) instance.
  /// [bandwidth] The bandwidth allocated to the acceleration region.
  /// [ipVersion] The IP protocol used by the GA instance. Default value: `IPv4`. Valid values: `IPv4`, `IPv6`, `DUAL_STACK`. **NOTE:** From version 1.220.0, `ip_version` can be set to `DUAL_STACK`.
  /// [ispType] The line type of the elastic IP address (EIP) in the acceleration region. Valid values: `BGP`, `BGP_PRO`.
  IpSetArgs({
    required this.accelerateRegionId,
    required this.acceleratorId,
    this.bandwidth,
    this.ipVersion,
    this.ispType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accelerateRegionId': accelerateRegionId,
      'acceleratorId': acceleratorId,
      'bandwidth': ?bandwidth,
      'ipVersion': ?ipVersion,
      'ispType': ?ispType,
    };
  }

  factory IpSetArgs.fromMap(Map<String, dynamic> map) {
    return IpSetArgs(
      accelerateRegionId: pulumi.Input.fromValue(
        map['accelerateRegionId'] as String,
      ),
      acceleratorId: pulumi.Input.fromValue(map['acceleratorId'] as String),
      bandwidth: (() {
        final guardedValue = map['bandwidth'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      ipVersion: (() {
        final guardedValue = map['ipVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ispType: (() {
        final guardedValue = map['ispType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

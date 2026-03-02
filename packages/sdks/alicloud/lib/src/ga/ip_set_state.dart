// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering IpSet resources.
class IpSetState {
  /// The ID of an acceleration region.
  final pulumi.Input<String>? accelerateRegionId;
  /// The ID of the Global Accelerator (GA) instance.
  final pulumi.Input<String>? acceleratorId;
  /// The bandwidth allocated to the acceleration region.
  /// > **NOTE:** The minimum bandwidth of each accelerated region is 2Mbps. The total bandwidth of the acceleration region should be less than or equal to the bandwidth of the basic bandwidth package you purchased.
  final pulumi.Input<int>? bandwidth;
  /// The list of accelerated IP addresses in the acceleration region.
  final pulumi.Input<List<String>>? ipAddressLists;
  /// The IP protocol used by the GA instance. Default value: `IPv4`. Valid values: `IPv4`, `IPv6`, `DUAL_STACK`. **NOTE:** From version 1.220.0, `ip_version` can be set to `DUAL_STACK`.
  final pulumi.Input<String>? ipVersion;
  /// The line type of the elastic IP address (EIP) in the acceleration region. Valid values: `BGP`, `BGP_PRO`.
  final pulumi.Input<String>? ispType;
  /// The status of the acceleration region.
  final pulumi.Input<String>? status;

  /// Creates a new [IpSetState].
  /// [accelerateRegionId] The ID of an acceleration region.
  /// [acceleratorId] The ID of the Global Accelerator (GA) instance.
  /// [bandwidth] The bandwidth allocated to the acceleration region.
  /// [ipAddressLists] The list of accelerated IP addresses in the acceleration region.
  /// [ipVersion] The IP protocol used by the GA instance. Default value: `IPv4`. Valid values: `IPv4`, `IPv6`, `DUAL_STACK`. **NOTE:** From version 1.220.0, `ip_version` can be set to `DUAL_STACK`.
  /// [ispType] The line type of the elastic IP address (EIP) in the acceleration region. Valid values: `BGP`, `BGP_PRO`.
  /// [status] The status of the acceleration region.
  IpSetState({
    this.accelerateRegionId,
    this.acceleratorId,
    this.bandwidth,
    this.ipAddressLists,
    this.ipVersion,
    this.ispType,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accelerateRegionId': ?accelerateRegionId,
      'acceleratorId': ?acceleratorId,
      'bandwidth': ?bandwidth,
      'ipAddressLists': ?ipAddressLists,
      'ipVersion': ?ipVersion,
      'ispType': ?ispType,
      'status': ?status,
    };
  }

  factory IpSetState.fromMap(Map<String, dynamic> map) {
    return IpSetState(
      accelerateRegionId: map['accelerateRegionId'] == null ? null : (map['accelerateRegionId'] as String).input(),
      acceleratorId: map['acceleratorId'] == null ? null : (map['acceleratorId'] as String).input(),
      bandwidth: map['bandwidth'] == null ? null : (map['bandwidth'] as int).input(),
      ipAddressLists: map['ipAddressLists'] == null ? null : ((map['ipAddressLists'] as List).cast<String>()).input(),
      ipVersion: map['ipVersion'] == null ? null : (map['ipVersion'] as String).input(),
      ispType: map['ispType'] == null ? null : (map['ispType'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}


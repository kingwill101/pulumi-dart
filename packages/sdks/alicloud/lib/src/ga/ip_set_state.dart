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
    pulumi.Output<String>? accelerateRegionId,
    pulumi.Output<String>? acceleratorId,
    pulumi.Output<int>? bandwidth,
    pulumi.Output<List<String>>? ipAddressLists,
    pulumi.Output<String>? ipVersion,
    pulumi.Output<String>? ispType,
    pulumi.Output<String>? status,
  }) :
      accelerateRegionId = pulumi.Input.asOptionalInput<String>(accelerateRegionId),
      acceleratorId = pulumi.Input.asOptionalInput<String>(acceleratorId),
      bandwidth = pulumi.Input.asOptionalInput<int>(bandwidth),
      ipAddressLists = pulumi.Input.asOptionalInput<List<String>>(ipAddressLists),
      ipVersion = pulumi.Input.asOptionalInput<String>(ipVersion),
      ispType = pulumi.Input.asOptionalInput<String>(ispType),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      accelerateRegionId: map['accelerateRegionId'] == null ? null : pulumi.Output.create<String>(map['accelerateRegionId'] as String),
      acceleratorId: map['acceleratorId'] == null ? null : pulumi.Output.create<String>(map['acceleratorId'] as String),
      bandwidth: map['bandwidth'] == null ? null : pulumi.Output.create<int>(map['bandwidth'] as int),
      ipAddressLists: map['ipAddressLists'] == null ? null : pulumi.Output.create<List<String>>((map['ipAddressLists'] as List).cast<String>()),
      ipVersion: map['ipVersion'] == null ? null : pulumi.Output.create<String>(map['ipVersion'] as String),
      ispType: map['ispType'] == null ? null : pulumi.Output.create<String>(map['ispType'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}


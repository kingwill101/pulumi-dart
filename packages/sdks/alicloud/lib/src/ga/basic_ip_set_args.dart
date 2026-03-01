// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ga_basic_ip_set_basic_ip_set_args_doc}
/// The set of arguments for BasicIpSet.
/// {@endtemplate}
/// {@macro pulumi_ga_basic_ip_set_basic_ip_set_args_doc}
class BasicIpSetArgs {
  /// The ID of the acceleration region.
  final pulumi.Input<String> accelerateRegionId;
  /// The ID of the basic GA instance.
  final pulumi.Input<String> acceleratorId;
  /// The bandwidth of the acceleration region. Unit: Mbit/s.
  final pulumi.Input<int>? bandwidth;
  /// The line type of the elastic IP address (EIP) in the acceleration region. Default value: `BGP`. Valid values: `BGP`, `BGP_PRO`, `ChinaTelecom`, `ChinaUnicom`, `ChinaMobile`, `ChinaTelecom_L2`, `ChinaUnicom_L2`, `ChinaMobile_L2`.
  final pulumi.Input<String>? ispType;

  /// Creates a new [BasicIpSetArgs].
  /// [accelerateRegionId] The ID of the acceleration region.
  /// [acceleratorId] The ID of the basic GA instance.
  /// [bandwidth] The bandwidth of the acceleration region. Unit: Mbit/s.
  /// [ispType] The line type of the elastic IP address (EIP) in the acceleration region. Default value: `BGP`. Valid values: `BGP`, `BGP_PRO`, `ChinaTelecom`, `ChinaUnicom`, `ChinaMobile`, `ChinaTelecom_L2`, `ChinaUnicom_L2`, `ChinaMobile_L2`.
  BasicIpSetArgs({
    required pulumi.Output<String> accelerateRegionId,
    required pulumi.Output<String> acceleratorId,
    pulumi.Output<int>? bandwidth,
    pulumi.Output<String>? ispType,
  }) :
      accelerateRegionId = pulumi.Input.asInput<String>(accelerateRegionId),
      acceleratorId = pulumi.Input.asInput<String>(acceleratorId),
      bandwidth = pulumi.Input.asOptionalInput<int>(bandwidth),
      ispType = pulumi.Input.asOptionalInput<String>(ispType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accelerateRegionId': accelerateRegionId,
      'acceleratorId': acceleratorId,
      'bandwidth': ?bandwidth,
      'ispType': ?ispType,
    };
  }

  factory BasicIpSetArgs.fromMap(Map<String, dynamic> map) {
    return BasicIpSetArgs(
      accelerateRegionId: pulumi.Output.create<String>(map['accelerateRegionId'] as String),
      acceleratorId: pulumi.Output.create<String>(map['acceleratorId'] as String),
      bandwidth: map['bandwidth'] == null ? null : pulumi.Output.create<int>(map['bandwidth'] as int),
      ispType: map['ispType'] == null ? null : pulumi.Output.create<String>(map['ispType'] as String),
    );
  }
}


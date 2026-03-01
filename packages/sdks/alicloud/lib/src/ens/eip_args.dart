// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ens_eip_eip_args_doc}
/// The set of arguments for Eip.
/// {@endtemplate}
/// {@macro pulumi_ens_eip_eip_args_doc}
class EipArgs {
  /// The maximum bandwidth of the EIP. Default value: `5`. Valid values: `5` to `10000`. Unit: Mbit/s.
  final pulumi.Input<int>? bandwidth;
  /// The description of the EIP.
  final pulumi.Input<String>? description;
  /// The name of the EIP.
  final pulumi.Input<String>? eipName;
  /// Ens node ID.
  final pulumi.Input<String> ensRegionId;
  /// The metering method of the EIP. Valid value: `95BandwidthByMonth`.
  final pulumi.Input<String> internetChargeType;
  /// The Internet service provider. Valid value: `cmcc`, `unicom`, `telecom`.
  final pulumi.Input<String>? isp;
  /// The billing method of the EIP. Valid value: `PayAsYouGo`.
  final pulumi.Input<String> paymentType;

  /// Creates a new [EipArgs].
  /// [bandwidth] The maximum bandwidth of the EIP. Default value: `5`. Valid values: `5` to `10000`. Unit: Mbit/s.
  /// [description] The description of the EIP.
  /// [eipName] The name of the EIP.
  /// [ensRegionId] Ens node ID.
  /// [internetChargeType] The metering method of the EIP. Valid value: `95BandwidthByMonth`.
  /// [isp] The Internet service provider. Valid value: `cmcc`, `unicom`, `telecom`.
  /// [paymentType] The billing method of the EIP. Valid value: `PayAsYouGo`.
  EipArgs({
    pulumi.Output<int>? bandwidth,
    pulumi.Output<String>? description,
    pulumi.Output<String>? eipName,
    required pulumi.Output<String> ensRegionId,
    required pulumi.Output<String> internetChargeType,
    pulumi.Output<String>? isp,
    required pulumi.Output<String> paymentType,
  }) :
      bandwidth = pulumi.Input.asOptionalInput<int>(bandwidth),
      description = pulumi.Input.asOptionalInput<String>(description),
      eipName = pulumi.Input.asOptionalInput<String>(eipName),
      ensRegionId = pulumi.Input.asInput<String>(ensRegionId),
      internetChargeType = pulumi.Input.asInput<String>(internetChargeType),
      isp = pulumi.Input.asOptionalInput<String>(isp),
      paymentType = pulumi.Input.asInput<String>(paymentType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidth': ?bandwidth,
      'description': ?description,
      'eipName': ?eipName,
      'ensRegionId': ensRegionId,
      'internetChargeType': internetChargeType,
      'isp': ?isp,
      'paymentType': paymentType,
    };
  }

  factory EipArgs.fromMap(Map<String, dynamic> map) {
    return EipArgs(
      bandwidth: map['bandwidth'] == null ? null : pulumi.Output.create<int>(map['bandwidth'] as int),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      eipName: map['eipName'] == null ? null : pulumi.Output.create<String>(map['eipName'] as String),
      ensRegionId: pulumi.Output.create<String>(map['ensRegionId'] as String),
      internetChargeType: pulumi.Output.create<String>(map['internetChargeType'] as String),
      isp: map['isp'] == null ? null : pulumi.Output.create<String>(map['isp'] as String),
      paymentType: pulumi.Output.create<String>(map['paymentType'] as String),
    );
  }
}


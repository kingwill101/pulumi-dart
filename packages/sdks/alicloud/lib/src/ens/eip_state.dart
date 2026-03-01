// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Eip resources.
class EipState {
  /// The maximum bandwidth of the EIP. Default value: `5`. Valid values: `5` to `10000`. Unit: Mbit/s.
  final pulumi.Input<int>? bandwidth;
  /// The creation time of the EIP instance.
  final pulumi.Input<String>? createTime;
  /// The description of the EIP.
  final pulumi.Input<String>? description;
  /// The name of the EIP.
  final pulumi.Input<String>? eipName;
  /// Ens node ID.
  final pulumi.Input<String>? ensRegionId;
  /// The metering method of the EIP. Valid value: `95BandwidthByMonth`.
  final pulumi.Input<String>? internetChargeType;
  /// The Internet service provider. Valid value: `cmcc`, `unicom`, `telecom`.
  final pulumi.Input<String>? isp;
  /// The billing method of the EIP. Valid value: `PayAsYouGo`.
  final pulumi.Input<String>? paymentType;
  /// The status of the EIP.
  final pulumi.Input<String>? status;

  /// Creates a new [EipState].
  /// [bandwidth] The maximum bandwidth of the EIP. Default value: `5`. Valid values: `5` to `10000`. Unit: Mbit/s.
  /// [createTime] The creation time of the EIP instance.
  /// [description] The description of the EIP.
  /// [eipName] The name of the EIP.
  /// [ensRegionId] Ens node ID.
  /// [internetChargeType] The metering method of the EIP. Valid value: `95BandwidthByMonth`.
  /// [isp] The Internet service provider. Valid value: `cmcc`, `unicom`, `telecom`.
  /// [paymentType] The billing method of the EIP. Valid value: `PayAsYouGo`.
  /// [status] The status of the EIP.
  EipState({
    pulumi.Output<int>? bandwidth,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<String>? eipName,
    pulumi.Output<String>? ensRegionId,
    pulumi.Output<String>? internetChargeType,
    pulumi.Output<String>? isp,
    pulumi.Output<String>? paymentType,
    pulumi.Output<String>? status,
  }) :
      bandwidth = pulumi.Input.asOptionalInput<int>(bandwidth),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      eipName = pulumi.Input.asOptionalInput<String>(eipName),
      ensRegionId = pulumi.Input.asOptionalInput<String>(ensRegionId),
      internetChargeType = pulumi.Input.asOptionalInput<String>(internetChargeType),
      isp = pulumi.Input.asOptionalInput<String>(isp),
      paymentType = pulumi.Input.asOptionalInput<String>(paymentType),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidth': ?bandwidth,
      'createTime': ?createTime,
      'description': ?description,
      'eipName': ?eipName,
      'ensRegionId': ?ensRegionId,
      'internetChargeType': ?internetChargeType,
      'isp': ?isp,
      'paymentType': ?paymentType,
      'status': ?status,
    };
  }

  factory EipState.fromMap(Map<String, dynamic> map) {
    return EipState(
      bandwidth: map['bandwidth'] == null ? null : pulumi.Output.create<int>(map['bandwidth'] as int),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      eipName: map['eipName'] == null ? null : pulumi.Output.create<String>(map['eipName'] as String),
      ensRegionId: map['ensRegionId'] == null ? null : pulumi.Output.create<String>(map['ensRegionId'] as String),
      internetChargeType: map['internetChargeType'] == null ? null : pulumi.Output.create<String>(map['internetChargeType'] as String),
      isp: map['isp'] == null ? null : pulumi.Output.create<String>(map['isp'] as String),
      paymentType: map['paymentType'] == null ? null : pulumi.Output.create<String>(map['paymentType'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}


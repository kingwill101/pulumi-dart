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
  const EipState({
    this.bandwidth,
    this.createTime,
    this.description,
    this.eipName,
    this.ensRegionId,
    this.internetChargeType,
    this.isp,
    this.paymentType,
    this.status,
  });

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
      bandwidth: (() { final guardedValue = map['bandwidth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eipName: (() { final guardedValue = map['eipName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ensRegionId: (() { final guardedValue = map['ensRegionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      internetChargeType: (() { final guardedValue = map['internetChargeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isp: (() { final guardedValue = map['isp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      paymentType: (() { final guardedValue = map['paymentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


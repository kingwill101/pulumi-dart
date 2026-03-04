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
    this.bandwidth,
    this.description,
    this.eipName,
    required this.ensRegionId,
    required this.internetChargeType,
    this.isp,
    required this.paymentType,
  });

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
      bandwidth: (() {
        final guardedValue = map['bandwidth'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      eipName: (() {
        final guardedValue = map['eipName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ensRegionId: pulumi.Input.fromValue(map['ensRegionId'] as String),
      internetChargeType: pulumi.Input.fromValue(
        map['internetChargeType'] as String,
      ),
      isp: (() {
        final guardedValue = map['isp'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      paymentType: pulumi.Input.fromValue(map['paymentType'] as String),
    );
  }
}

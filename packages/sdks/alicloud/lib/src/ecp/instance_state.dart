// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Instance resources.
class InstanceState {
  /// Specifies whether to enable the auto-payment feature. Valid values:
  final pulumi.Input<bool>? autoPay;
  /// Specifies whether to enable the auto-renewal feature. Valid values:
  final pulumi.Input<bool>? autoRenew;
  /// The description of the ECP instance. The description must be `2` to `256` characters in length and cannot start with `http://` or `https://`.
  final pulumi.Input<String>? description;
  /// The bandwidth of the elastic IP address (EIP). **NOTE:** From version 1.232.0, `eip_bandwidth` cannot be modified.
  final pulumi.Input<int>? eipBandwidth;
  /// Specifies whether to forcefully stop and release the instance. Default value: `false`. Valid values:
  final pulumi.Input<bool>? force;
  /// The ID of the image.
  final pulumi.Input<String>? imageId;
  /// The name of the ECP instance. The name must be `2` to `128` characters in length. It must start with a letter but cannot start with `http://` or `https://`. It can contain letters, digits, colons (:), underscores (_), periods (.), and hyphens (-).
  final pulumi.Input<String>? instanceName;
  /// The specifications of the ECP instance.
  final pulumi.Input<String>? instanceType;
  /// The name of the key pair that you want to use to connect to the instance.
  final pulumi.Input<String>? keyPairName;
  /// The billing method of the ECP instance. Default value: `PayAsYouGo`. Valid values: `PayAsYouGo`,`Subscription`. **NOTE:** From version 1.232.0, `payment_type` cannot be modified.
  final pulumi.Input<String>? paymentType;
  /// The subscription duration. Default value: `1`. Valid values:
  /// - If `period_unit` is set to `Month`. Valid values: `1`, `2`, `3`, and `6`.
  /// - If `period_unit` is set to `Year`. Valid values: `1` to `5`.
  final pulumi.Input<String>? period;
  /// The unit of the subscription duration. Default value: `Month`. Valid values: `Month`, `Year`.
  final pulumi.Input<String>? periodUnit;
  /// The resolution that you want to select for the ECP instance. **NOTE:** From version 1.232.0, `resolution` can be modified.
  final pulumi.Input<String>? resolution;
  /// The ID of the security group.
  final pulumi.Input<String>? securityGroupId;
  /// The status of the Instance. Valid values: `Running`, `Stopped`.
  final pulumi.Input<String>? status;
  /// The VNC password of the instance. The password must be `6` characters in length and can contain only uppercase letters, lowercase letters, and digits.
  final pulumi.Input<String>? vncPassword;
  /// The ID of the vSwitch.
  final pulumi.Input<String>? vswitchId;

  /// Creates a new [InstanceState].
  /// [autoPay] Specifies whether to enable the auto-payment feature. Valid values:
  /// [autoRenew] Specifies whether to enable the auto-renewal feature. Valid values:
  /// [description] The description of the ECP instance. The description must be `2` to `256` characters in length and cannot start with `http://` or `https://`.
  /// [eipBandwidth] The bandwidth of the elastic IP address (EIP). **NOTE:** From version 1.232.0, `eip_bandwidth` cannot be modified.
  /// [force] Specifies whether to forcefully stop and release the instance. Default value: `false`. Valid values:
  /// [imageId] The ID of the image.
  /// [instanceName] The name of the ECP instance. The name must be `2` to `128` characters in length. It must start with a letter but cannot start with `http://` or `https://`. It can contain letters, digits, colons (:), underscores (_), periods (.), and hyphens (-).
  /// [instanceType] The specifications of the ECP instance.
  /// [keyPairName] The name of the key pair that you want to use to connect to the instance.
  /// [paymentType] The billing method of the ECP instance. Default value: `PayAsYouGo`. Valid values: `PayAsYouGo`,`Subscription`. **NOTE:** From version 1.232.0, `payment_type` cannot be modified.
  /// [period] The subscription duration. Default value: `1`. Valid values:
  /// [periodUnit] The unit of the subscription duration. Default value: `Month`. Valid values: `Month`, `Year`.
  /// [resolution] The resolution that you want to select for the ECP instance. **NOTE:** From version 1.232.0, `resolution` can be modified.
  /// [securityGroupId] The ID of the security group.
  /// [status] The status of the Instance. Valid values: `Running`, `Stopped`.
  /// [vncPassword] The VNC password of the instance. The password must be `6` characters in length and can contain only uppercase letters, lowercase letters, and digits.
  /// [vswitchId] The ID of the vSwitch.
  InstanceState({
    this.autoPay,
    this.autoRenew,
    this.description,
    this.eipBandwidth,
    this.force,
    this.imageId,
    this.instanceName,
    this.instanceType,
    this.keyPairName,
    this.paymentType,
    this.period,
    this.periodUnit,
    this.resolution,
    this.securityGroupId,
    this.status,
    this.vncPassword,
    this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoPay': ?autoPay,
      'autoRenew': ?autoRenew,
      'description': ?description,
      'eipBandwidth': ?eipBandwidth,
      'force': ?force,
      'imageId': ?imageId,
      'instanceName': ?instanceName,
      'instanceType': ?instanceType,
      'keyPairName': ?keyPairName,
      'paymentType': ?paymentType,
      'period': ?period,
      'periodUnit': ?periodUnit,
      'resolution': ?resolution,
      'securityGroupId': ?securityGroupId,
      'status': ?status,
      'vncPassword': ?vncPassword,
      'vswitchId': ?vswitchId,
    };
  }

  factory InstanceState.fromMap(Map<String, dynamic> map) {
    return InstanceState(
      autoPay: map['autoPay'] == null ? null : (map['autoPay'] as bool).input(),
      autoRenew: map['autoRenew'] == null ? null : (map['autoRenew'] as bool).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      eipBandwidth: map['eipBandwidth'] == null ? null : (map['eipBandwidth'] as int).input(),
      force: map['force'] == null ? null : (map['force'] as bool).input(),
      imageId: map['imageId'] == null ? null : (map['imageId'] as String).input(),
      instanceName: map['instanceName'] == null ? null : (map['instanceName'] as String).input(),
      instanceType: map['instanceType'] == null ? null : (map['instanceType'] as String).input(),
      keyPairName: map['keyPairName'] == null ? null : (map['keyPairName'] as String).input(),
      paymentType: map['paymentType'] == null ? null : (map['paymentType'] as String).input(),
      period: map['period'] == null ? null : (map['period'] as String).input(),
      periodUnit: map['periodUnit'] == null ? null : (map['periodUnit'] as String).input(),
      resolution: map['resolution'] == null ? null : (map['resolution'] as String).input(),
      securityGroupId: map['securityGroupId'] == null ? null : (map['securityGroupId'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      vncPassword: map['vncPassword'] == null ? null : (map['vncPassword'] as String).input(),
      vswitchId: map['vswitchId'] == null ? null : (map['vswitchId'] as String).input(),
    );
  }
}


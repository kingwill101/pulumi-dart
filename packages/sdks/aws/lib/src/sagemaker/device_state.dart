// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_device.dart';

/// Input properties used for looking up and filtering Device resources.
class DeviceState {
  final pulumi.Input<String>? agentVersion;
  /// The Amazon Resource Name (ARN) assigned by AWS to this Device.
  final pulumi.Input<String>? arn;
  /// The device to register with SageMaker AI Edge Manager. See Device details below.
  final pulumi.Input<DeviceDevice>? device;
  /// The name of the Device Fleet.
  final pulumi.Input<String>? deviceFleetName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [DeviceState].
  /// [agentVersion] Optional.
  /// [arn] The Amazon Resource Name (ARN) assigned by AWS to this Device.
  /// [device] The device to register with SageMaker AI Edge Manager. See Device details below.
  /// [deviceFleetName] The name of the Device Fleet.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  DeviceState({
    this.agentVersion,
    this.arn,
    this.device,
    this.deviceFleetName,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentVersion': ?agentVersion,
      'arn': ?arn,
      'device': ?pulumi.Input.mapOptionalInputValue<DeviceDevice, Map<String, dynamic>>(device, (value) => value.toMap()),
      'deviceFleetName': ?deviceFleetName,
      'region': ?region,
    };
  }

  factory DeviceState.fromMap(Map<String, dynamic> map) {
    return DeviceState(
      agentVersion: map['agentVersion'] == null ? null : (map['agentVersion'] as String).input(),
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      device: map['device'] == null ? null : (DeviceDevice.fromMap((map['device'] as Map).cast<String, dynamic>())).input(),
      deviceFleetName: map['deviceFleetName'] == null ? null : (map['deviceFleetName'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}


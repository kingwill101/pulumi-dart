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
    pulumi.Output<String>? agentVersion,
    pulumi.Output<String>? arn,
    pulumi.Output<DeviceDevice>? device,
    pulumi.Output<String>? deviceFleetName,
    pulumi.Output<String>? region,
  }) :
      agentVersion = pulumi.Input.asOptionalInput<String>(agentVersion),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      device = pulumi.Input.asOptionalInput<DeviceDevice>(device),
      deviceFleetName = pulumi.Input.asOptionalInput<String>(deviceFleetName),
      region = pulumi.Input.asOptionalInput<String>(region);

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
      agentVersion: map['agentVersion'] == null ? null : pulumi.Output.create<String>(map['agentVersion'] as String),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      device: map['device'] == null ? null : pulumi.Output.create<DeviceDevice>(DeviceDevice.fromMap((map['device'] as Map).cast<String, dynamic>())),
      deviceFleetName: map['deviceFleetName'] == null ? null : pulumi.Output.create<String>(map['deviceFleetName'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}


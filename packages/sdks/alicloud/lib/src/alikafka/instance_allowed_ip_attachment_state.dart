// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering InstanceAllowedIpAttachment resources.
class InstanceAllowedIpAttachmentState {
  /// The IP address whitelist. It can be a CIDR block.
  final pulumi.Input<String>? allowedIp;
  /// The type of the whitelist. Valid Value: `vpc`, `internet`. **NOTE:** From version 1.179.0, `allowed_type` can be set to `internet`.
  final pulumi.Input<String>? allowedType;
  /// The ID of the instance.
  final pulumi.Input<String>? instanceId;
  /// The Port range. Valid Value: `9092/9092`, `9093/9093`, `9094/9094`, `9095/9095`. **NOTE:** From version 1.179.0, `port_range` can be set to `9093/9093`. From version 1.219.0, `port_range` can be set to `9094/9094`, `9095/9095`.
  /// - `9092/9092`: The port range for access from virtual private clouds (VPCs) by using the default endpoint.
  /// - `9093/9093`: The port range for access from the Internet.
  /// - `9094/9094`: The port range for access from VPCs by using the Simple Authentication and Security Layer (SASL) endpoint.
  /// - `9095/9095`: The port range for access from VPCs by using the Secure Sockets Layer (SSL) endpoint.
  final pulumi.Input<String>? portRange;

  /// Creates a new [InstanceAllowedIpAttachmentState].
  /// [allowedIp] The IP address whitelist. It can be a CIDR block.
  /// [allowedType] The type of the whitelist. Valid Value: `vpc`, `internet`. **NOTE:** From version 1.179.0, `allowed_type` can be set to `internet`.
  /// [instanceId] The ID of the instance.
  /// [portRange] The Port range. Valid Value: `9092/9092`, `9093/9093`, `9094/9094`, `9095/9095`. **NOTE:** From version 1.179.0, `port_range` can be set to `9093/9093`. From version 1.219.0, `port_range` can be set to `9094/9094`, `9095/9095`.
  InstanceAllowedIpAttachmentState({
    pulumi.Output<String>? allowedIp,
    pulumi.Output<String>? allowedType,
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? portRange,
  }) :
      allowedIp = pulumi.Input.asOptionalInput<String>(allowedIp),
      allowedType = pulumi.Input.asOptionalInput<String>(allowedType),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      portRange = pulumi.Input.asOptionalInput<String>(portRange);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedIp': ?allowedIp,
      'allowedType': ?allowedType,
      'instanceId': ?instanceId,
      'portRange': ?portRange,
    };
  }

  factory InstanceAllowedIpAttachmentState.fromMap(Map<String, dynamic> map) {
    return InstanceAllowedIpAttachmentState(
      allowedIp: map['allowedIp'] == null ? null : pulumi.Output.create<String>(map['allowedIp'] as String),
      allowedType: map['allowedType'] == null ? null : pulumi.Output.create<String>(map['allowedType'] as String),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      portRange: map['portRange'] == null ? null : pulumi.Output.create<String>(map['portRange'] as String),
    );
  }
}


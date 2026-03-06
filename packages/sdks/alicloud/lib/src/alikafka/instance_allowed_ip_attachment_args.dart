// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_alikafka_instance_allowed_ip_attachment_instance_allowed_ip_attachment_args_doc}
/// The set of arguments for InstanceAllowedIpAttachment.
/// {@endtemplate}
/// {@macro pulumi_alikafka_instance_allowed_ip_attachment_instance_allowed_ip_attachment_args_doc}
class InstanceAllowedIpAttachmentArgs {
  /// The IP address whitelist. It can be a CIDR block.
  final pulumi.Input<String> allowedIp;
  /// The type of the whitelist. Valid Value: `vpc`, `internet`. **NOTE:** From version 1.179.0, `allowed_type` can be set to `internet`.
  final pulumi.Input<String> allowedType;
  /// The ID of the instance.
  final pulumi.Input<String> instanceId;
  /// The Port range. Valid Value: `9092/9092`, `9093/9093`, `9094/9094`, `9095/9095`. **NOTE:** From version 1.179.0, `port_range` can be set to `9093/9093`. From version 1.219.0, `port_range` can be set to `9094/9094`, `9095/9095`.
  /// - `9092/9092`: The port range for access from virtual private clouds (VPCs) by using the default endpoint.
  /// - `9093/9093`: The port range for access from the Internet.
  /// - `9094/9094`: The port range for access from VPCs by using the Simple Authentication and Security Layer (SASL) endpoint.
  /// - `9095/9095`: The port range for access from VPCs by using the Secure Sockets Layer (SSL) endpoint.
  final pulumi.Input<String> portRange;

  /// Creates a new [InstanceAllowedIpAttachmentArgs].
  /// [allowedIp] The IP address whitelist. It can be a CIDR block.
  /// [allowedType] The type of the whitelist. Valid Value: `vpc`, `internet`. **NOTE:** From version 1.179.0, `allowed_type` can be set to `internet`.
  /// [instanceId] The ID of the instance.
  /// [portRange] The Port range. Valid Value: `9092/9092`, `9093/9093`, `9094/9094`, `9095/9095`. **NOTE:** From version 1.179.0, `port_range` can be set to `9093/9093`. From version 1.219.0, `port_range` can be set to `9094/9094`, `9095/9095`.
  const InstanceAllowedIpAttachmentArgs({
    required this.allowedIp,
    required this.allowedType,
    required this.instanceId,
    required this.portRange,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedIp': allowedIp,
      'allowedType': allowedType,
      'instanceId': instanceId,
      'portRange': portRange,
    };
  }

  factory InstanceAllowedIpAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return InstanceAllowedIpAttachmentArgs(
      allowedIp: pulumi.Input.fromValue(map['allowedIp'] as String),
      allowedType: pulumi.Input.fromValue(map['allowedType'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      portRange: pulumi.Input.fromValue(map['portRange'] as String),
    );
  }
}


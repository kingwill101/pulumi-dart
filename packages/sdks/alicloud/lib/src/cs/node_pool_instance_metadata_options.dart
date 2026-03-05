// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NodePoolInstanceMetadataOptions {
  /// ECS instance metadata access mode configuration. Value range:
  ///
  /// - 'optional': Compatible with both normal mode and reinforced mode.
  /// - 'required': Enables only hardening mode (IMDSv2). When enabled, applications in the node cannot access the ECS instance metadata in normal mode. Ensure that the component and operating system versions in the cluster meet the minimum version requirements. For more information, see [accessing ECS instance metadata in hardened mode only](https://www.alibabacloud.com/help/ack/ack-managed-and-ack-dedicated/security-and-compliance/secure-access-to-ecs-instance-metadata).
  ///
  /// Default value: 'optional '.
  ///
  /// This parameter is only supported for ACK-managed clusters of 1.28 or later versions.
  final pulumi.Input<String>? httpTokens;

  /// Creates a new [NodePoolInstanceMetadataOptions].
  /// [httpTokens] ECS instance metadata access mode configuration. Value range:
  NodePoolInstanceMetadataOptions({
    this.httpTokens,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpTokens': ?httpTokens,
    };
  }

  factory NodePoolInstanceMetadataOptions.fromMap(Map<String, dynamic> map) {
    return NodePoolInstanceMetadataOptions(
      httpTokens: (() { final guardedValue = map['httpTokens']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


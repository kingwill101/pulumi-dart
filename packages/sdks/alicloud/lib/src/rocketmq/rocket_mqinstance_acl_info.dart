// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RocketMQInstanceAclInfo {
  /// The authentication type of the instance. Valid values:
  final pulumi.Input<List<String>>? aclTypes;
  /// Indicates whether the authentication-free in VPCs feature is enabled. Indicates whether the authentication-free in VPCs feature is enabled. Valid values:
  final pulumi.Input<bool>? defaultVpcAuthFree;

  /// Creates a new [RocketMQInstanceAclInfo].
  /// [aclTypes] The authentication type of the instance. Valid values:
  /// [defaultVpcAuthFree] Indicates whether the authentication-free in VPCs feature is enabled. Indicates whether the authentication-free in VPCs feature is enabled. Valid values:
  const RocketMQInstanceAclInfo({
    this.aclTypes,
    this.defaultVpcAuthFree,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aclTypes': ?aclTypes,
      'defaultVpcAuthFree': ?defaultVpcAuthFree,
    };
  }

  factory RocketMQInstanceAclInfo.fromMap(Map<String, dynamic> map) {
    return RocketMQInstanceAclInfo(
      aclTypes: (() { final guardedValue = map['aclTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      defaultVpcAuthFree: (() { final guardedValue = map['defaultVpcAuthFree']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NetworkInterfaceSecurityGroupAttachment resources.
class NetworkInterfaceSecurityGroupAttachmentState {
  /// The ID of the network interface to attach to.
  final pulumi.Input<String>? networkInterfaceId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ID of the security group.
  final pulumi.Input<String>? securityGroupId;

  /// Creates a new [NetworkInterfaceSecurityGroupAttachmentState].
  /// [networkInterfaceId] The ID of the network interface to attach to.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [securityGroupId] The ID of the security group.
  const NetworkInterfaceSecurityGroupAttachmentState({
    this.networkInterfaceId,
    this.region,
    this.securityGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkInterfaceId': ?networkInterfaceId,
      'region': ?region,
      'securityGroupId': ?securityGroupId,
    };
  }

  factory NetworkInterfaceSecurityGroupAttachmentState.fromMap(Map<String, dynamic> map) {
    return NetworkInterfaceSecurityGroupAttachmentState(
      networkInterfaceId: (() { final guardedValue = map['networkInterfaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityGroupId: (() { final guardedValue = map['securityGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

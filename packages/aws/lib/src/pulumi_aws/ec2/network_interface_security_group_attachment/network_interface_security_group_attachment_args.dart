// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for NetworkInterfaceSecurityGroupAttachment.
class NetworkInterfaceSecurityGroupAttachmentArgs {
  /// The ID of the network interface to attach to.
  final pulumi.Input<String> networkInterfaceId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The ID of the security group.
  final pulumi.Input<String> securityGroupId;

  NetworkInterfaceSecurityGroupAttachmentArgs({
    required this.networkInterfaceId,
    this.region,
    required this.securityGroupId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['networkInterfaceId'] = networkInterfaceId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['securityGroupId'] = securityGroupId;
    return map;
  }

  factory NetworkInterfaceSecurityGroupAttachmentArgs.fromMap(
      Map<String, dynamic> map) {
    return NetworkInterfaceSecurityGroupAttachmentArgs(
      networkInterfaceId:
          pulumi.Input.asInput<String>(map['networkInterfaceId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      securityGroupId: pulumi.Input.asInput<String>(map['securityGroupId']),
    );
  }
}

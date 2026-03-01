// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2_network_interface_security_group_attachment_network_interface_security_group_attachment_args_doc}
/// The set of arguments for NetworkInterfaceSecurityGroupAttachment.
/// {@endtemplate}
/// {@macro pulumi_ec2_network_interface_security_group_attachment_network_interface_security_group_attachment_args_doc}
class NetworkInterfaceSecurityGroupAttachmentArgs {
  /// The ID of the network interface to attach to.
  final pulumi.Input<String> networkInterfaceId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The ID of the security group.
  final pulumi.Input<String> securityGroupId;

  /// Creates a new [NetworkInterfaceSecurityGroupAttachmentArgs].
  /// [networkInterfaceId] The ID of the network interface to attach to.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [securityGroupId] The ID of the security group.
  NetworkInterfaceSecurityGroupAttachmentArgs({
    required String networkInterfaceId,
    String? region,
    required String securityGroupId,
  }) : networkInterfaceId = pulumi.Input.asInput<String>(networkInterfaceId),
       region = pulumi.Input.asOptionalInput<String>(region),
       securityGroupId = pulumi.Input.asInput<String>(securityGroupId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkInterfaceId': networkInterfaceId,
      'region': ?region,
      'securityGroupId': securityGroupId,
    };
  }

  factory NetworkInterfaceSecurityGroupAttachmentArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return NetworkInterfaceSecurityGroupAttachmentArgs(
      networkInterfaceId: map['networkInterfaceId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      securityGroupId: map['securityGroupId'] as String,
    );
  }
}

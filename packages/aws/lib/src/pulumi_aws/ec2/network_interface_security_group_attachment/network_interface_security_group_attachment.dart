import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_interface_security_group_attachment_args.dart';

/// This resource attaches a security group to an Elastic Network Interface (ENI).
/// It can be used to attach a security group to any existing ENI, be it a
/// secondary ENI or one attached as the primary interface on an instance.
///
/// > **NOTE on instances, interfaces, and security groups:** This provider currently
/// provides the capability to assign security groups via the [`aws.ec2.Instance`][1]
/// and the [`aws.ec2.NetworkInterface`][2] resources. Using this resource in
/// conjunction with security groups provided in-line in those resources will cause
/// conflicts, and will lead to spurious diffs and undefined behavior - please use
/// one or the other.
///
/// ## Example Usage
///
/// The following provides a very basic example of setting up an instance (provided
/// by `instance`) in the default security group, creating a security group
/// (provided by `sg`) and then attaching the security group to the instance's
/// primary network interface via the `aws.ec2.NetworkInterfaceSecurityGroupAttachment` resource,
/// named `sg_attachment`:
///
///
///
/// In this example, `instance` is provided by the `aws.ec2.Instance` data source,
/// fetching an external instance, possibly not managed by this provider.
/// `sg_attachment` then attaches to the output instance's `network_interface_id`:
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Network Interface Security Group attachments using the associated network interface ID and security group ID, separated by an underscore (`_`). For example:
///
/// ```sh
/// $ pulumi import aws:ec2/networkInterfaceSecurityGroupAttachment:NetworkInterfaceSecurityGroupAttachment sg_attachment eni-1234567890abcdef0_sg-1234567890abcdef0
/// ```
class NetworkInterfaceSecurityGroupAttachment extends pulumi.CustomResource {
  /// The ID of the network interface to attach to.
  late final pulumi.Output<String> networkInterfaceId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The ID of the security group.
  late final pulumi.Output<String> securityGroupId;

  NetworkInterfaceSecurityGroupAttachment(
    String name, {
    NetworkInterfaceSecurityGroupAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/networkInterfaceSecurityGroupAttachment:NetworkInterfaceSecurityGroupAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.networkInterfaceId = registerOutput<String>('networkInterfaceId');
    this.region = registerOutput<String>('region');
    this.securityGroupId = registerOutput<String>('securityGroupId');
  }
}

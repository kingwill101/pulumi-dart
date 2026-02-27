import 'package:pulumi/pulumi.dart';
import 'eip_association_args.dart';

/// Provides an AWS EIP Association as a top level resource, to associate and disassociate Elastic IPs from AWS Instances and Network Interfaces.
///
/// > **NOTE:** Do not use this resource to associate an EIP to `aws.lb.LoadBalancer` or `aws.ec2.NatGateway` resources. Instead use the `allocation_id` available in those resources to allow AWS to manage the association, otherwise you will see `AuthFailure` errors.
///
/// > **NOTE:** `aws.ec2.EipAssociation` is useful in scenarios where EIPs are either pre-existing or distributed to customers or users and therefore cannot be changed.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import EIP Assocations using their association IDs. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/eipAssociation:EipAssociation test eipassoc-ab12c345
/// ```
class EipAssociation extends CustomResource {
  /// ID of the associated Elastic IP.
  /// This argument is required despite being optional at the resource level due to legacy support for EC2-Classic networking.
  late final Output<String> allocationId;

  /// Whether to allow an Elastic IP address to be re-associated.
  /// Defaults to `true`.
  late final Output<bool?> allowReassociation;

  /// ID of the instance.
  /// The instance must have exactly one attached network interface.
  /// You can specify either the instance ID or the network interface ID, but not both.
  late final Output<String> instanceId;

  /// ID of the network interface.
  /// If the instance has more than one network interface, you must specify a network interface ID.
  /// You can specify either the instance ID or the network interface ID, but not both.
  late final Output<String> networkInterfaceId;

  /// Primary or secondary private IP address to associate with the Elastic IP address.
  /// If no private IP address is specified, the Elastic IP address is associated with the primary private IP address.
  late final Output<String> privateIpAddress;

  /// ) Address of the associated Elastic IP.
  late final Output<String> publicIp;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  EipAssociation(
    String name, {
    EipAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/eipAssociation:EipAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.allocationId = registerOutput<String>('allocationId');
    this.allowReassociation = registerOutput<bool?>('allowReassociation');
    this.instanceId = registerOutput<String>('instanceId');
    this.networkInterfaceId = registerOutput<String>('networkInterfaceId');
    this.privateIpAddress = registerOutput<String>('privateIpAddress');
    this.publicIp = registerOutput<String>('publicIp');
    this.region = registerOutput<String>('region');
  }
}

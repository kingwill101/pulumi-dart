import 'package:pulumi/pulumi.dart' as pulumi;
import 'reserved_ip_assignment_args.dart';
import 'reserved_ip_assignment_vpc_nat11.dart';

class ReservedIpAssignment extends pulumi.CustomResource {
  /// The resulting IPv4 address.
  late final pulumi.Output<String> address;
  /// If true, the instance will be rebooted to update network interfaces. This functionality is not affected by the `skip_implicit_reboots` provider argument.
  late final pulumi.Output<bool> applyImmediately;
  /// The default gateway for this address
  late final pulumi.Output<String> gateway;
  /// The ID of the Linode to allocate an IPv4 address for.
  late final pulumi.Output<int> linodeId;
  /// The number of bits set in the subnet mask.
  late final pulumi.Output<int> prefix;
  /// Whether the IPv4 address is public or private.
  late final pulumi.Output<bool> public;
  /// The reverse DNS assigned to this address.
  late final pulumi.Output<String> rdns;
  /// The region this IP resides in.
  late final pulumi.Output<String> region;
  /// The reservation status of the IP address
  late final pulumi.Output<bool> reserved;
  /// The mask that separates host bits from network bits for this address.
  late final pulumi.Output<String> subnetMask;
  /// The type of IP address.
  late final pulumi.Output<String> type;
  /// Contains information about the NAT 1:1 mapping of a public IP address to a VPC subnet.
  late final pulumi.Output<List<ReservedIpAssignmentVpcNat11>> vpcNat11s;

  /// Creates a new [ReservedIpAssignment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ReservedIpAssignment]. {@macro pulumi_index_reserved_ip_assignment_reserved_ip_assignment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ReservedIpAssignment(
    String name, {
    ReservedIpAssignmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'linode:index/reservedIpAssignment:ReservedIpAssignment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.address = registerOutput<String>('address');
    this.applyImmediately = registerOutput<bool>('applyImmediately');
    this.gateway = registerOutput<String>('gateway');
    this.linodeId = registerOutput<int>('linodeId');
    this.prefix = registerOutput<int>('prefix');
    this.public = registerOutput<bool>('public');
    this.rdns = registerOutput<String>('rdns');
    this.region = registerOutput<String>('region');
    this.reserved = registerOutput<bool>('reserved');
    this.subnetMask = registerOutput<String>('subnetMask');
    this.type = registerOutput<String>('type');
    this.vpcNat11s = registerOutput<List<ReservedIpAssignmentVpcNat11>>('vpcNat11s');
  }
}

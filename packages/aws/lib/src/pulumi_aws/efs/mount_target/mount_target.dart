import 'package:pulumi/pulumi.dart';
import 'mount_target_args.dart';

/// Provides an Elastic File System (EFS) mount target.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import the EFS mount targets using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:efs/mountTarget:MountTarget alpha fsmt-52a643fb
/// ```
class MountTarget extends CustomResource {
  /// The unique and consistent identifier of the Availability Zone (AZ) that the mount target resides in.
  late final Output<String> availabilityZoneId;

  /// The name of the Availability Zone (AZ) that the mount target resides in.
  late final Output<String> availabilityZoneName;

  /// The DNS name for the EFS file system.
  late final Output<String> dnsName;

  /// Amazon Resource Name of the file system.
  late final Output<String> fileSystemArn;

  /// The ID of the file system for which the mount target is intended.
  late final Output<String> fileSystemId;

  /// The address (within the address range of the specified subnet) at
  /// which the file system may be mounted via the mount target.
  late final Output<String> ipAddress;

  /// IP address type for the mount target. Valid values are `IPV4_ONLY` (only IPv4 addresses), `IPV6_ONLY` (only IPv6 addresses), and `DUAL_STACK` (dual-stack, both IPv4 and IPv6 addresses). Defaults to `IPV4_ONLY`.
  late final Output<String> ipAddressType;

  /// IPv6 address to use. Valid only when `ip_address_type` is set to `IPV6_ONLY` or `DUAL_STACK`.
  late final Output<String> ipv6Address;

  /// The DNS name for the given subnet/AZ per [documented convention](http://docs.aws.amazon.com/efs/latest/ug/mounting-fs-mount-cmd-dns-name.html).
  late final Output<String> mountTargetDnsName;

  /// The ID of the network interface that Amazon EFS created when it created the mount target.
  late final Output<String> networkInterfaceId;

  /// AWS account ID that owns the resource.
  late final Output<String> ownerId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A list of up to 5 VPC security group IDs (that must
  /// be for the same VPC as subnet specified) in effect for the mount target.
  late final Output<List<String>> securityGroups;

  /// The ID of the subnet to add the mount target in.
  late final Output<String> subnetId;

  MountTarget(
    String name, {
    MountTargetArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:efs/mountTarget:MountTarget',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.availabilityZoneId = registerOutput<String>('availabilityZoneId');
    this.availabilityZoneName = registerOutput<String>('availabilityZoneName');
    this.dnsName = registerOutput<String>('dnsName');
    this.fileSystemArn = registerOutput<String>('fileSystemArn');
    this.fileSystemId = registerOutput<String>('fileSystemId');
    this.ipAddress = registerOutput<String>('ipAddress');
    this.ipAddressType = registerOutput<String>('ipAddressType');
    this.ipv6Address = registerOutput<String>('ipv6Address');
    this.mountTargetDnsName = registerOutput<String>('mountTargetDnsName');
    this.networkInterfaceId = registerOutput<String>('networkInterfaceId');
    this.ownerId = registerOutput<String>('ownerId');
    this.region = registerOutput<String>('region');
    this.securityGroups = registerOutput<List<String>>('securityGroups');
    this.subnetId = registerOutput<String>('subnetId');
  }
}

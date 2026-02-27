import 'package:pulumi/pulumi.dart';
import '../network_interface_attachment/network_interface_attachment.dart';
import 'network_interface_args.dart';

/// Provides an Elastic network interface (ENI) resource.
///
/// ## Example Usage
///
///
///
/// ### Example of Managing Multiple IPs on a Network Interface
///
/// By default, private IPs are managed through the `private_ips` and `private_ips_count` arguments which manage IPs as a set of IPs that are configured without regard to order. For a new network interface, the same primary IP address is consistently selected from a given set of addresses, regardless of the order provided. However, modifications of the set of addresses of an existing interface will not alter the current primary IP address unless it has been removed from the set.
///
/// In order to manage the private IPs as a sequentially ordered list, configure `private_ip_list_enabled` to `true` and use `private_ip_list` to manage the IPs. This will disable the `private_ips` and `private_ips_count` settings, which must be removed from the config file but are still exported. Note that changing the first address of `private_ip_list`, which is the primary, always requires a new interface.
///
/// If you are managing a specific set or list of IPs, instead of just using `private_ips_count`, this is a potential workflow for also leveraging `private_ips_count` to have AWS automatically assign additional IP addresses:
///
/// 1. Comment out `private_ips`, `private_ip_list`, `private_ip_list_enabled` in your configuration
/// 2. Set the desired `private_ips_count` (count of the number of secondaries, the primary is not included)
/// 3. Apply to assign the extra IPs
/// 4. Remove `private_ips_count` and restore your settings from the first step
/// 5. Add the new IPs to your current settings
/// 6. Apply again to update the stored state
///
/// This process can also be used to remove IP addresses in addition to the option of manually removing them. Adding IP addresses in a manually is more difficult because it requires knowledge of which addresses are available.
///
/// ## Import
///
/// Using `pulumi import`, import Network Interfaces using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/networkInterface:NetworkInterface test eni-e5aa89a3
/// ```
class NetworkInterface extends CustomResource {
  /// ARN of the network interface.
  late final Output<String> arn;

  /// Configuration block to define the attachment of the ENI. See Attachment below for more details!
  late final Output<List<NetworkInterfaceAttachment>> attachments;

  /// Description for the network interface.
  late final Output<String?> description;

  /// Enables assigning a primary IPv6 Global Unicast Address (GUA) to the network interface (ENI) in dual-stack or IPv6-only subnets. This ensures the instance attached to the ENI retains a consistent IPv6 address. Once enabled, the first IPv6 GUA becomes the primary IPv6 address and cannot be disabled. The primary IPv6 address remains assigned until the instance is terminated or the ENI is detached. Enabling and subsequent disabling forces recreation of the ENI.
  late final Output<bool> enablePrimaryIpv6;

  /// Type of network interface to create. Set to `efa` for Elastic Fabric Adapter. Changing `interface_type` will cause the resource to be destroyed and re-created.
  late final Output<String> interfaceType;

  /// Number of IPv4 prefixes that AWS automatically assigns to the network interface.
  late final Output<int> ipv4PrefixCount;

  /// One or more IPv4 prefixes assigned to the network interface.
  late final Output<List<String>> ipv4Prefixes;

  /// Number of IPv6 addresses to assign to a network interface. You can't use this option if specifying specific `ipv6_addresses`. If your subnet has the AssignIpv6AddressOnCreation attribute set to `true`, you can specify `0` to override this setting.
  late final Output<int> ipv6AddressCount;

  /// Whether `ipv6_address_list` is allowed and controls the IPs to assign to the ENI and `ipv6_addresses` and `ipv6_address_count` become read-only. Default is `false`.
  late final Output<bool?> ipv6AddressListEnabled;

  /// List of private IPs to assign to the ENI in sequential order.
  late final Output<List<String>> ipv6AddressLists;

  /// One or more specific IPv6 addresses from the IPv6 CIDR block range of your subnet. Addresses are assigned without regard to order. You can't use this option if you're specifying `ipv6_address_count`.
  late final Output<List<String>> ipv6Addresses;

  /// Number of IPv6 prefixes that AWS automatically assigns to the network interface.
  late final Output<int> ipv6PrefixCount;

  /// One or more IPv6 prefixes assigned to the network interface.
  late final Output<List<String>> ipv6Prefixes;

  /// MAC address of the network interface.
  late final Output<String> macAddress;
  late final Output<String> outpostArn;

  /// AWS account ID of the owner of the network interface.
  late final Output<String> ownerId;

  /// Private DNS name of the network interface (IPv4).
  late final Output<String> privateDnsName;
  late final Output<String> privateIp;

  /// Whether `private_ip_list` is allowed and controls the IPs to assign to the ENI and `private_ips` and `private_ips_count` become read-only. Default is `false`.
  late final Output<bool?> privateIpListEnabled;

  /// List of private IPs to assign to the ENI in sequential order. Requires setting `private_ip_list_enabled` to `true`.
  late final Output<List<String>> privateIpLists;

  /// List of private IPs to assign to the ENI without regard to order.
  late final Output<List<String>> privateIps;

  /// Number of secondary private IPs to assign to the ENI. The total number of private IPs will be 1 + `private_ips_count`, as a primary private IP will be assiged to an ENI by default.
  late final Output<int> privateIpsCount;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// List of security group IDs to assign to the ENI.
  late final Output<List<String>> securityGroups;

  /// Whether to enable source destination checking for the ENI. Default true.
  late final Output<bool?> sourceDestCheck;

  /// Subnet ID to create the ENI in.
  ///
  /// The following arguments are optional:
  late final Output<String> subnetId;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  NetworkInterface(
    String name, {
    NetworkInterfaceArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/networkInterface:NetworkInterface',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.attachments =
        registerOutput<List<NetworkInterfaceAttachment>>('attachments');
    this.description = registerOutput<String?>('description');
    this.enablePrimaryIpv6 = registerOutput<bool>('enablePrimaryIpv6');
    this.interfaceType = registerOutput<String>('interfaceType');
    this.ipv4PrefixCount = registerOutput<int>('ipv4PrefixCount');
    this.ipv4Prefixes = registerOutput<List<String>>('ipv4Prefixes');
    this.ipv6AddressCount = registerOutput<int>('ipv6AddressCount');
    this.ipv6AddressListEnabled =
        registerOutput<bool?>('ipv6AddressListEnabled');
    this.ipv6AddressLists = registerOutput<List<String>>('ipv6AddressLists');
    this.ipv6Addresses = registerOutput<List<String>>('ipv6Addresses');
    this.ipv6PrefixCount = registerOutput<int>('ipv6PrefixCount');
    this.ipv6Prefixes = registerOutput<List<String>>('ipv6Prefixes');
    this.macAddress = registerOutput<String>('macAddress');
    this.outpostArn = registerOutput<String>('outpostArn');
    this.ownerId = registerOutput<String>('ownerId');
    this.privateDnsName = registerOutput<String>('privateDnsName');
    this.privateIp = registerOutput<String>('privateIp');
    this.privateIpListEnabled = registerOutput<bool?>('privateIpListEnabled');
    this.privateIpLists = registerOutput<List<String>>('privateIpLists');
    this.privateIps = registerOutput<List<String>>('privateIps');
    this.privateIpsCount = registerOutput<int>('privateIpsCount');
    this.region = registerOutput<String>('region');
    this.securityGroups = registerOutput<List<String>>('securityGroups');
    this.sourceDestCheck = registerOutput<bool?>('sourceDestCheck');
    this.subnetId = registerOutput<String>('subnetId');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}

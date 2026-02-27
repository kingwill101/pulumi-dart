import 'package:pulumi/pulumi.dart';
import 'vpc_dhcp_options_args.dart';

/// Provides a VPC DHCP Options resource.
///
/// ## Example Usage
///
/// Basic usage:
///
///
///
/// Full usage:
///
///
///
/// ## Remarks
///
/// * Notice that all arguments are optional but you have to specify at least one argument.
/// * `domain_name_servers`, `netbios_name_servers`, `ntp_servers` are limited by AWS to maximum four servers only.
/// * To actually use the DHCP Options Set you need to associate it to a VPC using `aws.ec2.VpcDhcpOptionsAssociation`.
/// * If you delete a DHCP Options Set, all VPCs using it will be associated to AWS's `default` DHCP Option Set.
/// * In most cases unless you're configuring your own DNS you'll want to set `domain_name_servers` to `AmazonProvidedDNS`.
///
/// ## Import
///
/// Using `pulumi import`, import VPC DHCP Options using the DHCP Options `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/vpcDhcpOptions:VpcDhcpOptions my_options dopt-d9070ebb
/// ```
class VpcDhcpOptions extends CustomResource {
  /// The ARN of the DHCP Options Set.
  late final Output<String> arn;

  /// the suffix domain name to use by default when resolving non Fully Qualified Domain Names. In other words, this is what ends up being the `search` value in the `/etc/resolv.conf` file.
  late final Output<String?> domainName;

  /// List of name servers to configure in `/etc/resolv.conf`. If you want to use the default AWS nameservers you should set this to `AmazonProvidedDNS`.
  late final Output<List<String>?> domainNameServers;

  /// How frequently, in seconds, a running instance with an IPv6 assigned to it goes through DHCPv6 lease renewal. Acceptable values are between 140 and 2147483647 (approximately 68 years). If no value is entered, the default lease time is 140 seconds. If you use long-term addressing for EC2 instances, you can increase the lease time and avoid frequent lease renewal requests. Lease renewal typically occurs when half of the lease time has elapsed.
  late final Output<String?> ipv6AddressPreferredLeaseTime;

  /// List of NETBIOS name servers.
  late final Output<List<String>?> netbiosNameServers;

  /// The NetBIOS node type (1, 2, 4, or 8). AWS recommends to specify 2 since broadcast and multicast are not supported in their network. For more information about these node types, see [RFC 2132](http://www.ietf.org/rfc/rfc2132.txt).
  late final Output<String?> netbiosNodeType;

  /// List of NTP servers to configure.
  late final Output<List<String>?> ntpServers;

  /// The ID of the AWS account that owns the DHCP options set.
  late final Output<String> ownerId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  VpcDhcpOptions(
    String name, {
    VpcDhcpOptionsArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/vpcDhcpOptions:VpcDhcpOptions',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.domainName = registerOutput<String?>('domainName');
    this.domainNameServers = registerOutput<List<String>?>('domainNameServers');
    this.ipv6AddressPreferredLeaseTime =
        registerOutput<String?>('ipv6AddressPreferredLeaseTime');
    this.netbiosNameServers =
        registerOutput<List<String>?>('netbiosNameServers');
    this.netbiosNodeType = registerOutput<String?>('netbiosNodeType');
    this.ntpServers = registerOutput<List<String>?>('ntpServers');
    this.ownerId = registerOutput<String>('ownerId');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}

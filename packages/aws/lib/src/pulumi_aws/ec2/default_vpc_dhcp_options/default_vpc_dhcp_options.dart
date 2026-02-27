import 'package:pulumi/pulumi.dart';
import 'default_vpc_dhcp_options_args.dart';

/// Provides a resource to manage the [default AWS DHCP Options Set](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_DHCP_Options.html#AmazonDNS)
/// in the current region.
///
/// Each AWS region comes with a default set of DHCP options.
/// **This is an advanced resource**, and has special caveats to be aware of when
/// using it. Please read this document in its entirety before using this resource.
///
/// The `aws.ec2.DefaultVpcDhcpOptions` behaves differently from normal resources, in that
/// this provider does not _create_ this resource, but instead "adopts" it
/// into management.
///
/// ## Example Usage
///
/// Basic usage with tags:
///
///
///
/// ## Import
///
/// Using `pulumi import`, import VPC DHCP Options using the DHCP Options `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/defaultVpcDhcpOptions:DefaultVpcDhcpOptions default_options dopt-d9070ebb
/// ```
class DefaultVpcDhcpOptions extends CustomResource {
  /// The ARN of the DHCP Options Set.
  late final Output<String> arn;
  late final Output<String> domainName;
  late final Output<String> domainNameServers;
  late final Output<String> ipv6AddressPreferredLeaseTime;

  /// List of NETBIOS name servers.
  late final Output<String> netbiosNameServers;

  /// The NetBIOS node type (1, 2, 4, or 8). AWS recommends to specify 2 since broadcast and multicast are not supported in their network. For more information about these node types, see [RFC 2132](http://www.ietf.org/rfc/rfc2132.txt).
  late final Output<String> netbiosNodeType;
  late final Output<String> ntpServers;

  /// The ID of the AWS account that owns the DHCP options set.
  late final Output<String> ownerId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
  late final Output<String> region;

  /// A map of tags to assign to the resource.
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;

  DefaultVpcDhcpOptions(
    String name, {
    DefaultVpcDhcpOptionsArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/defaultVpcDhcpOptions:DefaultVpcDhcpOptions',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.domainName = registerOutput<String>('domainName');
    this.domainNameServers = registerOutput<String>('domainNameServers');
    this.ipv6AddressPreferredLeaseTime =
        registerOutput<String>('ipv6AddressPreferredLeaseTime');
    this.netbiosNameServers = registerOutput<String>('netbiosNameServers');
    this.netbiosNodeType = registerOutput<String>('netbiosNodeType');
    this.ntpServers = registerOutput<String>('ntpServers');
    this.ownerId = registerOutput<String>('ownerId');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}

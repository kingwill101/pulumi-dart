import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_dhcp_options_args.dart';
import 'vpc_dhcp_options_state.dart';

/// Provides a VPC DHCP Options resource.
///
/// ## Example Usage
///
/// Basic usage:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const dnsResolver = new aws.ec2.VpcDhcpOptions("dns_resolver", {domainNameServers: [
///     "8.8.8.8",
///     "8.8.4.4",
/// ]});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// dns_resolver = aws.ec2.VpcDhcpOptions("dns_resolver", domain_name_servers=[
///     "8.8.8.8",
///     "8.8.4.4",
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dnsResolver = new Aws.Ec2.VpcDhcpOptions("dns_resolver", new()
///     {
///         DomainNameServers = new[]
///         {
///             "8.8.8.8",
///             "8.8.4.4",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2.NewVpcDhcpOptions(ctx, "dns_resolver", &ec2.VpcDhcpOptionsArgs{
/// 			DomainNameServers: pulumi.StringArray{
/// 				pulumi.String("8.8.8.8"),
/// 				pulumi.String("8.8.4.4"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_ec2_vpcdhcpoptions" "dns_resolver" {
///   domain_name_servers = ["8.8.8.8", "8.8.4.4"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.VpcDhcpOptions;
/// import com.pulumi.aws.ec2.VpcDhcpOptionsArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var dnsResolver = new VpcDhcpOptions("dnsResolver", VpcDhcpOptionsArgs.builder()
///             .domainNameServers(
///                 "8.8.8.8",
///                 "8.8.4.4")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   dnsResolver:
///     type: aws:ec2:VpcDhcpOptions
///     name: dns_resolver
///     properties:
///       domainNameServers:
///         - 8.8.8.8
///         - 8.8.4.4
/// ```
///
///
/// Full usage:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const foo = new aws.ec2.VpcDhcpOptions("foo", {
///     domainName: "service.consul",
///     domainNameServers: [
///         "127.0.0.1",
///         "10.0.0.2",
///     ],
///     ipv6AddressPreferredLeaseTime: "1440",
///     ntpServers: ["127.0.0.1"],
///     netbiosNameServers: ["127.0.0.1"],
///     netbiosNodeType: "2",
///     tags: {
///         Name: "foo-name",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// foo = aws.ec2.VpcDhcpOptions("foo",
///     domain_name="service.consul",
///     domain_name_servers=[
///         "127.0.0.1",
///         "10.0.0.2",
///     ],
///     ipv6_address_preferred_lease_time="1440",
///     ntp_servers=["127.0.0.1"],
///     netbios_name_servers=["127.0.0.1"],
///     netbios_node_type="2",
///     tags={
///         "Name": "foo-name",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = new Aws.Ec2.VpcDhcpOptions("foo", new()
///     {
///         DomainName = "service.consul",
///         DomainNameServers = new[]
///         {
///             "127.0.0.1",
///             "10.0.0.2",
///         },
///         Ipv6AddressPreferredLeaseTime = "1440",
///         NtpServers = new[]
///         {
///             "127.0.0.1",
///         },
///         NetbiosNameServers = new[]
///         {
///             "127.0.0.1",
///         },
///         NetbiosNodeType = "2",
///         Tags =
///         {
///             { "Name", "foo-name" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2.NewVpcDhcpOptions(ctx, "foo", &ec2.VpcDhcpOptionsArgs{
/// 			DomainName: pulumi.String("service.consul"),
/// 			DomainNameServers: pulumi.StringArray{
/// 				pulumi.String("127.0.0.1"),
/// 				pulumi.String("10.0.0.2"),
/// 			},
/// 			Ipv6AddressPreferredLeaseTime: pulumi.String("1440"),
/// 			NtpServers: pulumi.StringArray{
/// 				pulumi.String("127.0.0.1"),
/// 			},
/// 			NetbiosNameServers: pulumi.StringArray{
/// 				pulumi.String("127.0.0.1"),
/// 			},
/// 			NetbiosNodeType: pulumi.String("2"),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("foo-name"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_ec2_vpcdhcpoptions" "foo" {
///   domain_name                       = "service.consul"
///   domain_name_servers               = ["127.0.0.1", "10.0.0.2"]
///   ipv6_address_preferred_lease_time = 1440
///   ntp_servers                       = ["127.0.0.1"]
///   netbios_name_servers              = ["127.0.0.1"]
///   netbios_node_type                 = 2
///   tags = {
///     "Name" = "foo-name"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.VpcDhcpOptions;
/// import com.pulumi.aws.ec2.VpcDhcpOptionsArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var foo = new VpcDhcpOptions("foo", VpcDhcpOptionsArgs.builder()
///             .domainName("service.consul")
///             .domainNameServers(
///                 "127.0.0.1",
///                 "10.0.0.2")
///             .ipv6AddressPreferredLeaseTime("1440")
///             .ntpServers("127.0.0.1")
///             .netbiosNameServers("127.0.0.1")
///             .netbiosNodeType("2")
///             .tags(Map.of("Name", "foo-name"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: aws:ec2:VpcDhcpOptions
///     properties:
///       domainName: service.consul
///       domainNameServers:
///         - 127.0.0.1
///         - 10.0.0.2
///       ipv6AddressPreferredLeaseTime: 1440
///       ntpServers:
///         - 127.0.0.1
///       netbiosNameServers:
///         - 127.0.0.1
///       netbiosNodeType: 2
///       tags:
///         Name: foo-name
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import VPC DHCP Options using the DHCP Options `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/vpcDhcpOptions:VpcDhcpOptions my_options dopt-d9070ebb
/// ```
class VpcDhcpOptions extends pulumi.CustomResource {
  /// The ARN of the DHCP Options Set.
  late final pulumi.Output<String> arn;
  /// the suffix domain name to use by default when resolving non Fully Qualified Domain Names. In other words, this is what ends up being the `search` value in the `/etc/resolv.conf` file.
  late final pulumi.Output<String?> domainName;
  /// List of name servers to configure in `/etc/resolv.conf`. If you want to use the default AWS nameservers you should set this to `AmazonProvidedDNS`.
  late final pulumi.Output<List<String>?> domainNameServers;
  /// How frequently, in seconds, a running instance with an IPv6 assigned to it goes through DHCPv6 lease renewal. Acceptable values are between 140 and 2147483647 (approximately 68 years). If no value is entered, the default lease time is 140 seconds. If you use long-term addressing for EC2 instances, you can increase the lease time and avoid frequent lease renewal requests. Lease renewal typically occurs when half of the lease time has elapsed.
  late final pulumi.Output<String?> ipv6AddressPreferredLeaseTime;
  /// List of NETBIOS name servers.
  late final pulumi.Output<List<String>?> netbiosNameServers;
  /// The NetBIOS node type (1, 2, 4, or 8). AWS recommends to specify 2 since broadcast and multicast are not supported in their network. For more information about these node types, see [RFC 2132](http://www.ietf.org/rfc/rfc2132.txt).
  late final pulumi.Output<String?> netbiosNodeType;
  /// List of NTP servers to configure.
  late final pulumi.Output<List<String>?> ntpServers;
  /// The ID of the AWS account that owns the DHCP options set.
  late final pulumi.Output<String> ownerId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// A map of tags to assign to the resource. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// &gt; **Note:** All arguments are optional but at least one must be specified. `domainNameServers`, `netbiosNameServers`, and `ntpServers` are limited to four servers each. To use the DHCP Options Set you must associate it to a VPC using `aws.ec2.VpcDhcpOptionsAssociation`. If you delete a DHCP Options Set, all VPCs using it will be associated to AWS's `default` DHCP Option Set. In most cases, set `domainNameServers` to `AmazonProvidedDNS` unless configuring your own DNS.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [VpcDhcpOptions].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VpcDhcpOptions]. {@macro pulumi_ec2_vpc_dhcp_options_vpc_dhcp_options_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VpcDhcpOptions(
    String name, {
    VpcDhcpOptionsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/vpcDhcpOptions:VpcDhcpOptions',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    domainName = registerOutput<String?>('domainName');
    domainNameServers = registerOutput<List<String>?>('domainNameServers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    ipv6AddressPreferredLeaseTime = registerOutput<String?>('ipv6AddressPreferredLeaseTime');
    netbiosNameServers = registerOutput<List<String>?>('netbiosNameServers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    netbiosNodeType = registerOutput<String?>('netbiosNodeType');
    ntpServers = registerOutput<List<String>?>('ntpServers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    ownerId = registerOutput<String>('ownerId');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [VpcDhcpOptions] resource's state with the given [name] and [id].
  static VpcDhcpOptions get(
    String name,
    pulumi.Input<String> id, {
    VpcDhcpOptionsState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return VpcDhcpOptions._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  VpcDhcpOptions._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/vpcDhcpOptions:VpcDhcpOptions',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    domainName = registerOutput<String?>('domainName');
    domainNameServers = registerOutput<List<String>?>('domainNameServers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    ipv6AddressPreferredLeaseTime = registerOutput<String?>('ipv6AddressPreferredLeaseTime');
    netbiosNameServers = registerOutput<List<String>?>('netbiosNameServers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    netbiosNodeType = registerOutput<String?>('netbiosNodeType');
    ntpServers = registerOutput<List<String>?>('ntpServers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    ownerId = registerOutput<String>('ownerId');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [VpcDhcpOptions] resource.
  VpcDhcpOptions.reference(String urn)
    : super(
        'aws:ec2/vpcDhcpOptions:VpcDhcpOptions',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    domainName = registerOutput<String?>('domainName');
    domainNameServers = registerOutput<List<String>?>('domainNameServers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    ipv6AddressPreferredLeaseTime = registerOutput<String?>('ipv6AddressPreferredLeaseTime');
    netbiosNameServers = registerOutput<List<String>?>('netbiosNameServers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    netbiosNodeType = registerOutput<String?>('netbiosNodeType');
    ntpServers = registerOutput<List<String>?>('ntpServers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    ownerId = registerOutput<String>('ownerId');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}

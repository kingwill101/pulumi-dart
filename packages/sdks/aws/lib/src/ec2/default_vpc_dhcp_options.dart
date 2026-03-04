import 'package:pulumi/pulumi.dart' as pulumi;
import 'default_vpc_dhcp_options_args.dart';
import 'default_vpc_dhcp_options_state.dart';

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
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const _default = new aws.ec2.DefaultVpcDhcpOptions("default", {tags: {
///     Name: "Default DHCP Option Set",
/// }});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// default = aws.ec2.DefaultVpcDhcpOptions("default", tags={
///     "Name": "Default DHCP Option Set",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Aws.Ec2.DefaultVpcDhcpOptions("default", new()
///     {
///         Tags =
///         {
///             { "Name", "Default DHCP Option Set" },
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
/// 		_, err := ec2.NewDefaultVpcDhcpOptions(ctx, "default", &ec2.DefaultVpcDhcpOptionsArgs{
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("Default DHCP Option Set"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.DefaultVpcDhcpOptions;
/// import com.pulumi.aws.ec2.DefaultVpcDhcpOptionsArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var default_ = new DefaultVpcDhcpOptions("default", DefaultVpcDhcpOptionsArgs.builder()
///             .tags(Map.of("Name", "Default DHCP Option Set"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: aws:ec2:DefaultVpcDhcpOptions
///     properties:
///       tags:
///         Name: Default DHCP Option Set
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import VPC DHCP Options using the DHCP Options `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/defaultVpcDhcpOptions:DefaultVpcDhcpOptions default_options dopt-d9070ebb
/// ```
class DefaultVpcDhcpOptions extends pulumi.CustomResource {
  /// The ARN of the DHCP Options Set.
  late final pulumi.Output<String> arn;
  late final pulumi.Output<String> domainName;
  late final pulumi.Output<String> domainNameServers;
  late final pulumi.Output<String> ipv6AddressPreferredLeaseTime;

  /// List of NETBIOS name servers.
  late final pulumi.Output<String> netbiosNameServers;

  /// The NetBIOS node type (1, 2, 4, or 8). AWS recommends to specify 2 since broadcast and multicast are not supported in their network. For more information about these node types, see [RFC 2132](http://www.ietf.org/rfc/rfc2132.txt).
  late final pulumi.Output<String> netbiosNodeType;
  late final pulumi.Output<String> ntpServers;

  /// The ID of the AWS account that owns the DHCP options set.
  late final pulumi.Output<String> ownerId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
  late final pulumi.Output<String> region;

  /// A map of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [DefaultVpcDhcpOptions].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DefaultVpcDhcpOptions]. {@macro pulumi_ec2_default_vpc_dhcp_options_default_vpc_dhcp_options_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DefaultVpcDhcpOptions(
    String name, {
    DefaultVpcDhcpOptionsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:ec2/defaultVpcDhcpOptions:DefaultVpcDhcpOptions',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    domainName = registerOutput<String>('domainName');
    domainNameServers = registerOutput<String>('domainNameServers');
    ipv6AddressPreferredLeaseTime = registerOutput<String>(
      'ipv6AddressPreferredLeaseTime',
    );
    netbiosNameServers = registerOutput<String>('netbiosNameServers');
    netbiosNodeType = registerOutput<String>('netbiosNodeType');
    ntpServers = registerOutput<String>('ntpServers');
    ownerId = registerOutput<String>('ownerId');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [DefaultVpcDhcpOptions] resource's state with the given [name] and [id].
  static DefaultVpcDhcpOptions get(
    String name,
    pulumi.Input<String> id, {
    DefaultVpcDhcpOptionsState? state,
  }) {
    return DefaultVpcDhcpOptions._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DefaultVpcDhcpOptions._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:ec2/defaultVpcDhcpOptions:DefaultVpcDhcpOptions',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    domainName = registerOutput<String>('domainName');
    domainNameServers = registerOutput<String>('domainNameServers');
    ipv6AddressPreferredLeaseTime = registerOutput<String>(
      'ipv6AddressPreferredLeaseTime',
    );
    netbiosNameServers = registerOutput<String>('netbiosNameServers');
    netbiosNodeType = registerOutput<String>('netbiosNodeType');
    ntpServers = registerOutput<String>('ntpServers');
    ownerId = registerOutput<String>('ownerId');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dhcp_options_set_args.dart';
import 'dhcp_options_set_state.dart';

/// Provides a VPC Dhcp Options Set resource.
///
/// DHCP option set.
///
/// For information about VPC Dhcp Options Set and how to use it, see [What is Dhcp Options Set](https://www.alibabacloud.com/help/en/virtual-private-cloud/latest/dhcp-options-sets-overview).
///
/// &gt; **NOTE:** Available since v1.134.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const domain = config.get("domain") || "terraform-example.com";
/// const example = new alicloud.vpc.DhcpOptionsSet("example", {
///     dhcpOptionsSetName: name,
///     dhcpOptionsSetDescription: name,
///     domainName: domain,
///     domainNameServers: "100.100.2.136",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// domain = config.get("domain")
/// if domain is None:
///     domain = "terraform-example.com"
/// example = alicloud.vpc.DhcpOptionsSet("example",
///     dhcp_options_set_name=name,
///     dhcp_options_set_description=name,
///     domain_name=domain,
///     domain_name_servers="100.100.2.136")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var domain = config.Get("domain") ?? "terraform-example.com";
///     var example = new AliCloud.Vpc.DhcpOptionsSet("example", new()
///     {
///         DhcpOptionsSetName = name,
///         DhcpOptionsSetDescription = name,
///         DomainName = domain,
///         DomainNameServers = "100.100.2.136",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		domain := "terraform-example.com"
/// 		if param := cfg.Get("domain"); param != "" {
/// 			domain = param
/// 		}
/// 		_, err := vpc.NewDhcpOptionsSet(ctx, "example", &vpc.DhcpOptionsSetArgs{
/// 			DhcpOptionsSetName:        pulumi.String(name),
/// 			DhcpOptionsSetDescription: pulumi.String(name),
/// 			DomainName:                pulumi.String(domain),
/// 			DomainNameServers:         pulumi.String("100.100.2.136"),
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
/// import com.pulumi.alicloud.vpc.DhcpOptionsSet;
/// import com.pulumi.alicloud.vpc.DhcpOptionsSetArgs;
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
///         final var config = ctx.config();
///         final var name = config.get("name").orElse("terraform-example");
///         final var domain = config.get("domain").orElse("terraform-example.com");
///         var example = new DhcpOptionsSet("example", DhcpOptionsSetArgs.builder()
///             .dhcpOptionsSetName(name)
///             .dhcpOptionsSetDescription(name)
///             .domainName(domain)
///             .domainNameServers("100.100.2.136")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
///   domain:
///     type: string
///     default: terraform-example.com
/// resources:
///   example:
///     type: alicloud:vpc:DhcpOptionsSet
///     properties:
///       dhcpOptionsSetName: ${name}
///       dhcpOptionsSetDescription: ${name}
///       domainName: ${domain}
///       domainNameServers: 100.100.2.136
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// VPC Dhcp Options Set can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:vpc/dhcpOptionsSet:DhcpOptionsSet example <id>
/// ```
class DhcpOptionsSet extends pulumi.CustomResource {
  /// Field 'associate_vpcs' has been deprecated from provider version 1.153.0 and it will be removed in the future version. Please use the new resource 'alicloud_vpc_dhcp_options_set_attachment' to attach DhcpOptionsSet and Vpc. See `associate_vpcs` below.
  late final pulumi.Output<List<Map<String, dynamic>>> associateVpcs;

  /// The description can be blank or contain 1 to 256 characters. It must start with a letter or Chinese character but cannot start with http:// or https://.
  late final pulumi.Output<String?> dhcpOptionsSetDescription;

  /// The name of the DHCP options set.
  /// The name must be 1 to 128 characters in length and can contain letters, digits, underscores (_), and hyphens (-). It must start with a letter.
  late final pulumi.Output<String?> dhcpOptionsSetName;

  /// The root domain. For example, you can set the value to example.com.
  /// After a DHCP options set is associated with a virtual private cloud (VPC), the root domain in the DHCP options set is automatically synchronized with the ECS instances in the VPC.
  late final pulumi.Output<String?> domainName;

  /// The IP address of the DNS server. You can enter at most four DNS server IP addresses. Separate IP addresses with commas (,).
  /// If no IP address is specified, the Elastic Compute Service (ECS) instance uses the IP addresses 100.100.2.136 and 100.100.2.138, which are provided by Alibaba Cloud by default.
  late final pulumi.Output<String?> domainNameServers;

  /// Whether to PreCheck only this request, value:
  late final pulumi.Output<bool?> dryRun;

  /// The lease time of the IPv6 DHCP option set.
  /// When the lease time is set to hours: Unit: h. Value range: 24h ~ 1176h,87600h ~ 175200h. Default value: 87600h.
  /// When the lease time is set to day: Unit: d. Value range: 1d ~ 49d,3650d ~ 7300d. Default value: 1d.
  late final pulumi.Output<String> ipv6LeaseTime;

  /// The lease time of the IPv4 addresses for the DHCP options set.
  /// If you use hours as the unit, valid values are 24h to 1176h and 87600h to 175200h. Default value: 87600h.
  /// If you use days as the unit, valid values are 1d to 49d and 3650d to 7300d. Default value: 3650d.
  late final pulumi.Output<String> leaseTime;

  /// The ID of the account to which the DHCP options set belongs.
  late final pulumi.Output<int> ownerId;

  /// The ID of the resource group to which the DHCP options set belongs.
  late final pulumi.Output<String> resourceGroupId;

  /// The status of the resource.
  late final pulumi.Output<String> status;

  /// Tags of the current resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [DhcpOptionsSet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DhcpOptionsSet]. {@macro pulumi_vpc_dhcp_options_set_dhcp_options_set_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DhcpOptionsSet(
    String name, {
    DhcpOptionsSetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:vpc/dhcpOptionsSet:DhcpOptionsSet',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    associateVpcs = registerOutput<List<Map<String, dynamic>>>('associateVpcs');
    dhcpOptionsSetDescription = registerOutput<String?>(
      'dhcpOptionsSetDescription',
    );
    dhcpOptionsSetName = registerOutput<String?>('dhcpOptionsSetName');
    domainName = registerOutput<String?>('domainName');
    domainNameServers = registerOutput<String?>('domainNameServers');
    dryRun = registerOutput<bool?>('dryRun');
    ipv6LeaseTime = registerOutput<String>('ipv6LeaseTime');
    leaseTime = registerOutput<String>('leaseTime');
    ownerId = registerOutput<int>('ownerId');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [DhcpOptionsSet] resource's state with the given [name] and [id].
  static DhcpOptionsSet get(
    String name,
    pulumi.Input<String> id, {
    DhcpOptionsSetState? state,
  }) {
    return DhcpOptionsSet._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DhcpOptionsSet._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:vpc/dhcpOptionsSet:DhcpOptionsSet',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    associateVpcs = registerOutput<List<Map<String, dynamic>>>('associateVpcs');
    dhcpOptionsSetDescription = registerOutput<String?>(
      'dhcpOptionsSetDescription',
    );
    dhcpOptionsSetName = registerOutput<String?>('dhcpOptionsSetName');
    domainName = registerOutput<String?>('domainName');
    domainNameServers = registerOutput<String?>('domainNameServers');
    dryRun = registerOutput<bool?>('dryRun');
    ipv6LeaseTime = registerOutput<String>('ipv6LeaseTime');
    leaseTime = registerOutput<String>('leaseTime');
    ownerId = registerOutput<int>('ownerId');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dhcp_options_set_attachment_args.dart';
import 'dhcp_options_set_attachment_state.dart';

/// Provides a VPC Dhcp Options Set Attachment resource.
///
/// For information about VPC Dhcp Options Set and how to use it, see [What is Dhcp Options Set](https://www.alibabacloud.com/help/doc-detail/174112.htm).
///
/// &gt; **NOTE:** Available since v1.153.0.
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
/// const name = config.get("name") || "tf-example";
/// const example = new alicloud.vpc.Network("example", {
///     vpcName: name,
///     cidrBlock: "10.4.0.0/16",
/// });
/// const exampleDhcpOptionsSet = new alicloud.vpc.DhcpOptionsSet("example", {
///     dhcpOptionsSetName: name,
///     dhcpOptionsSetDescription: name,
///     domainName: "example.com",
///     domainNameServers: "100.100.2.136",
/// });
/// const exampleDhcpOptionsSetAttachment = new alicloud.vpc.DhcpOptionsSetAttachment("example", {
///     vpcId: example.id,
///     dhcpOptionsSetId: exampleDhcpOptionsSet.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf-example"
/// example = alicloud.vpc.Network("example",
///     vpc_name=name,
///     cidr_block="10.4.0.0/16")
/// example_dhcp_options_set = alicloud.vpc.DhcpOptionsSet("example",
///     dhcp_options_set_name=name,
///     dhcp_options_set_description=name,
///     domain_name="example.com",
///     domain_name_servers="100.100.2.136")
/// example_dhcp_options_set_attachment = alicloud.vpc.DhcpOptionsSetAttachment("example",
///     vpc_id=example.id,
///     dhcp_options_set_id=example_dhcp_options_set.id)
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
///     var name = config.Get("name") ?? "tf-example";
///     var example = new AliCloud.Vpc.Network("example", new()
///     {
///         VpcName = name,
///         CidrBlock = "10.4.0.0/16",
///     });
///
///     var exampleDhcpOptionsSet = new AliCloud.Vpc.DhcpOptionsSet("example", new()
///     {
///         DhcpOptionsSetName = name,
///         DhcpOptionsSetDescription = name,
///         DomainName = "example.com",
///         DomainNameServers = "100.100.2.136",
///     });
///
///     var exampleDhcpOptionsSetAttachment = new AliCloud.Vpc.DhcpOptionsSetAttachment("example", new()
///     {
///         VpcId = example.Id,
///         DhcpOptionsSetId = exampleDhcpOptionsSet.Id,
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
/// 		name := "tf-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		example, err := vpc.NewNetwork(ctx, "example", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String(name),
/// 			CidrBlock: pulumi.String("10.4.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleDhcpOptionsSet, err := vpc.NewDhcpOptionsSet(ctx, "example", &vpc.DhcpOptionsSetArgs{
/// 			DhcpOptionsSetName:        pulumi.String(name),
/// 			DhcpOptionsSetDescription: pulumi.String(name),
/// 			DomainName:                pulumi.String("example.com"),
/// 			DomainNameServers:         pulumi.String("100.100.2.136"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vpc.NewDhcpOptionsSetAttachment(ctx, "example", &vpc.DhcpOptionsSetAttachmentArgs{
/// 			VpcId:            example.ID(),
/// 			DhcpOptionsSetId: exampleDhcpOptionsSet.ID(),
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
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.DhcpOptionsSet;
/// import com.pulumi.alicloud.vpc.DhcpOptionsSetArgs;
/// import com.pulumi.alicloud.vpc.DhcpOptionsSetAttachment;
/// import com.pulumi.alicloud.vpc.DhcpOptionsSetAttachmentArgs;
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
///         final var name = config.get("name").orElse("tf-example");
///         var example = new Network("example", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("10.4.0.0/16")
///             .build());
///
///         var exampleDhcpOptionsSet = new DhcpOptionsSet("exampleDhcpOptionsSet", DhcpOptionsSetArgs.builder()
///             .dhcpOptionsSetName(name)
///             .dhcpOptionsSetDescription(name)
///             .domainName("example.com")
///             .domainNameServers("100.100.2.136")
///             .build());
///
///         var exampleDhcpOptionsSetAttachment = new DhcpOptionsSetAttachment("exampleDhcpOptionsSetAttachment", DhcpOptionsSetAttachmentArgs.builder()
///             .vpcId(example.id())
///             .dhcpOptionsSetId(exampleDhcpOptionsSet.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tf-example
/// resources:
///   example:
///     type: alicloud:vpc:Network
///     properties:
///       vpcName: ${name}
///       cidrBlock: 10.4.0.0/16
///   exampleDhcpOptionsSet:
///     type: alicloud:vpc:DhcpOptionsSet
///     name: example
///     properties:
///       dhcpOptionsSetName: ${name}
///       dhcpOptionsSetDescription: ${name}
///       domainName: example.com
///       domainNameServers: 100.100.2.136
///   exampleDhcpOptionsSetAttachment:
///     type: alicloud:vpc:DhcpOptionsSetAttachment
///     name: example
///     properties:
///       vpcId: ${example.id}
///       dhcpOptionsSetId: ${exampleDhcpOptionsSet.id}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// VPC Dhcp Options Set Attachment can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:vpc/dhcpOptionsSetAttachment:DhcpOptionsSetAttachment example <id>
/// ```
class DhcpOptionsSetAttachment extends pulumi.CustomResource {
  /// The ID of the DHCP options set.
  late final pulumi.Output<String> dhcpOptionsSetId;
  /// Specifies whether to precheck this request only. Default values: `false`. Valid values:
  late final pulumi.Output<bool?> dryRun;
  /// The status of the VPC network that is associated with the DHCP options set.  Valid values: `InUse` or `Pending`.
  late final pulumi.Output<String> status;
  /// The ID of the VPC network that is to be associated with the DHCP options set..
  late final pulumi.Output<String> vpcId;

  /// Creates a new [DhcpOptionsSetAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DhcpOptionsSetAttachment]. {@macro pulumi_vpc_dhcp_options_set_attachment_dhcp_options_set_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DhcpOptionsSetAttachment(
    String name, {
    DhcpOptionsSetAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:vpc/dhcpOptionsSetAttachment:DhcpOptionsSetAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    dhcpOptionsSetId = registerOutput<String>('dhcpOptionsSetId');
    dryRun = registerOutput<bool?>('dryRun');
    status = registerOutput<String>('status');
    vpcId = registerOutput<String>('vpcId');
  }

  /// Gets an existing [DhcpOptionsSetAttachment] resource's state with the given [name] and [id].
  static DhcpOptionsSetAttachment get(
    String name,
    pulumi.Input<String> id, {
    DhcpOptionsSetAttachmentState? state,
  }) {
    return DhcpOptionsSetAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DhcpOptionsSetAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:vpc/dhcpOptionsSetAttachment:DhcpOptionsSetAttachment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    dhcpOptionsSetId = registerOutput<String>('dhcpOptionsSetId');
    dryRun = registerOutput<bool?>('dryRun');
    status = registerOutput<String>('status');
    vpcId = registerOutput<String>('vpcId');
  }
}

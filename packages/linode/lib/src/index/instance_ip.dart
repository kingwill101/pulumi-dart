import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_ip_args.dart';
import 'instance_ip_vpc_nat11.dart';

/// Manages a Linode instance IP.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/post-add-linode-ip).
///
/// > **NOTICE:** You may need to contact support to increase your instance IP limit before you can allocate additional IPs.
///
/// > **NOTICE:** This resource will reboot the specified instance following IP allocation.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const foo = new linode.Instance("foo", {
///     image: "linode/alpine3.19",
///     label: "foobar-test",
///     type: "g6-nanode-1",
///     region: "us-east",
/// });
/// const fooInstanceIp = new linode.InstanceIp("foo", {
///     linodeId: foo.id,
///     "public": true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// foo = linode.Instance("foo",
///     image="linode/alpine3.19",
///     label="foobar-test",
///     type="g6-nanode-1",
///     region="us-east")
/// foo_instance_ip = linode.InstanceIp("foo",
///     linode_id=foo.id,
///     public=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = new Linode.Instance("foo", new()
///     {
///         Image = "linode/alpine3.19",
///         Label = "foobar-test",
///         Type = "g6-nanode-1",
///         Region = "us-east",
///     });
///
///     var fooInstanceIp = new Linode.InstanceIp("foo", new()
///     {
///         LinodeId = foo.Id,
///         Public = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		foo, err := linode.NewInstance(ctx, "foo", &linode.InstanceArgs{
/// 			Image:  pulumi.String("linode/alpine3.19"),
/// 			Label:  pulumi.String("foobar-test"),
/// 			Type:   pulumi.String("g6-nanode-1"),
/// 			Region: pulumi.String("us-east"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = linode.NewInstanceIp(ctx, "foo", &linode.InstanceIpArgs{
/// 			LinodeId: foo.ID(),
/// 			Public:   pulumi.Bool(true),
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
/// import com.pulumi.linode.Instance;
/// import com.pulumi.linode.InstanceArgs;
/// import com.pulumi.linode.InstanceIp;
/// import com.pulumi.linode.InstanceIpArgs;
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
///         var foo = new Instance("foo", InstanceArgs.builder()
///             .image("linode/alpine3.19")
///             .label("foobar-test")
///             .type("g6-nanode-1")
///             .region("us-east")
///             .build());
///
///         var fooInstanceIp = new InstanceIp("fooInstanceIp", InstanceIpArgs.builder()
///             .linodeId(foo.id())
///             .public_(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: linode:Instance
///     properties:
///       image: linode/alpine3.19
///       label: foobar-test
///       type: g6-nanode-1
///       region: us-east
///   fooInstanceIp:
///     type: linode:InstanceIp
///     name: foo
///     properties:
///       linodeId: ${foo.id}
///       public: true
/// ```
class InstanceIp extends pulumi.CustomResource {
  /// The resulting IPv4 address.
  late final pulumi.Output<String> address;
  /// If true, the instance will be rebooted to update network interfaces.
  late final pulumi.Output<bool> applyImmediately;
  /// The default gateway for this address
  late final pulumi.Output<String> gateway;
  /// The ID of the Linode to allocate an IPv4 address for.
  late final pulumi.Output<int> linodeId;
  /// The number of bits set in the subnet mask.
  late final pulumi.Output<int> prefix;
  /// Whether the IPv4 address is public or private. Defaults to true.
  late final pulumi.Output<bool> public;
  /// The reverse DNS assigned to this address.
  late final pulumi.Output<String> rdns;
  /// The region this IP resides in.
  late final pulumi.Output<String> region;
  /// The mask that separates host bits from network bits for this address.
  late final pulumi.Output<String> subnetMask;
  /// The type of IP address. (`ipv4`, `ipv6`, `ipv6/pool`, `ipv6/range`)
  late final pulumi.Output<String> type;
  /// Contains information about the NAT 1:1 mapping of a public IP address to a VPC subnet.
  late final pulumi.Output<List<InstanceIpVpcNat11>> vpcNat11s;

  /// Creates a new [InstanceIp].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InstanceIp]. {@macro pulumi_index_instance_ip_instance_ip_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InstanceIp(
    String name, {
    InstanceIpArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'linode:index/instanceIp:InstanceIp',
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
    this.subnetMask = registerOutput<String>('subnetMask');
    this.type = registerOutput<String>('type');
    this.vpcNat11s = registerOutput<List<InstanceIpVpcNat11>>('vpcNat11s');
  }
}

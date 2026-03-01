import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_shared_ips_args.dart';

/// Manages IPs shared to a Linode instance.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/post-share-ips).
///
/// > **Beta Notice** IPv6 sharing is currently available through early access.
/// To use early access resources, the `api_version` provider argument must be set to `v4beta`.
/// To learn more, see the early access documentation.
///
/// > **Notice** This resource should only be defined once per-instance and should not be used alongside the `shared_ipv4` field in `linode.Instance`.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// // Create a single primary node
/// const primaryInstance = new linode.Instance("primary", {
///     label: "node-primary",
///     type: "g6-nanode-1",
///     region: "eu-central",
/// });
/// // Allocate an IP under the primary node
/// const primary = new linode.InstanceIp("primary", {linodeId: primaryInstance.id});
/// // Create a secondary node
/// const secondary = new linode.Instance("secondary", {
///     label: "node-secondary",
///     type: "g6-nanode-1",
///     region: "eu-central",
/// });
/// // Share the IP with the secondary node
/// const share_primary = new linode.InstanceSharedIps("share-primary", {
///     linodeId: secondary.id,
///     addresses: [primary.address],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// # Create a single primary node
/// primary_instance = linode.Instance("primary",
///     label="node-primary",
///     type="g6-nanode-1",
///     region="eu-central")
/// # Allocate an IP under the primary node
/// primary = linode.InstanceIp("primary", linode_id=primary_instance.id)
/// # Create a secondary node
/// secondary = linode.Instance("secondary",
///     label="node-secondary",
///     type="g6-nanode-1",
///     region="eu-central")
/// # Share the IP with the secondary node
/// share_primary = linode.InstanceSharedIps("share-primary",
///     linode_id=secondary.id,
///     addresses=[primary.address])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Create a single primary node
///     var primaryInstance = new Linode.Instance("primary", new()
///     {
///         Label = "node-primary",
///         Type = "g6-nanode-1",
///         Region = "eu-central",
///     });
///
///     // Allocate an IP under the primary node
///     var primary = new Linode.InstanceIp("primary", new()
///     {
///         LinodeId = primaryInstance.Id,
///     });
///
///     // Create a secondary node
///     var secondary = new Linode.Instance("secondary", new()
///     {
///         Label = "node-secondary",
///         Type = "g6-nanode-1",
///         Region = "eu-central",
///     });
///
///     // Share the IP with the secondary node
///     var share_primary = new Linode.InstanceSharedIps("share-primary", new()
///     {
///         LinodeId = secondary.Id,
///         Addresses = new[]
///         {
///             primary.Address,
///         },
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
/// 		// Create a single primary node
/// 		primaryInstance, err := linode.NewInstance(ctx, "primary", &linode.InstanceArgs{
/// 			Label:  pulumi.String("node-primary"),
/// 			Type:   pulumi.String("g6-nanode-1"),
/// 			Region: pulumi.String("eu-central"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Allocate an IP under the primary node
/// 		primary, err := linode.NewInstanceIp(ctx, "primary", &linode.InstanceIpArgs{
/// 			LinodeId: primaryInstance.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Create a secondary node
/// 		secondary, err := linode.NewInstance(ctx, "secondary", &linode.InstanceArgs{
/// 			Label:  pulumi.String("node-secondary"),
/// 			Type:   pulumi.String("g6-nanode-1"),
/// 			Region: pulumi.String("eu-central"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Share the IP with the secondary node
/// 		_, err = linode.NewInstanceSharedIps(ctx, "share-primary", &linode.InstanceSharedIpsArgs{
/// 			LinodeId: secondary.ID(),
/// 			Addresses: pulumi.StringArray{
/// 				primary.Address,
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
/// import com.pulumi.linode.Instance;
/// import com.pulumi.linode.InstanceArgs;
/// import com.pulumi.linode.InstanceIp;
/// import com.pulumi.linode.InstanceIpArgs;
/// import com.pulumi.linode.InstanceSharedIps;
/// import com.pulumi.linode.InstanceSharedIpsArgs;
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
///         // Create a single primary node
///         var primaryInstance = new Instance("primaryInstance", InstanceArgs.builder()
///             .label("node-primary")
///             .type("g6-nanode-1")
///             .region("eu-central")
///             .build());
///
///         // Allocate an IP under the primary node
///         var primary = new InstanceIp("primary", InstanceIpArgs.builder()
///             .linodeId(primaryInstance.id())
///             .build());
///
///         // Create a secondary node
///         var secondary = new Instance("secondary", InstanceArgs.builder()
///             .label("node-secondary")
///             .type("g6-nanode-1")
///             .region("eu-central")
///             .build());
///
///         // Share the IP with the secondary node
///         var share_primary = new InstanceSharedIps("share-primary", InstanceSharedIpsArgs.builder()
///             .linodeId(secondary.id())
///             .addresses(primary.address())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Share the IP with the secondary node
///   share-primary:
///     type: linode:InstanceSharedIps
///     properties:
///       linodeId: ${secondary.id}
///       addresses:
///         - ${primary.address}
///   # Allocate an IP under the primary node
///   primary:
///     type: linode:InstanceIp
///     properties:
///       linodeId: ${primaryInstance.id}
///   # Create a single primary node
///   primaryInstance:
///     type: linode:Instance
///     name: primary
///     properties:
///       label: node-primary
///       type: g6-nanode-1
///       region: eu-central
///   # Create a secondary node
///   secondary:
///     type: linode:Instance
///     properties:
///       label: node-secondary
///       type: g6-nanode-1
///       region: eu-central
/// ```
class InstanceSharedIps extends pulumi.CustomResource {
  /// The set of IPs to share with the Linode.
  late final pulumi.Output<List<String>> addresses;
  /// The ID of the Linode to share the IPs to.
  late final pulumi.Output<int> linodeId;

  /// Creates a new [InstanceSharedIps].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InstanceSharedIps]. {@macro pulumi_index_instance_shared_ips_instance_shared_ips_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InstanceSharedIps(
    String name, {
    InstanceSharedIpsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'linode:index/instanceSharedIps:InstanceSharedIps',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.addresses = registerOutput<List<String>>('addresses');
    this.linodeId = registerOutput<int>('linodeId');
  }
}

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_subnet_args.dart';
import 'vpc_subnet_ipv6.dart';
import 'vpc_subnet_linode.dart';

/// Manages a Linode VPC subnet.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/post-vpc-subnet).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const test = new linode.VpcSubnet("test", {
///     vpcId: 123,
///     label: "test-subnet",
///     ipv4: "10.0.0.0/24",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// test = linode.VpcSubnet("test",
///     vpc_id=123,
///     label="test-subnet",
///     ipv4="10.0.0.0/24")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Linode.VpcSubnet("test", new()
///     {
///         VpcId = 123,
///         Label = "test-subnet",
///         Ipv4 = "10.0.0.0/24",
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
/// 		_, err := linode.NewVpcSubnet(ctx, "test", &linode.VpcSubnetArgs{
/// 			VpcId: pulumi.Int(123),
/// 			Label: pulumi.String("test-subnet"),
/// 			Ipv4:  pulumi.String("10.0.0.0/24"),
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
/// import com.pulumi.linode.VpcSubnet;
/// import com.pulumi.linode.VpcSubnetArgs;
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
///         var test = new VpcSubnet("test", VpcSubnetArgs.builder()
///             .vpcId(123)
///             .label("test-subnet")
///             .ipv4("10.0.0.0/24")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: linode:VpcSubnet
///     properties:
///       vpcId: 123
///       label: test-subnet
///       ipv4: 10.0.0.0/24
/// ```
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const testVpc = new linode.Vpc("test", {
///     label: "test-vpc",
///     region: "us-mia",
///     ipv6s: [{
///         range: "/52",
///     }],
/// });
/// // NOTE: IPv6 VPCs may not currently be available to all users.
/// const test = new linode.VpcSubnet("test", {
///     vpcId: testVpc.id,
///     label: "test-subnet",
///     ipv4: "10.0.0.0/24",
///     ipv6s: [{
///         range: "auto",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// test_vpc = linode.Vpc("test",
///     label="test-vpc",
///     region="us-mia",
///     ipv6s=[{
///         "range": "/52",
///     }])
/// # NOTE: IPv6 VPCs may not currently be available to all users.
/// test = linode.VpcSubnet("test",
///     vpc_id=test_vpc.id,
///     label="test-subnet",
///     ipv4="10.0.0.0/24",
///     ipv6s=[{
///         "range": "auto",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var testVpc = new Linode.Vpc("test", new()
///     {
///         Label = "test-vpc",
///         Region = "us-mia",
///         Ipv6s = new[]
///         {
///             new Linode.Inputs.VpcIpv6Args
///             {
///                 Range = "/52",
///             },
///         },
///     });
///
///     // NOTE: IPv6 VPCs may not currently be available to all users.
///     var test = new Linode.VpcSubnet("test", new()
///     {
///         VpcId = testVpc.Id,
///         Label = "test-subnet",
///         Ipv4 = "10.0.0.0/24",
///         Ipv6s = new[]
///         {
///             new Linode.Inputs.VpcSubnetIpv6Args
///             {
///                 Range = "auto",
///             },
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
/// 		testVpc, err := linode.NewVpc(ctx, "test", &linode.VpcArgs{
/// 			Label:  pulumi.String("test-vpc"),
/// 			Region: pulumi.String("us-mia"),
/// 			Ipv6s: linode.VpcIpv6Array{
/// 				&linode.VpcIpv6Args{
/// 					Range: pulumi.String("/52"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// NOTE: IPv6 VPCs may not currently be available to all users.
/// 		_, err = linode.NewVpcSubnet(ctx, "test", &linode.VpcSubnetArgs{
/// 			VpcId: testVpc.ID(),
/// 			Label: pulumi.String("test-subnet"),
/// 			Ipv4:  pulumi.String("10.0.0.0/24"),
/// 			Ipv6s: linode.VpcSubnetIpv6Array{
/// 				&linode.VpcSubnetIpv6Args{
/// 					Range: pulumi.String("auto"),
/// 				},
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
/// import com.pulumi.linode.Vpc;
/// import com.pulumi.linode.VpcArgs;
/// import com.pulumi.linode.inputs.VpcIpv6Args;
/// import com.pulumi.linode.VpcSubnet;
/// import com.pulumi.linode.VpcSubnetArgs;
/// import com.pulumi.linode.inputs.VpcSubnetIpv6Args;
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
///         var testVpc = new Vpc("testVpc", VpcArgs.builder()
///             .label("test-vpc")
///             .region("us-mia")
///             .ipv6s(VpcIpv6Args.builder()
///                 .range("/52")
///                 .build())
///             .build());
///
///         // NOTE: IPv6 VPCs may not currently be available to all users.
///         var test = new VpcSubnet("test", VpcSubnetArgs.builder()
///             .vpcId(testVpc.id())
///             .label("test-subnet")
///             .ipv4("10.0.0.0/24")
///             .ipv6s(VpcSubnetIpv6Args.builder()
///                 .range("auto")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # NOTE: IPv6 VPCs may not currently be available to all users.
///   test:
///     type: linode:VpcSubnet
///     properties:
///       vpcId: ${testVpc.id}
///       label: test-subnet
///       ipv4: 10.0.0.0/24
///       ipv6s:
///         - range: auto
///   testVpc:
///     type: linode:Vpc
///     name: test
///     properties:
///       label: test-vpc
///       region: us-mia
///       ipv6s:
///         - range: /52
/// ```
///
///
/// ## IPv6
///
/// > **Limited Availability** IPv6 VPCs may not currently be available to all users.
///
/// The following arguments can be configured for each entry under the `ipv6` field:
///
/// * `range` - (Optional) An existing IPv6 prefix owned by the current account or a forward slash (/) followed by a valid prefix length. If `auto`, a range with the default prefix will be allocated for this VPC.
///
/// * `allocated_range` - (Read-Only) The value of range computed by the API. This is necessary when needing to access the range for an implicit allocation.
///
/// ## Import
///
/// Linode Virtual Private Cloud (VPC) Subnet can be imported using the `vpc_id` followed by the subnet `id` separated by a comma, e.g.
///
/// ```sh
/// $ pulumi import linode:index/vpcSubnet:VpcSubnet my_subnet_duplicated 1234567,7654321
/// ```
class VpcSubnet extends pulumi.CustomResource {
  /// The date and time when the VPC was created.
  late final pulumi.Output<String> created;
  /// The IPv4 range of this subnet in CIDR format.
  ///
  /// * `ipv6` - (Optional) A list of IPv6 ranges under this VPC subnet. NOTE: IPv6 VPCs may not currently be available to all users.
  late final pulumi.Output<String?> ipv4;
  /// The IPv6 ranges of this subnet.
  late final pulumi.Output<List<VpcSubnetIpv6>?> ipv6s;
  /// The label of the VPC. Only contains ASCII letters, digits and dashes.
  late final pulumi.Output<String> label;
  /// A list of Linode that added to this subnet.
  late final pulumi.Output<List<VpcSubnetLinode>> linodes;
  /// The date and time when the VPC was last updated.
  late final pulumi.Output<String> updated;
  /// The id of the parent VPC for this VPC subnet.
  late final pulumi.Output<int> vpcId;

  /// Creates a new [VpcSubnet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VpcSubnet]. {@macro pulumi_index_vpc_subnet_vpc_subnet_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VpcSubnet(
    String name, {
    VpcSubnetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'linode:index/vpcSubnet:VpcSubnet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.created = registerOutput<String>('created');
    this.ipv4 = registerOutput<String?>('ipv4');
    this.ipv6s = registerOutput<List<VpcSubnetIpv6>?>('ipv6s');
    this.label = registerOutput<String>('label');
    this.linodes = registerOutput<List<VpcSubnetLinode>>('linodes');
    this.updated = registerOutput<String>('updated');
    this.vpcId = registerOutput<int>('vpcId');
  }
}

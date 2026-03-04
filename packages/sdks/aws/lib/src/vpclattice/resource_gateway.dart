import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_gateway_args.dart';
import 'resource_gateway_state.dart';
import 'resource_gateway_timeouts.dart';

/// Resource for managing an AWS VPC Lattice Resource Gateway.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.vpclattice.ResourceGateway("example", {
///     name: "Example",
///     vpcId: exampleAwsVpc.id,
///     subnetIds: [exampleAwsSubnet.id],
///     tags: {
///         Environment: "Example",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.vpclattice.ResourceGateway("example",
///     name="Example",
///     vpc_id=example_aws_vpc["id"],
///     subnet_ids=[example_aws_subnet["id"]],
///     tags={
///         "Environment": "Example",
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
///     var example = new Aws.VpcLattice.ResourceGateway("example", new()
///     {
///         Name = "Example",
///         VpcId = exampleAwsVpc.Id,
///         SubnetIds = new[]
///         {
///             exampleAwsSubnet.Id,
///         },
///         Tags =
///         {
///             { "Environment", "Example" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/vpclattice"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vpclattice.NewResourceGateway(ctx, "example", &vpclattice.ResourceGatewayArgs{
/// 			Name:  pulumi.String("Example"),
/// 			VpcId: pulumi.Any(exampleAwsVpc.Id),
/// 			SubnetIds: pulumi.StringArray{
/// 				exampleAwsSubnet.Id,
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Environment": pulumi.String("Example"),
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
/// import com.pulumi.aws.vpclattice.ResourceGateway;
/// import com.pulumi.aws.vpclattice.ResourceGatewayArgs;
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
///         var example = new ResourceGateway("example", ResourceGatewayArgs.builder()
///             .name("Example")
///             .vpcId(exampleAwsVpc.id())
///             .subnetIds(exampleAwsSubnet.id())
///             .tags(Map.of("Environment", "Example"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:vpclattice:ResourceGateway
///     properties:
///       name: Example
///       vpcId: ${exampleAwsVpc.id}
///       subnetIds:
///         - ${exampleAwsSubnet.id}
///       tags:
///         Environment: Example
/// ```
///
///
/// ### Specifying IP address type
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.vpclattice.ResourceGateway("example", {
///     name: "Example",
///     vpcId: exampleAwsVpc.id,
///     subnetIds: [exampleAwsSubnet.id],
///     ipAddressType: "DUALSTACK",
///     tags: {
///         Environment: "Example",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.vpclattice.ResourceGateway("example",
///     name="Example",
///     vpc_id=example_aws_vpc["id"],
///     subnet_ids=[example_aws_subnet["id"]],
///     ip_address_type="DUALSTACK",
///     tags={
///         "Environment": "Example",
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
///     var example = new Aws.VpcLattice.ResourceGateway("example", new()
///     {
///         Name = "Example",
///         VpcId = exampleAwsVpc.Id,
///         SubnetIds = new[]
///         {
///             exampleAwsSubnet.Id,
///         },
///         IpAddressType = "DUALSTACK",
///         Tags =
///         {
///             { "Environment", "Example" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/vpclattice"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vpclattice.NewResourceGateway(ctx, "example", &vpclattice.ResourceGatewayArgs{
/// 			Name:  pulumi.String("Example"),
/// 			VpcId: pulumi.Any(exampleAwsVpc.Id),
/// 			SubnetIds: pulumi.StringArray{
/// 				exampleAwsSubnet.Id,
/// 			},
/// 			IpAddressType: pulumi.String("DUALSTACK"),
/// 			Tags: pulumi.StringMap{
/// 				"Environment": pulumi.String("Example"),
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
/// import com.pulumi.aws.vpclattice.ResourceGateway;
/// import com.pulumi.aws.vpclattice.ResourceGatewayArgs;
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
///         var example = new ResourceGateway("example", ResourceGatewayArgs.builder()
///             .name("Example")
///             .vpcId(exampleAwsVpc.id())
///             .subnetIds(exampleAwsSubnet.id())
///             .ipAddressType("DUALSTACK")
///             .tags(Map.of("Environment", "Example"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:vpclattice:ResourceGateway
///     properties:
///       name: Example
///       vpcId: ${exampleAwsVpc.id}
///       subnetIds:
///         - ${exampleAwsSubnet.id}
///       ipAddressType: DUALSTACK
///       tags:
///         Environment: Example
/// ```
///
///
/// ### With security groups
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.vpclattice.ResourceGateway("example", {
///     name: "Example",
///     vpcId: exampleAwsVpc.id,
///     securityGroupIds: [test.id],
///     subnetIds: [exampleAwsSubnet.id],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.vpclattice.ResourceGateway("example",
///     name="Example",
///     vpc_id=example_aws_vpc["id"],
///     security_group_ids=[test["id"]],
///     subnet_ids=[example_aws_subnet["id"]])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.VpcLattice.ResourceGateway("example", new()
///     {
///         Name = "Example",
///         VpcId = exampleAwsVpc.Id,
///         SecurityGroupIds = new[]
///         {
///             test.Id,
///         },
///         SubnetIds = new[]
///         {
///             exampleAwsSubnet.Id,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/vpclattice"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vpclattice.NewResourceGateway(ctx, "example", &vpclattice.ResourceGatewayArgs{
/// 			Name:  pulumi.String("Example"),
/// 			VpcId: pulumi.Any(exampleAwsVpc.Id),
/// 			SecurityGroupIds: pulumi.StringArray{
/// 				test.Id,
/// 			},
/// 			SubnetIds: pulumi.StringArray{
/// 				exampleAwsSubnet.Id,
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
/// import com.pulumi.aws.vpclattice.ResourceGateway;
/// import com.pulumi.aws.vpclattice.ResourceGatewayArgs;
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
///         var example = new ResourceGateway("example", ResourceGatewayArgs.builder()
///             .name("Example")
///             .vpcId(exampleAwsVpc.id())
///             .securityGroupIds(test.id())
///             .subnetIds(exampleAwsSubnet.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:vpclattice:ResourceGateway
///     properties:
///       name: Example
///       vpcId: ${exampleAwsVpc.id}
///       securityGroupIds:
///         - ${test.id}
///       subnetIds:
///         - ${exampleAwsSubnet.id}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import VPC Lattice Resource Gateway using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:vpclattice/resourceGateway:ResourceGateway example rgw-0a1b2c3d4e5f
/// ```
class ResourceGateway extends pulumi.CustomResource {
  /// ARN of the resource gateway.
  late final pulumi.Output<String> arn;

  /// IP address type used by the resource gateway. Valid values are `IPV4`, `IPV6`, and `DUALSTACK`. The IP address type of a resource gateway must be compatible with the subnets of the resource gateway and the IP address type of the resource.
  late final pulumi.Output<String> ipAddressType;

  /// The number of IPv4 addresses per ENI for your resource. This argument is only applicable to `IPV4` and `DUALSTACK` IP address types. Defaults to `16`.
  late final pulumi.Output<int> ipv4AddressesPerEni;

  /// Name of the resource gateway.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Security group IDs associated with the resource gateway. The security groups must be in the same VPC.
  late final pulumi.Output<List<String>> securityGroupIds;

  /// Status of the resource gateway.
  late final pulumi.Output<String> status;

  /// IDs of the VPC subnets in which to create the resource gateway.
  late final pulumi.Output<List<String>> subnetIds;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<ResourceGatewayTimeouts?> timeouts;

  /// ID of the VPC for the resource gateway.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> vpcId;

  /// Creates a new [ResourceGateway].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourceGateway]. {@macro pulumi_vpclattice_resource_gateway_resource_gateway_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourceGateway(
    String name, {
    ResourceGatewayArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:vpclattice/resourceGateway:ResourceGateway',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    ipAddressType = registerOutput<String>('ipAddressType');
    ipv4AddressesPerEni = registerOutput<int>('ipv4AddressesPerEni');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    securityGroupIds = registerOutput<List<String>>('securityGroupIds');
    status = registerOutput<String>('status');
    subnetIds = registerOutput<List<String>>('subnetIds');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<ResourceGatewayTimeouts?>('timeouts');
    vpcId = registerOutput<String>('vpcId');
  }

  /// Gets an existing [ResourceGateway] resource's state with the given [name] and [id].
  static ResourceGateway get(
    String name,
    pulumi.Input<String> id, {
    ResourceGatewayState? state,
  }) {
    return ResourceGateway._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ResourceGateway._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:vpclattice/resourceGateway:ResourceGateway',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    ipAddressType = registerOutput<String>('ipAddressType');
    ipv4AddressesPerEni = registerOutput<int>('ipv4AddressesPerEni');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    securityGroupIds = registerOutput<List<String>>('securityGroupIds');
    status = registerOutput<String>('status');
    subnetIds = registerOutput<List<String>>('subnetIds');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<ResourceGatewayTimeouts?>('timeouts');
    vpcId = registerOutput<String>('vpcId');
  }
}

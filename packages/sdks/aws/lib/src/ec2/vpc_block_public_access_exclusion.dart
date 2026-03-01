import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_block_public_access_exclusion_args.dart';
import 'vpc_block_public_access_exclusion_state.dart';
import 'vpc_block_public_access_exclusion_timeouts.dart';

/// Resource for managing an AWS EC2 (Elastic Compute Cloud) VPC Block Public Access Exclusion.
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
/// const test = new aws.ec2.Vpc("test", {cidrBlock: "10.1.0.0/16"});
/// const testVpcBlockPublicAccessExclusion = new aws.ec2.VpcBlockPublicAccessExclusion("test", {
///     vpcId: test.id,
///     internetGatewayExclusionMode: "allow-bidirectional",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.ec2.Vpc("test", cidr_block="10.1.0.0/16")
/// test_vpc_block_public_access_exclusion = aws.ec2.VpcBlockPublicAccessExclusion("test",
///     vpc_id=test.id,
///     internet_gateway_exclusion_mode="allow-bidirectional")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.Ec2.Vpc("test", new()
///     {
///         CidrBlock = "10.1.0.0/16",
///     });
///
///     var testVpcBlockPublicAccessExclusion = new Aws.Ec2.VpcBlockPublicAccessExclusion("test", new()
///     {
///         VpcId = test.Id,
///         InternetGatewayExclusionMode = "allow-bidirectional",
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
/// 		test, err := ec2.NewVpc(ctx, "test", &ec2.VpcArgs{
/// 			CidrBlock: pulumi.String("10.1.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2.NewVpcBlockPublicAccessExclusion(ctx, "test", &ec2.VpcBlockPublicAccessExclusionArgs{
/// 			VpcId:                        test.ID(),
/// 			InternetGatewayExclusionMode: pulumi.String("allow-bidirectional"),
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
/// import com.pulumi.aws.ec2.Vpc;
/// import com.pulumi.aws.ec2.VpcArgs;
/// import com.pulumi.aws.ec2.VpcBlockPublicAccessExclusion;
/// import com.pulumi.aws.ec2.VpcBlockPublicAccessExclusionArgs;
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
///         var test = new Vpc("test", VpcArgs.builder()
///             .cidrBlock("10.1.0.0/16")
///             .build());
///
///         var testVpcBlockPublicAccessExclusion = new VpcBlockPublicAccessExclusion("testVpcBlockPublicAccessExclusion", VpcBlockPublicAccessExclusionArgs.builder()
///             .vpcId(test.id())
///             .internetGatewayExclusionMode("allow-bidirectional")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:ec2:Vpc
///     properties:
///       cidrBlock: 10.1.0.0/16
///   testVpcBlockPublicAccessExclusion:
///     type: aws:ec2:VpcBlockPublicAccessExclusion
///     name: test
///     properties:
///       vpcId: ${test.id}
///       internetGatewayExclusionMode: allow-bidirectional
/// ```
///
///
/// ### Usage with subnet id
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.ec2.Vpc("test", {cidrBlock: "10.1.0.0/16"});
/// const testSubnet = new aws.ec2.Subnet("test", {
///     cidrBlock: "10.1.1.0/24",
///     vpcId: test.id,
/// });
/// const testVpcBlockPublicAccessExclusion = new aws.ec2.VpcBlockPublicAccessExclusion("test", {
///     subnetId: testSubnet.id,
///     internetGatewayExclusionMode: "allow-egress",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.ec2.Vpc("test", cidr_block="10.1.0.0/16")
/// test_subnet = aws.ec2.Subnet("test",
///     cidr_block="10.1.1.0/24",
///     vpc_id=test.id)
/// test_vpc_block_public_access_exclusion = aws.ec2.VpcBlockPublicAccessExclusion("test",
///     subnet_id=test_subnet.id,
///     internet_gateway_exclusion_mode="allow-egress")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.Ec2.Vpc("test", new()
///     {
///         CidrBlock = "10.1.0.0/16",
///     });
///
///     var testSubnet = new Aws.Ec2.Subnet("test", new()
///     {
///         CidrBlock = "10.1.1.0/24",
///         VpcId = test.Id,
///     });
///
///     var testVpcBlockPublicAccessExclusion = new Aws.Ec2.VpcBlockPublicAccessExclusion("test", new()
///     {
///         SubnetId = testSubnet.Id,
///         InternetGatewayExclusionMode = "allow-egress",
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
/// 		test, err := ec2.NewVpc(ctx, "test", &ec2.VpcArgs{
/// 			CidrBlock: pulumi.String("10.1.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testSubnet, err := ec2.NewSubnet(ctx, "test", &ec2.SubnetArgs{
/// 			CidrBlock: pulumi.String("10.1.1.0/24"),
/// 			VpcId:     test.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2.NewVpcBlockPublicAccessExclusion(ctx, "test", &ec2.VpcBlockPublicAccessExclusionArgs{
/// 			SubnetId:                     testSubnet.ID(),
/// 			InternetGatewayExclusionMode: pulumi.String("allow-egress"),
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
/// import com.pulumi.aws.ec2.Vpc;
/// import com.pulumi.aws.ec2.VpcArgs;
/// import com.pulumi.aws.ec2.Subnet;
/// import com.pulumi.aws.ec2.SubnetArgs;
/// import com.pulumi.aws.ec2.VpcBlockPublicAccessExclusion;
/// import com.pulumi.aws.ec2.VpcBlockPublicAccessExclusionArgs;
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
///         var test = new Vpc("test", VpcArgs.builder()
///             .cidrBlock("10.1.0.0/16")
///             .build());
///
///         var testSubnet = new Subnet("testSubnet", SubnetArgs.builder()
///             .cidrBlock("10.1.1.0/24")
///             .vpcId(test.id())
///             .build());
///
///         var testVpcBlockPublicAccessExclusion = new VpcBlockPublicAccessExclusion("testVpcBlockPublicAccessExclusion", VpcBlockPublicAccessExclusionArgs.builder()
///             .subnetId(testSubnet.id())
///             .internetGatewayExclusionMode("allow-egress")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:ec2:Vpc
///     properties:
///       cidrBlock: 10.1.0.0/16
///   testSubnet:
///     type: aws:ec2:Subnet
///     name: test
///     properties:
///       cidrBlock: 10.1.1.0/24
///       vpcId: ${test.id}
///   testVpcBlockPublicAccessExclusion:
///     type: aws:ec2:VpcBlockPublicAccessExclusion
///     name: test
///     properties:
///       subnetId: ${testSubnet.id}
///       internetGatewayExclusionMode: allow-egress
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import EC2 (Elastic Compute Cloud) VPC Block Public Access Exclusion using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/vpcBlockPublicAccessExclusion:VpcBlockPublicAccessExclusion example vpcbpa-exclude-1234abcd
/// ```
class VpcBlockPublicAccessExclusion extends pulumi.CustomResource {
  /// Mode of exclusion from Block Public Access. The allowed values are `allow-egress` and `allow-bidirectional`.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> internetGatewayExclusionMode;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The Amazon Resource Name (ARN) the excluded resource.
  late final pulumi.Output<String> resourceArn;
  /// Id of the subnet to which this exclusion applies. Either this or the vpc_id needs to be provided.
  late final pulumi.Output<String?> subnetId;
  /// A map of tags to assign to the exclusion. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<VpcBlockPublicAccessExclusionTimeouts?> timeouts;
  /// Id of the VPC to which this exclusion applies. Either this or the subnet_id needs to be provided.
  late final pulumi.Output<String?> vpcId;

  /// Creates a new [VpcBlockPublicAccessExclusion].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VpcBlockPublicAccessExclusion]. {@macro pulumi_ec2_vpc_block_public_access_exclusion_vpc_block_public_access_exclusion_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VpcBlockPublicAccessExclusion(
    String name, {
    VpcBlockPublicAccessExclusionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/vpcBlockPublicAccessExclusion:VpcBlockPublicAccessExclusion',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.internetGatewayExclusionMode = registerOutput<String>('internetGatewayExclusionMode');
    this.region = registerOutput<String>('region');
    this.resourceArn = registerOutput<String>('resourceArn');
    this.subnetId = registerOutput<String?>('subnetId');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<VpcBlockPublicAccessExclusionTimeouts?>('timeouts');
    this.vpcId = registerOutput<String?>('vpcId');
  }

  /// Gets an existing [VpcBlockPublicAccessExclusion] resource's state with the given [name] and [id].
  static VpcBlockPublicAccessExclusion get(
    String name,
    pulumi.Input<String> id, {
    VpcBlockPublicAccessExclusionState? state,
  }) {
    return VpcBlockPublicAccessExclusion._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VpcBlockPublicAccessExclusion._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/vpcBlockPublicAccessExclusion:VpcBlockPublicAccessExclusion',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.internetGatewayExclusionMode = registerOutput<String>('internetGatewayExclusionMode');
    this.region = registerOutput<String>('region');
    this.resourceArn = registerOutput<String>('resourceArn');
    this.subnetId = registerOutput<String?>('subnetId');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<VpcBlockPublicAccessExclusionTimeouts?>('timeouts');
    this.vpcId = registerOutput<String?>('vpcId');
  }
}

import 'package:pulumi/pulumi.dart';
import '../vpc_block_public_access_exclusion_timeouts/vpc_block_public_access_exclusion_timeouts.dart';
import 'vpc_block_public_access_exclusion_args.dart';

/// Resource for managing an AWS EC2 (Elastic Compute Cloud) VPC Block Public Access Exclusion.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.ec2.Vpc("test", {cidrBlock: "10.1.0.0/16"});
/// const testVpcBlockPublicAccessExclusion = new aws.ec2.VpcBlockPublicAccessExclusion("test", {
/// vpcId: test.id,
/// internetGatewayExclusionMode: "allow-bidirectional",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.ec2.Vpc("test", cidr_block="10.1.0.0/16")
/// test_vpc_block_public_access_exclusion = aws.ec2.VpcBlockPublicAccessExclusion("test",
/// vpc_id=test.id,
/// internet_gateway_exclusion_mode="allow-bidirectional")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = new Aws.Ec2.Vpc("test", new()
/// {
/// CidrBlock = "10.1.0.0/16",
/// });
///
/// var testVpcBlockPublicAccessExclusion = new Aws.Ec2.VpcBlockPublicAccessExclusion("test", new()
/// {
/// VpcId = test.Id,
/// InternetGatewayExclusionMode = "allow-bidirectional",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// test, err := ec2.NewVpc(ctx, "test", &ec2.VpcArgs{
/// CidrBlock: pulumi.String("10.1.0.0/16"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = ec2.NewVpcBlockPublicAccessExclusion(ctx, "test", &ec2.VpcBlockPublicAccessExclusionArgs{
/// VpcId:                        test.ID(),
/// InternetGatewayExclusionMode: pulumi.String("allow-bidirectional"),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var test = new Vpc("test", VpcArgs.builder()
/// .cidrBlock("10.1.0.0/16")
/// .build());
///
/// var testVpcBlockPublicAccessExclusion = new VpcBlockPublicAccessExclusion("testVpcBlockPublicAccessExclusion", VpcBlockPublicAccessExclusionArgs.builder()
/// .vpcId(test.id())
/// .internetGatewayExclusionMode("allow-bidirectional")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:ec2:Vpc
/// properties:
/// cidrBlock: 10.1.0.0/16
/// testVpcBlockPublicAccessExclusion:
/// type: aws:ec2:VpcBlockPublicAccessExclusion
/// name: test
/// properties:
/// vpcId: ${test.id}
/// internetGatewayExclusionMode: allow-bidirectional
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Usage with subnet id
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.ec2.Vpc("test", {cidrBlock: "10.1.0.0/16"});
/// const testSubnet = new aws.ec2.Subnet("test", {
/// cidrBlock: "10.1.1.0/24",
/// vpcId: test.id,
/// });
/// const testVpcBlockPublicAccessExclusion = new aws.ec2.VpcBlockPublicAccessExclusion("test", {
/// subnetId: testSubnet.id,
/// internetGatewayExclusionMode: "allow-egress",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.ec2.Vpc("test", cidr_block="10.1.0.0/16")
/// test_subnet = aws.ec2.Subnet("test",
/// cidr_block="10.1.1.0/24",
/// vpc_id=test.id)
/// test_vpc_block_public_access_exclusion = aws.ec2.VpcBlockPublicAccessExclusion("test",
/// subnet_id=test_subnet.id,
/// internet_gateway_exclusion_mode="allow-egress")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = new Aws.Ec2.Vpc("test", new()
/// {
/// CidrBlock = "10.1.0.0/16",
/// });
///
/// var testSubnet = new Aws.Ec2.Subnet("test", new()
/// {
/// CidrBlock = "10.1.1.0/24",
/// VpcId = test.Id,
/// });
///
/// var testVpcBlockPublicAccessExclusion = new Aws.Ec2.VpcBlockPublicAccessExclusion("test", new()
/// {
/// SubnetId = testSubnet.Id,
/// InternetGatewayExclusionMode = "allow-egress",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// test, err := ec2.NewVpc(ctx, "test", &ec2.VpcArgs{
/// CidrBlock: pulumi.String("10.1.0.0/16"),
/// })
/// if err != nil {
/// return err
/// }
/// testSubnet, err := ec2.NewSubnet(ctx, "test", &ec2.SubnetArgs{
/// CidrBlock: pulumi.String("10.1.1.0/24"),
/// VpcId:     test.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = ec2.NewVpcBlockPublicAccessExclusion(ctx, "test", &ec2.VpcBlockPublicAccessExclusionArgs{
/// SubnetId:                     testSubnet.ID(),
/// InternetGatewayExclusionMode: pulumi.String("allow-egress"),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var test = new Vpc("test", VpcArgs.builder()
/// .cidrBlock("10.1.0.0/16")
/// .build());
///
/// var testSubnet = new Subnet("testSubnet", SubnetArgs.builder()
/// .cidrBlock("10.1.1.0/24")
/// .vpcId(test.id())
/// .build());
///
/// var testVpcBlockPublicAccessExclusion = new VpcBlockPublicAccessExclusion("testVpcBlockPublicAccessExclusion", VpcBlockPublicAccessExclusionArgs.builder()
/// .subnetId(testSubnet.id())
/// .internetGatewayExclusionMode("allow-egress")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:ec2:Vpc
/// properties:
/// cidrBlock: 10.1.0.0/16
/// testSubnet:
/// type: aws:ec2:Subnet
/// name: test
/// properties:
/// cidrBlock: 10.1.1.0/24
/// vpcId: ${test.id}
/// testVpcBlockPublicAccessExclusion:
/// type: aws:ec2:VpcBlockPublicAccessExclusion
/// name: test
/// properties:
/// subnetId: ${testSubnet.id}
/// internetGatewayExclusionMode: allow-egress
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import EC2 (Elastic Compute Cloud) VPC Block Public Access Exclusion using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/vpcBlockPublicAccessExclusion:VpcBlockPublicAccessExclusion example vpcbpa-exclude-1234abcd
/// ```
class VpcBlockPublicAccessExclusion extends CustomResource {
  /// Mode of exclusion from Block Public Access. The allowed values are `allow-egress` and `allow-bidirectional`.
  ///
  /// The following arguments are optional:
  late final Output<String> internetGatewayExclusionMode;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The Amazon Resource Name (ARN) the excluded resource.
  late final Output<String> resourceArn;

  /// Id of the subnet to which this exclusion applies. Either this or the<span pulumi-lang-nodejs=" vpcId " pulumi-lang-dotnet=" VpcId " pulumi-lang-go=" vpcId " pulumi-lang-python=" vpc_id " pulumi-lang-yaml=" vpcId " pulumi-lang-java=" vpcId "> vpc_id </span>needs to be provided.
  late final Output<String?> subnetId;

  /// A map of tags to assign to the exclusion. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;
  late final Output<VpcBlockPublicAccessExclusionTimeouts?> timeouts;

  /// Id of the VPC to which this exclusion applies. Either this or the<span pulumi-lang-nodejs=" subnetId " pulumi-lang-dotnet=" SubnetId " pulumi-lang-go=" subnetId " pulumi-lang-python=" subnet_id " pulumi-lang-yaml=" subnetId " pulumi-lang-java=" subnetId "> subnet_id </span>needs to be provided.
  late final Output<String?> vpcId;

  VpcBlockPublicAccessExclusion(
    String name, {
    VpcBlockPublicAccessExclusionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/vpcBlockPublicAccessExclusion:VpcBlockPublicAccessExclusion',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.internetGatewayExclusionMode = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.resourceArn = Output.createUnknown<String>();
    this.subnetId = Output.createUnknown<String?>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.timeouts =
        Output.createUnknown<VpcBlockPublicAccessExclusionTimeouts?>();
    this.vpcId = Output.createUnknown<String?>();
  }
}

import 'package:pulumi/pulumi.dart';
import 'vpc_ipv6_cidr_block_association_args.dart';

/// Provides a resource to associate additional IPv6 CIDR blocks with a VPC.
///
/// The <span pulumi-lang-nodejs="`aws.ec2.VpcIpv6CidrBlockAssociation`" pulumi-lang-dotnet="`aws.ec2.VpcIpv6CidrBlockAssociation`" pulumi-lang-go="`ec2.VpcIpv6CidrBlockAssociation`" pulumi-lang-python="`ec2.VpcIpv6CidrBlockAssociation`" pulumi-lang-yaml="`aws.ec2.VpcIpv6CidrBlockAssociation`" pulumi-lang-java="`aws.ec2.VpcIpv6CidrBlockAssociation`">`aws.ec2.VpcIpv6CidrBlockAssociation`</span> resource allows IPv6 CIDR blocks to be added to the VPC.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.ec2.Vpc("test", {cidrBlock: "10.0.0.0/16"});
/// const testVpcIpv6CidrBlockAssociation = new aws.ec2.VpcIpv6CidrBlockAssociation("test", {
/// ipv6IpamPoolId: testAwsVpcIpamPool.id,
/// vpcId: test.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.ec2.Vpc("test", cidr_block="10.0.0.0/16")
/// test_vpc_ipv6_cidr_block_association = aws.ec2.VpcIpv6CidrBlockAssociation("test",
/// ipv6_ipam_pool_id=test_aws_vpc_ipam_pool["id"],
/// vpc_id=test.id)
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
/// CidrBlock = "10.0.0.0/16",
/// });
///
/// var testVpcIpv6CidrBlockAssociation = new Aws.Ec2.VpcIpv6CidrBlockAssociation("test", new()
/// {
/// Ipv6IpamPoolId = testAwsVpcIpamPool.Id,
/// VpcId = test.Id,
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
/// CidrBlock: pulumi.String("10.0.0.0/16"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = ec2.NewVpcIpv6CidrBlockAssociation(ctx, "test", &ec2.VpcIpv6CidrBlockAssociationArgs{
/// Ipv6IpamPoolId: pulumi.Any(testAwsVpcIpamPool.Id),
/// VpcId:          test.ID(),
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
/// import com.pulumi.aws.ec2.VpcIpv6CidrBlockAssociation;
/// import com.pulumi.aws.ec2.VpcIpv6CidrBlockAssociationArgs;
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
/// .cidrBlock("10.0.0.0/16")
/// .build());
///
/// var testVpcIpv6CidrBlockAssociation = new VpcIpv6CidrBlockAssociation("testVpcIpv6CidrBlockAssociation", VpcIpv6CidrBlockAssociationArgs.builder()
/// .ipv6IpamPoolId(testAwsVpcIpamPool.id())
/// .vpcId(test.id())
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
/// cidrBlock: 10.0.0.0/16
/// testVpcIpv6CidrBlockAssociation:
/// type: aws:ec2:VpcIpv6CidrBlockAssociation
/// name: test
/// properties:
/// ipv6IpamPoolId: ${testAwsVpcIpamPool.id}
/// vpcId: ${test.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// or
///
///
/// or
///
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.ec2.VpcIpv6CidrBlockAssociation`" pulumi-lang-dotnet="`aws.ec2.VpcIpv6CidrBlockAssociation`" pulumi-lang-go="`ec2.VpcIpv6CidrBlockAssociation`" pulumi-lang-python="`ec2.VpcIpv6CidrBlockAssociation`" pulumi-lang-yaml="`aws.ec2.VpcIpv6CidrBlockAssociation`" pulumi-lang-java="`aws.ec2.VpcIpv6CidrBlockAssociation`">`aws.ec2.VpcIpv6CidrBlockAssociation`</span> using the VPC CIDR association ID and optionally the IPv6 IPAM pool ID and netmask length. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/vpcIpv6CidrBlockAssociation:VpcIpv6CidrBlockAssociation example vpc-cidr-assoc-0754129087e149dcd
/// ```
///
/// or
///
/// ```sh
/// $ pulumi import aws:ec2/vpcIpv6CidrBlockAssociation:VpcIpv6CidrBlockAssociation example vpc-cidr-assoc-0754129087e149dcd,ipam-pool-0611d1d6bbc05ce60
/// ```
///
/// or
///
/// ```sh
/// $ pulumi import aws:ec2/vpcIpv6CidrBlockAssociation:VpcIpv6CidrBlockAssociation example vpc-cidr-assoc-0754129087e149dcd,ipam-pool-0611d1d6bbc05ce60,56
/// ```
class VpcIpv6CidrBlockAssociation extends CustomResource {
  /// Requests an Amazon-provided IPv6 CIDR block with a /56 prefix length for the VPC. You cannot specify the range of IPv6 addresses, or the size of the CIDR block. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>. Conflicts with <span pulumi-lang-nodejs="`ipv6IpamPoolId`" pulumi-lang-dotnet="`Ipv6IpamPoolId`" pulumi-lang-go="`ipv6IpamPoolId`" pulumi-lang-python="`ipv6_ipam_pool_id`" pulumi-lang-yaml="`ipv6IpamPoolId`" pulumi-lang-java="`ipv6IpamPoolId`">`ipv6_ipam_pool_id`</span>, <span pulumi-lang-nodejs="`ipv6Pool`" pulumi-lang-dotnet="`Ipv6Pool`" pulumi-lang-go="`ipv6Pool`" pulumi-lang-python="`ipv6_pool`" pulumi-lang-yaml="`ipv6Pool`" pulumi-lang-java="`ipv6Pool`">`ipv6_pool`</span>, <span pulumi-lang-nodejs="`ipv6CidrBlock`" pulumi-lang-dotnet="`Ipv6CidrBlock`" pulumi-lang-go="`ipv6CidrBlock`" pulumi-lang-python="`ipv6_cidr_block`" pulumi-lang-yaml="`ipv6CidrBlock`" pulumi-lang-java="`ipv6CidrBlock`">`ipv6_cidr_block`</span> and <span pulumi-lang-nodejs="`ipv6NetmaskLength`" pulumi-lang-dotnet="`Ipv6NetmaskLength`" pulumi-lang-go="`ipv6NetmaskLength`" pulumi-lang-python="`ipv6_netmask_length`" pulumi-lang-yaml="`ipv6NetmaskLength`" pulumi-lang-java="`ipv6NetmaskLength`">`ipv6_netmask_length`</span>.
  late final Output<bool> assignGeneratedIpv6CidrBlock;

  /// The source that allocated the IP address space. Values: <span pulumi-lang-nodejs="`amazon`" pulumi-lang-dotnet="`Amazon`" pulumi-lang-go="`amazon`" pulumi-lang-python="`amazon`" pulumi-lang-yaml="`amazon`" pulumi-lang-java="`amazon`">`amazon`</span>, <span pulumi-lang-nodejs="`byoip`" pulumi-lang-dotnet="`Byoip`" pulumi-lang-go="`byoip`" pulumi-lang-python="`byoip`" pulumi-lang-yaml="`byoip`" pulumi-lang-java="`byoip`">`byoip`</span>, <span pulumi-lang-nodejs="`none`" pulumi-lang-dotnet="`None`" pulumi-lang-go="`none`" pulumi-lang-python="`none`" pulumi-lang-yaml="`none`" pulumi-lang-java="`none`">`none`</span>.
  late final Output<String> ipSource;

  /// Public IPv6 addresses are those advertised on the internet from AWS. Private IP addresses are not and cannot be advertised on the internet from AWS. Values: <span pulumi-lang-nodejs="`public`" pulumi-lang-dotnet="`Public`" pulumi-lang-go="`public`" pulumi-lang-python="`public`" pulumi-lang-yaml="`public`" pulumi-lang-java="`public`">`public`</span>, <span pulumi-lang-nodejs="`private`" pulumi-lang-dotnet="`Private`" pulumi-lang-go="`private`" pulumi-lang-python="`private`" pulumi-lang-yaml="`private`" pulumi-lang-java="`private`">`private`</span>.
  late final Output<String> ipv6AddressAttribute;

  /// The IPv6 CIDR block for the VPC. CIDR can be explicitly set or it can be derived from IPAM using <span pulumi-lang-nodejs="`ipv6NetmaskLength`" pulumi-lang-dotnet="`Ipv6NetmaskLength`" pulumi-lang-go="`ipv6NetmaskLength`" pulumi-lang-python="`ipv6_netmask_length`" pulumi-lang-yaml="`ipv6NetmaskLength`" pulumi-lang-java="`ipv6NetmaskLength`">`ipv6_netmask_length`</span>. This parameter is required if <span pulumi-lang-nodejs="`ipv6NetmaskLength`" pulumi-lang-dotnet="`Ipv6NetmaskLength`" pulumi-lang-go="`ipv6NetmaskLength`" pulumi-lang-python="`ipv6_netmask_length`" pulumi-lang-yaml="`ipv6NetmaskLength`" pulumi-lang-java="`ipv6NetmaskLength`">`ipv6_netmask_length`</span> is not set and the IPAM pool does not have <span pulumi-lang-nodejs="`allocationDefaultNetmask`" pulumi-lang-dotnet="`AllocationDefaultNetmask`" pulumi-lang-go="`allocationDefaultNetmask`" pulumi-lang-python="`allocation_default_netmask`" pulumi-lang-yaml="`allocationDefaultNetmask`" pulumi-lang-java="`allocationDefaultNetmask`">`allocation_default_netmask`</span> set. Conflicts with <span pulumi-lang-nodejs="`assignGeneratedIpv6CidrBlock`" pulumi-lang-dotnet="`AssignGeneratedIpv6CidrBlock`" pulumi-lang-go="`assignGeneratedIpv6CidrBlock`" pulumi-lang-python="`assign_generated_ipv6_cidr_block`" pulumi-lang-yaml="`assignGeneratedIpv6CidrBlock`" pulumi-lang-java="`assignGeneratedIpv6CidrBlock`">`assign_generated_ipv6_cidr_block`</span>.
  late final Output<String> ipv6CidrBlock;

  /// The ID of an IPv6 IPAM pool you want to use for allocating this VPC's CIDR. IPAM is a VPC feature that you can use to automate your IP address management workflows including assigning, tracking, troubleshooting, and auditing IP addresses across AWS Regions and accounts. Conflict with <span pulumi-lang-nodejs="`assignGeneratedIpv6CidrBlock`" pulumi-lang-dotnet="`AssignGeneratedIpv6CidrBlock`" pulumi-lang-go="`assignGeneratedIpv6CidrBlock`" pulumi-lang-python="`assign_generated_ipv6_cidr_block`" pulumi-lang-yaml="`assignGeneratedIpv6CidrBlock`" pulumi-lang-java="`assignGeneratedIpv6CidrBlock`">`assign_generated_ipv6_cidr_block`</span> and <span pulumi-lang-nodejs="`ipv6Pool`" pulumi-lang-dotnet="`Ipv6Pool`" pulumi-lang-go="`ipv6Pool`" pulumi-lang-python="`ipv6_pool`" pulumi-lang-yaml="`ipv6Pool`" pulumi-lang-java="`ipv6Pool`">`ipv6_pool`</span>.
  late final Output<String?> ipv6IpamPoolId;

  /// The netmask length of the IPv6 CIDR you want to allocate to this VPC. Requires specifying a <span pulumi-lang-nodejs="`ipv6IpamPoolId`" pulumi-lang-dotnet="`Ipv6IpamPoolId`" pulumi-lang-go="`ipv6IpamPoolId`" pulumi-lang-python="`ipv6_ipam_pool_id`" pulumi-lang-yaml="`ipv6IpamPoolId`" pulumi-lang-java="`ipv6IpamPoolId`">`ipv6_ipam_pool_id`</span>. This parameter is optional if the IPAM pool has <span pulumi-lang-nodejs="`allocationDefaultNetmask`" pulumi-lang-dotnet="`AllocationDefaultNetmask`" pulumi-lang-go="`allocationDefaultNetmask`" pulumi-lang-python="`allocation_default_netmask`" pulumi-lang-yaml="`allocationDefaultNetmask`" pulumi-lang-java="`allocationDefaultNetmask`">`allocation_default_netmask`</span> set, otherwise it or <span pulumi-lang-nodejs="`ipv6CidrBlock`" pulumi-lang-dotnet="`Ipv6CidrBlock`" pulumi-lang-go="`ipv6CidrBlock`" pulumi-lang-python="`ipv6_cidr_block`" pulumi-lang-yaml="`ipv6CidrBlock`" pulumi-lang-java="`ipv6CidrBlock`">`ipv6_cidr_block`</span> are required. Conflicts with <span pulumi-lang-nodejs="`ipv6CidrBlock`" pulumi-lang-dotnet="`Ipv6CidrBlock`" pulumi-lang-go="`ipv6CidrBlock`" pulumi-lang-python="`ipv6_cidr_block`" pulumi-lang-yaml="`ipv6CidrBlock`" pulumi-lang-java="`ipv6CidrBlock`">`ipv6_cidr_block`</span>.
  late final Output<int?> ipv6NetmaskLength;

  /// The  ID of an IPv6 address pool from which to allocate the IPv6 CIDR block. Conflicts with <span pulumi-lang-nodejs="`assignGeneratedIpv6CidrBlock`" pulumi-lang-dotnet="`AssignGeneratedIpv6CidrBlock`" pulumi-lang-go="`assignGeneratedIpv6CidrBlock`" pulumi-lang-python="`assign_generated_ipv6_cidr_block`" pulumi-lang-yaml="`assignGeneratedIpv6CidrBlock`" pulumi-lang-java="`assignGeneratedIpv6CidrBlock`">`assign_generated_ipv6_cidr_block`</span> and <span pulumi-lang-nodejs="`ipv6IpamPoolId`" pulumi-lang-dotnet="`Ipv6IpamPoolId`" pulumi-lang-go="`ipv6IpamPoolId`" pulumi-lang-python="`ipv6_ipam_pool_id`" pulumi-lang-yaml="`ipv6IpamPoolId`" pulumi-lang-java="`ipv6IpamPoolId`">`ipv6_ipam_pool_id`</span>.
  late final Output<String> ipv6Pool;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The ID of the VPC to make the association with.
  late final Output<String> vpcId;

  VpcIpv6CidrBlockAssociation(
    String name, {
    VpcIpv6CidrBlockAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/vpcIpv6CidrBlockAssociation:VpcIpv6CidrBlockAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.assignGeneratedIpv6CidrBlock = Output.createUnknown<bool>();
    this.ipSource = Output.createUnknown<String>();
    this.ipv6AddressAttribute = Output.createUnknown<String>();
    this.ipv6CidrBlock = Output.createUnknown<String>();
    this.ipv6IpamPoolId = Output.createUnknown<String?>();
    this.ipv6NetmaskLength = Output.createUnknown<int?>();
    this.ipv6Pool = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.vpcId = Output.createUnknown<String>();
  }
}

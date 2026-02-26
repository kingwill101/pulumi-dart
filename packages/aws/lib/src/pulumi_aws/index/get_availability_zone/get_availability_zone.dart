import 'package:pulumi/pulumi.dart';
import 'get_availability_zone_args.dart';
import 'get_availability_zone_result.dart';

/// <span pulumi-lang-nodejs="`aws.getAvailabilityZone`" pulumi-lang-dotnet="`aws.getAvailabilityZone`" pulumi-lang-go="`getAvailabilityZone`" pulumi-lang-python="`get_availability_zone`" pulumi-lang-yaml="`aws.getAvailabilityZone`" pulumi-lang-java="`aws.getAvailabilityZone`">`aws.getAvailabilityZone`</span> provides details about a specific availability zone (AZ)
/// in the current Region.
///
/// This can be used both to validate an availability zone given in a variable
/// and to split the AZ name into its component parts of an AWS Region and an
/// AZ identifier letter. The latter may be useful e.g., for implementing a
/// consistent subnet numbering scheme across several regions by mapping both
/// the region and the subnet letter to network numbers.
///
/// This is different from the <span pulumi-lang-nodejs="`aws.getAvailabilityZones`" pulumi-lang-dotnet="`aws.getAvailabilityZones`" pulumi-lang-go="`getAvailabilityZones`" pulumi-lang-python="`get_availability_zones`" pulumi-lang-yaml="`aws.getAvailabilityZones`" pulumi-lang-java="`aws.getAvailabilityZones`">`aws.getAvailabilityZones`</span> (plural) data source,
/// which provides a list of the available zones.
///
/// ## Example Usage
///
/// The following example shows how this data source might be used to derive
/// VPC and subnet CIDR prefixes systematically for an availability zone.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const config = new pulumi.Config();
/// const regionNumber = config.getObject<any>("regionNumber") || {
/// "ap-northeast-1": 5,
/// "eu-central-1": 4,
/// "us-east-1": 1,
/// "us-west-1": 2,
/// "us-west-2": 3,
/// };
/// const azNumber = config.getObject<any>("azNumber") || {
/// a: 1,
/// b: 2,
/// c: 3,
/// d: 4,
/// e: 5,
/// f: 6,
/// };
/// // Retrieve the AZ where we want to create network resources
/// // This must be in the region selected on the AWS provider.
/// const example = aws.getAvailabilityZone({
/// name: "eu-central-1a",
/// });
/// // Create a VPC for the region associated with the AZ
/// const exampleVpc = new aws.ec2.Vpc("example", {cidrBlock: example.then(example => std.cidrsubnet({
/// input: "10.0.0.0/8",
/// newbits: 4,
/// netnum: regionNumber[example.region],
/// })).then(invoke => invoke.result)});
/// // Create a subnet for the AZ within the regional VPC
/// const exampleSubnet = new aws.ec2.Subnet("example", {
/// vpcId: exampleVpc.id,
/// cidrBlock: pulumi.all([exampleVpc.cidrBlock, example]).apply(([cidrBlock, example]) => std.cidrsubnetOutput({
/// input: cidrBlock,
/// newbits: 4,
/// netnum: azNumber[example.nameSuffix],
/// })).apply(invoke => invoke.result),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// config = pulumi.Config()
/// region_number = config.get_object("regionNumber")
/// if region_number is None:
/// region_number = {
/// "ap-northeast-1": 5,
/// "eu-central-1": 4,
/// "us-east-1": 1,
/// "us-west-1": 2,
/// "us-west-2": 3,
/// }
/// az_number = config.get_object("azNumber")
/// if az_number is None:
/// az_number = {
/// "a": 1,
/// "b": 2,
/// "c": 3,
/// "d": 4,
/// "e": 5,
/// "f": 6,
/// }
/// # Retrieve the AZ where we want to create network resources
/// # This must be in the region selected on the AWS provider.
/// example = aws.get_availability_zone(name="eu-central-1a")
/// # Create a VPC for the region associated with the AZ
/// example_vpc = aws.ec2.Vpc("example", cidr_block=std.cidrsubnet(input="10.0.0.0/8",
/// newbits=4,
/// netnum=region_number[example.region]).result)
/// # Create a subnet for the AZ within the regional VPC
/// example_subnet = aws.ec2.Subnet("example",
/// vpc_id=example_vpc.id,
/// cidr_block=example_vpc.cidr_block.apply(lambda cidr_block: std.cidrsubnet(input=cidr_block,
/// newbits=4,
/// netnum=az_number[example.name_suffix])).apply(lambda invoke: invoke.result))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var config = new Config();
/// var regionNumber = config.GetObject<dynamic>("regionNumber") ??
/// {
/// { "ap-northeast-1", 5 },
/// { "eu-central-1", 4 },
/// { "us-east-1", 1 },
/// { "us-west-1", 2 },
/// { "us-west-2", 3 },
/// };
/// var azNumber = config.GetObject<dynamic>("azNumber") ??
/// {
/// { "a", 1 },
/// { "b", 2 },
/// { "c", 3 },
/// { "d", 4 },
/// { "e", 5 },
/// { "f", 6 },
/// };
/// // Retrieve the AZ where we want to create network resources
/// // This must be in the region selected on the AWS provider.
/// var example = Aws.GetAvailabilityZone.Invoke(new()
/// {
/// Name = "eu-central-1a",
/// });
///
/// // Create a VPC for the region associated with the AZ
/// var exampleVpc = new Aws.Ec2.Vpc("example", new()
/// {
/// CidrBlock = Std.Cidrsubnet.Invoke(new()
/// {
/// Input = "10.0.0.0/8",
/// Newbits = 4,
/// Netnum = regionNumber[example.Apply(getAvailabilityZoneResult => getAvailabilityZoneResult.Region)],
/// }).Apply(invoke => invoke.Result),
/// });
///
/// // Create a subnet for the AZ within the regional VPC
/// var exampleSubnet = new Aws.Ec2.Subnet("example", new()
/// {
/// VpcId = exampleVpc.Id,
/// CidrBlock = Output.Tuple(exampleVpc.CidrBlock, example).Apply(values =>
/// {
/// var cidrBlock = values.Item1;
/// var example = values.Item2;
/// return Std.Cidrsubnet.Invoke(new()
/// {
/// Input = cidrBlock,
/// Newbits = 4,
/// Netnum = azNumber[example.Apply(getAvailabilityZoneResult => getAvailabilityZoneResult.NameSuffix)],
/// });
/// }).Apply(invoke => invoke.Result),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi-std/sdk/go/std"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// cfg := config.New(ctx, "")
/// regionNumber := map[string]interface{}{
/// "ap-northeast-1": 5,
/// "eu-central-1": 4,
/// "us-east-1": 1,
/// "us-west-1": 2,
/// "us-west-2": 3,
/// };
/// if param := cfg.GetObject("regionNumber"); param != nil {
/// regionNumber = param
/// }
/// azNumber := map[string]interface{}{
/// "a": 1,
/// "b": 2,
/// "c": 3,
/// "d": 4,
/// "e": 5,
/// "f": 6,
/// };
/// if param := cfg.GetObject("azNumber"); param != nil {
/// azNumber = param
/// }
/// // Retrieve the AZ where we want to create network resources
/// // This must be in the region selected on the AWS provider.
/// example, err := aws.GetAvailabilityZone(ctx, &aws.GetAvailabilityZoneArgs{
/// Name: pulumi.StringRef("eu-central-1a"),
/// }, nil);
/// if err != nil {
/// return err
/// }
/// invokeCidrsubnet, err := std.Cidrsubnet(ctx, &std.CidrsubnetArgs{
/// Input: "10.0.0.0/8",
/// Newbits: 4,
/// Netnum: regionNumber[example.Region],
/// }, nil)
/// if err != nil {
/// return err
/// }
/// // Create a VPC for the region associated with the AZ
/// exampleVpc, err := ec2.NewVpc(ctx, "example", &ec2.VpcArgs{
/// CidrBlock: pulumi.String(invokeCidrsubnet.Result),
/// })
/// if err != nil {
/// return err
/// }
/// invokeCidrsubnet1, err := std.Cidrsubnet(ctx, &std.CidrsubnetArgs{
/// Input: cidrBlock,
/// Newbits: 4,
/// Netnum: pulumi.Int(azNumber[example.NameSuffix]),
/// }, nil)
/// if err != nil {
/// return err
/// }
/// // Create a subnet for the AZ within the regional VPC
/// _, err = ec2.NewSubnet(ctx, "example", &ec2.SubnetArgs{
/// VpcId: exampleVpc.ID(),
/// CidrBlock: pulumi.String(exampleVpc.CidrBlock.ApplyT(func(cidrBlock string) (std.CidrsubnetResult, error) {
/// %!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference)).(std.CidrsubnetResultOutput).ApplyT(func(invoke std.CidrsubnetResult) (*string, error) {
/// return invoke.Result, nil
/// }).(pulumi.StringPtrOutput)),
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
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetAvailabilityZoneArgs;
/// import com.pulumi.aws.ec2.Vpc;
/// import com.pulumi.aws.ec2.VpcArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.CidrsubnetArgs;
/// import com.pulumi.aws.ec2.Subnet;
/// import com.pulumi.aws.ec2.SubnetArgs;
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
/// final var config = ctx.config();
/// final var regionNumber = config.get("regionNumber").orElse(Map.ofEntries(
/// Map.entry("ap-northeast-1", 5),
/// Map.entry("eu-central-1", 4),
/// Map.entry("us-east-1", 1),
/// Map.entry("us-west-1", 2),
/// Map.entry("us-west-2", 3)
/// ));
/// final var azNumber = config.get("azNumber").orElse(Map.ofEntries(
/// Map.entry("a", 1),
/// Map.entry("b", 2),
/// Map.entry("c", 3),
/// Map.entry("d", 4),
/// Map.entry("e", 5),
/// Map.entry("f", 6)
/// ));
/// // Retrieve the AZ where we want to create network resources
/// // This must be in the region selected on the AWS provider.
/// final var example = AwsFunctions.getAvailabilityZone(GetAvailabilityZoneArgs.builder()
/// .name("eu-central-1a")
/// .build());
///
/// // Create a VPC for the region associated with the AZ
/// var exampleVpc = new Vpc("exampleVpc", VpcArgs.builder()
/// .cidrBlock(StdFunctions.cidrsubnet(CidrsubnetArgs.builder()
/// .input("10.0.0.0/8")
/// .newbits(4)
/// .netnum(regionNumber[example.region()])
/// .build()).result())
/// .build());
///
/// // Create a subnet for the AZ within the regional VPC
/// var exampleSubnet = new Subnet("exampleSubnet", SubnetArgs.builder()
/// .vpcId(exampleVpc.id())
/// .cidrBlock(exampleVpc.cidrBlock().applyValue(_cidrBlock -> StdFunctions.cidrsubnet(CidrsubnetArgs.builder()
/// .input(_cidrBlock)
/// .newbits(4)
/// .netnum(azNumber[example.nameSuffix()])
/// .build())).applyValue(_invoke -> _invoke.result()))
/// .build());
///
/// }
/// }
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetAvailabilityZoneResult> getAvailabilityZone(
  GetAvailabilityZoneArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:index/getAvailabilityZone:getAvailabilityZone',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAvailabilityZoneResult.fromMap(result);
}

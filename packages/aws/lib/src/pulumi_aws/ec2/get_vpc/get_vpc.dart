import 'package:pulumi/pulumi.dart';
import 'get_vpc_args.dart';
import 'get_vpc_result.dart';

/// <span pulumi-lang-nodejs="`aws.ec2.Vpc`" pulumi-lang-dotnet="`aws.ec2.Vpc`" pulumi-lang-go="`ec2.Vpc`" pulumi-lang-python="`ec2.Vpc`" pulumi-lang-yaml="`aws.ec2.Vpc`" pulumi-lang-java="`aws.ec2.Vpc`">`aws.ec2.Vpc`</span> provides details about a specific VPC.
///
/// This resource can prove useful when a module accepts a vpc id as
/// an input variable and needs to, for example, determine the CIDR block of that
/// VPC.
///
/// ## Example Usage
///
/// The following example shows how one might accept a VPC id as a variable
/// and use this data source to obtain the data necessary to create a subnet
/// within it.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const config = new pulumi.Config();
/// const vpcId = config.requireObject<any>("vpcId");
/// const selected = aws.ec2.getVpc({
/// id: vpcId,
/// });
/// const example = new aws.ec2.Subnet("example", {
/// vpcId: selected.then(selected => selected.id),
/// availabilityZone: "us-west-2a",
/// cidrBlock: selected.then(selected => std.cidrsubnet({
/// input: selected.cidrBlock,
/// newbits: 4,
/// netnum: 1,
/// })).then(invoke => invoke.result),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// config = pulumi.Config()
/// vpc_id = config.require_object("vpcId")
/// selected = aws.ec2.get_vpc(id=vpc_id)
/// example = aws.ec2.Subnet("example",
/// vpc_id=selected.id,
/// availability_zone="us-west-2a",
/// cidr_block=std.cidrsubnet(input=selected.cidr_block,
/// newbits=4,
/// netnum=1).result)
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
/// var vpcId = config.RequireObject<dynamic>("vpcId");
/// var selected = Aws.Ec2.GetVpc.Invoke(new()
/// {
/// Id = vpcId,
/// });
///
/// var example = new Aws.Ec2.Subnet("example", new()
/// {
/// VpcId = selected.Apply(getVpcResult => getVpcResult.Id),
/// AvailabilityZone = "us-west-2a",
/// CidrBlock = Std.Cidrsubnet.Invoke(new()
/// {
/// Input = selected.Apply(getVpcResult => getVpcResult.CidrBlock),
/// Newbits = 4,
/// Netnum = 1,
/// }).Apply(invoke => invoke.Result),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi-std/sdk/go/std"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// cfg := config.New(ctx, "")
/// vpcId := cfg.RequireObject("vpcId")
/// selected, err := ec2.LookupVpc(ctx, &ec2.LookupVpcArgs{
/// Id: pulumi.StringRef(vpcId),
/// }, nil)
/// if err != nil {
/// return err
/// }
/// invokeCidrsubnet, err := std.Cidrsubnet(ctx, &std.CidrsubnetArgs{
/// Input:   selected.CidrBlock,
/// Newbits: 4,
/// Netnum:  1,
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = ec2.NewSubnet(ctx, "example", &ec2.SubnetArgs{
/// VpcId:            pulumi.String(selected.Id),
/// AvailabilityZone: pulumi.String("us-west-2a"),
/// CidrBlock:        pulumi.String(invokeCidrsubnet.Result),
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
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetVpcArgs;
/// import com.pulumi.aws.ec2.Subnet;
/// import com.pulumi.aws.ec2.SubnetArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.CidrsubnetArgs;
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
/// final var vpcId = config.get("vpcId");
/// final var selected = Ec2Functions.getVpc(GetVpcArgs.builder()
/// .id(vpcId)
/// .build());
///
/// var example = new Subnet("example", SubnetArgs.builder()
/// .vpcId(selected.id())
/// .availabilityZone("us-west-2a")
/// .cidrBlock(StdFunctions.cidrsubnet(CidrsubnetArgs.builder()
/// .input(selected.cidrBlock())
/// .newbits(4)
/// .netnum(1)
/// .build()).result())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// configuration:
/// vpcId:
/// type: dynamic
/// resources:
/// example:
/// type: aws:ec2:Subnet
/// properties:
/// vpcId: ${selected.id}
/// availabilityZone: us-west-2a
/// cidrBlock:
/// fn::invoke:
/// function: std:cidrsubnet
/// arguments:
/// input: ${selected.cidrBlock}
/// newbits: 4
/// netnum: 1
/// return: result
/// variables:
/// selected:
/// fn::invoke:
/// function: aws:ec2:getVpc
/// arguments:
/// id: ${vpcId}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetVpcResult> getVpc(
  GetVpcArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getVpc:getVpc',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetVpcResult.fromMap(result);
}

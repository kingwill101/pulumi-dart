import 'package:pulumi/pulumi.dart';
import 'get_subnets_args.dart';
import 'get_subnets_result.dart';

/// This resource can be useful for getting back a set of subnet IDs.
///
/// ## Example Usage
///
/// The following shows outputting all CIDR blocks for every subnet ID in a VPC.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const example = aws.ec2.getSubnets({
/// filters: [{
/// name: "vpc-id",
/// values: [vpcId],
/// }],
/// });
/// const exampleGetSubnet = example.then(example => std.toset({
/// input: example.ids,
/// })).then(invoke => .reduce((__obj, [__key, __value]) => ({ ...__obj, [__key]: aws.ec2.getSubnet({
/// id: __value,
/// }) })));
/// export const subnetCidrBlocks = exampleGetSubnet.apply(exampleGetSubnet => Object.values(exampleGetSubnet).map(s => (s.cidrBlock)));
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// example = aws.ec2.get_subnets(filters=[{
/// "name": "vpc-id",
/// "values": [vpc_id],
/// }])
/// example_get_subnet = {__key: aws.ec2.get_subnet(id=__value) for __key, __value in std.toset(input=example.ids).result}
/// pulumi.export("subnetCidrBlocks", [s.cidr_block for s in example_get_subnet])
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
/// var example = Aws.Ec2.GetSubnets.Invoke(new()
/// {
/// Filters = new[]
/// {
/// new Aws.Ec2.Inputs.GetSubnetsFilterInputArgs
/// {
/// Name = "vpc-id",
/// Values = new[]
/// {
/// vpcId,
/// },
/// },
/// },
/// });
///
/// var exampleGetSubnet = Std.Toset.Invoke(new()
/// {
/// Input = example.Apply(getSubnetsResult => getSubnetsResult.Ids),
/// }).Apply(invoke => );
///
/// return new Dictionary<string, object?>
/// {
/// ["subnetCidrBlocks"] = exampleGetSubnet.Apply(exampleGetSubnet => (exampleGetSubnet).Values.Select(s =>
/// {
/// return s.CidrBlock;
/// }).ToList()),
/// };
/// });
/// ```
/// <!--End PulumiCodeChooser -->
///
/// The following example retrieves a set of all subnets in a VPC with a custom
/// tag of `Tier` set to a value of "Private" so that the <span pulumi-lang-nodejs="`aws.ec2.Instance`" pulumi-lang-dotnet="`aws.ec2.Instance`" pulumi-lang-go="`ec2.Instance`" pulumi-lang-python="`ec2.Instance`" pulumi-lang-yaml="`aws.ec2.Instance`" pulumi-lang-java="`aws.ec2.Instance`">`aws.ec2.Instance`</span> resource
/// can loop through the subnets, putting instances across availability zones.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// export = async () => {
/// const _private = await aws.ec2.getSubnets({
/// filters: [{
/// name: "vpc-id",
/// values: [vpcId],
/// }],
/// tags: {
/// Tier: "Private",
/// },
/// });
/// const app: aws.ec2.Instance[] = [];
/// for (const range of std.toset({
/// input: _private.ids,
/// }).result.map((v, k) => ({key: k, value: v}))) {
/// app.push(new aws.ec2.Instance(`app-${range.key}`, {
/// ami: ami,
/// instanceType: aws.ec2.InstanceType.T2_Micro,
/// subnetId: range.value,
/// }));
/// }
/// }
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// private = aws.ec2.get_subnets(filters=[{
/// "name": "vpc-id",
/// "values": [vpc_id],
/// }],
/// tags={
/// "Tier": "Private",
/// })
/// app = []
/// for range in [{"key": k, "value": v} for [k, v] in enumerate(std.toset(input=private.ids).result)]:
/// app.append(aws.ec2.Instance(f"app-{range['key']}",
/// ami=ami,
/// instance_type=aws.ec2.InstanceType.T2_MICRO,
/// subnet_id=range["value"]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Threading.Tasks;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(async() =>
/// {
/// var @private = await Aws.Ec2.GetSubnets.InvokeAsync(new()
/// {
/// Filters = new[]
/// {
/// new Aws.Ec2.Inputs.GetSubnetsFilterArgs
/// {
/// Name = "vpc-id",
/// Values = new[]
/// {
/// vpcId,
/// },
/// },
/// },
/// Tags =
/// {
/// { "Tier", "Private" },
/// },
/// });
///
/// var app = new List<Aws.Ec2.Instance>();
/// foreach (var range in )
/// {
/// app.Add(new Aws.Ec2.Instance($"app-{range.Key}", new()
/// {
/// Ami = ami,
/// InstanceType = Aws.Ec2.InstanceType.T2_Micro,
/// SubnetId = range.Value,
/// }));
/// }
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "fmt"
///
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi-std/sdk/go/std"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// private, err := ec2.GetSubnets(ctx, &ec2.GetSubnetsArgs{
/// Filters: []ec2.GetSubnetsFilter{
/// {
/// Name: "vpc-id",
/// Values: interface{}{
/// vpcId,
/// },
/// },
/// },
/// Tags: map[string]interface{}{
/// "Tier": "Private",
/// },
/// }, nil);
/// if err != nil {
/// return err
/// }
/// var app []*ec2.Instance
/// for key0, val0 := range interface{}(std.Toset(ctx, &std.TosetArgs{
/// Input: private.Ids,
/// }, nil).Result) {
/// __res, err := ec2.NewInstance(ctx, fmt.Sprintf("app-%v", key0), &ec2.InstanceArgs{
/// Ami: pulumi.Any(ami),
/// InstanceType: pulumi.String(ec2.InstanceType_T2_Micro),
/// SubnetId: pulumi.Any(val0),
/// })
/// if err != nil {
/// return err
/// }
/// app = append(app, __res)
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
/// import com.pulumi.aws.ec2.inputs.GetSubnetsArgs;
/// import com.pulumi.aws.ec2.Instance;
/// import com.pulumi.aws.ec2.InstanceArgs;
/// import com.pulumi.codegen.internal.KeyedValue;
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
/// final var private = Ec2Functions.getSubnets(GetSubnetsArgs.builder()
/// .filters(GetSubnetsFilterArgs.builder()
/// .name("vpc-id")
/// .values(vpcId)
/// .build())
/// .tags(Map.of("Tier", "Private"))
/// .build());
///
/// for (var range : KeyedValue.of(com.pulumi.std.StdFunctions(TosetArgs.builder()
/// .input(private_.ids())
/// .build()).result())) {
/// new Instance("app-" + range.key(), InstanceArgs.builder()
/// .ami(ami)
/// .instanceType("t2.micro")
/// .subnetId(range.value())
/// .build());
/// }
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// app:
/// type: aws:ec2:Instance
/// properties:
/// ami: ${ami}
/// instanceType: t2.micro
/// subnetId: ${range.value}
/// options: {}
/// variables:
/// private:
/// fn::invoke:
/// function: aws:ec2:getSubnets
/// arguments:
/// filters:
/// - name: vpc-id
/// values:
/// - ${vpcId}
/// tags:
/// Tier: Private
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetSubnetsResult> getSubnets(
  GetSubnetsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getSubnets:getSubnets',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSubnetsResult.fromMap(result);
}

import 'package:pulumi/pulumi.dart';
import 'get_vpc_ipam_pool_cidrs_args.dart';
import 'get_vpc_ipam_pool_cidrs_result.dart';

/// <span pulumi-lang-nodejs="`aws.ec2.getVpcIpamPoolCidrs`" pulumi-lang-dotnet="`aws.ec2.getVpcIpamPoolCidrs`" pulumi-lang-go="`ec2.getVpcIpamPoolCidrs`" pulumi-lang-python="`ec2_get_vpc_ipam_pool_cidrs`" pulumi-lang-yaml="`aws.ec2.getVpcIpamPoolCidrs`" pulumi-lang-java="`aws.ec2.getVpcIpamPoolCidrs`">`aws.ec2.getVpcIpamPoolCidrs`</span> provides details about an IPAM pool.
///
/// This resource can prove useful when an ipam pool was shared to your account and you want to know all (or a filtered list) of the CIDRs that are provisioned into the pool.
///
/// ## Example Usage
///
/// Basic usage:
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const p = aws.ec2.getVpcIpamPool({
/// filters: [
/// {
/// name: "description",
/// values: ["*mypool*"],
/// },
/// {
/// name: "address-family",
/// values: ["ipv4"],
/// },
/// ],
/// });
/// const c = p.then(p => aws.ec2.getVpcIpamPoolCidrs({
/// ipamPoolId: p.id,
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// p = aws.ec2.get_vpc_ipam_pool(filters=[
/// {
/// "name": "description",
/// "values": ["*mypool*"],
/// },
/// {
/// "name": "address-family",
/// "values": ["ipv4"],
/// },
/// ])
/// c = aws.ec2.get_vpc_ipam_pool_cidrs(ipam_pool_id=p.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var p = Aws.Ec2.GetVpcIpamPool.Invoke(new()
/// {
/// Filters = new[]
/// {
/// new Aws.Ec2.Inputs.GetVpcIpamPoolFilterInputArgs
/// {
/// Name = "description",
/// Values = new[]
/// {
/// "*mypool*",
/// },
/// },
/// new Aws.Ec2.Inputs.GetVpcIpamPoolFilterInputArgs
/// {
/// Name = "address-family",
/// Values = new[]
/// {
/// "ipv4",
/// },
/// },
/// },
/// });
///
/// var c = Aws.Ec2.GetVpcIpamPoolCidrs.Invoke(new()
/// {
/// IpamPoolId = p.Apply(getVpcIpamPoolResult => getVpcIpamPoolResult.Id),
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
/// p, err := ec2.LookupVpcIpamPool(ctx, &ec2.LookupVpcIpamPoolArgs{
/// Filters: []ec2.GetVpcIpamPoolFilter{
/// {
/// Name: "description",
/// Values: []string{
/// "*mypool*",
/// },
/// },
/// {
/// Name: "address-family",
/// Values: []string{
/// "ipv4",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = ec2.GetVpcIpamPoolCidrs(ctx, &ec2.GetVpcIpamPoolCidrsArgs{
/// IpamPoolId: p.Id,
/// }, nil)
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
/// import com.pulumi.aws.ec2.inputs.GetVpcIpamPoolArgs;
/// import com.pulumi.aws.ec2.inputs.GetVpcIpamPoolCidrsArgs;
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
/// final var p = Ec2Functions.getVpcIpamPool(GetVpcIpamPoolArgs.builder()
/// .filters(
/// GetVpcIpamPoolFilterArgs.builder()
/// .name("description")
/// .values("*mypool*")
/// .build(),
/// GetVpcIpamPoolFilterArgs.builder()
/// .name("address-family")
/// .values("ipv4")
/// .build())
/// .build());
///
/// final var c = Ec2Functions.getVpcIpamPoolCidrs(GetVpcIpamPoolCidrsArgs.builder()
/// .ipamPoolId(p.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// c:
/// fn::invoke:
/// function: aws:ec2:getVpcIpamPoolCidrs
/// arguments:
/// ipamPoolId: ${p.id}
/// p:
/// fn::invoke:
/// function: aws:ec2:getVpcIpamPool
/// arguments:
/// filters:
/// - name: description
/// values:
/// - '*mypool*'
/// - name: address-family
/// values:
/// - ipv4
/// ```
/// <!--End PulumiCodeChooser -->
///
/// Filtering:
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const c = aws.ec2.getVpcIpamPoolCidrs({
/// ipamPoolId: "ipam-pool-123",
/// filters: [{
/// name: "cidr",
/// values: ["10.*"],
/// }],
/// });
/// const mycidrs = c.then(c => .filter(cidr => cidr.state == "provisioned").map(cidr => (cidr.cidr)));
/// const pls = new aws.ec2.ManagedPrefixList("pls", {
/// entries: mycidrs.map((v, k) => ({key: k, value: v})).apply(entries => entries.map(entry => ({
/// cidr: entry.value,
/// description: entry.value,
/// }))),
/// name: `IPAM Pool (${test.id}) Cidrs`,
/// addressFamily: "IPv4",
/// maxEntries: mycidrs.length,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// c = aws.ec2.get_vpc_ipam_pool_cidrs(ipam_pool_id="ipam-pool-123",
/// filters=[{
/// "name": "cidr",
/// "values": ["10.*"],
/// }])
/// mycidrs = [cidr.cidr for cidr in c.ipam_pool_cidrs if cidr.state == "provisioned"]
/// pls = aws.ec2.ManagedPrefixList("pls",
/// entries=[{"key": k, "value": v} for k, v in mycidrs].apply(lambda entries: [{
/// "cidr": entry["value"],
/// "description": entry["value"],
/// } for entry in entries]),
/// name=f"IPAM Pool ({test['id']}) Cidrs",
/// address_family="IPv4",
/// max_entries=len(mycidrs))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var c = Aws.Ec2.GetVpcIpamPoolCidrs.Invoke(new()
/// {
/// IpamPoolId = "ipam-pool-123",
/// Filters = new[]
/// {
/// new Aws.Ec2.Inputs.GetVpcIpamPoolCidrsFilterInputArgs
/// {
/// Name = "cidr",
/// Values = new[]
/// {
/// "10.*",
/// },
/// },
/// },
/// });
///
/// var mycidrs = .Where(cidr => cidr.State == "provisioned").Select(cidr =>
/// {
/// return cidr.Cidr;
/// }).ToList();
///
/// var pls = new Aws.Ec2.ManagedPrefixList("pls", new()
/// {
/// Entries = mycidrs.Select((v, k) => new { Key = k, Value = v }).Apply(entries => entries.Select(entry =>
/// {
/// return
/// {
/// { "cidr", entry.Value },
/// { "description", entry.Value },
/// };
/// }).ToList()),
/// Name = $"IPAM Pool ({test.Id}) Cidrs",
/// AddressFamily = "IPv4",
/// MaxEntries = mycidrs.Length,
/// });
///
/// });
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetVpcIpamPoolCidrsResult> getVpcIpamPoolCidrs(
  GetVpcIpamPoolCidrsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getVpcIpamPoolCidrs:getVpcIpamPoolCidrs',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetVpcIpamPoolCidrsResult.fromMap(result);
}

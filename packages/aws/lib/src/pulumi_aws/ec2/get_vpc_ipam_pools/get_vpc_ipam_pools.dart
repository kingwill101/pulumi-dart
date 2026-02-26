import 'package:pulumi/pulumi.dart';
import 'get_vpc_ipam_pools_args.dart';
import 'get_vpc_ipam_pools_result.dart';

/// <span pulumi-lang-nodejs="`aws.ec2.getVpcIpamPools`" pulumi-lang-dotnet="`aws.ec2.getVpcIpamPools`" pulumi-lang-go="`ec2.getVpcIpamPools`" pulumi-lang-python="`ec2_get_vpc_ipam_pools`" pulumi-lang-yaml="`aws.ec2.getVpcIpamPools`" pulumi-lang-java="`aws.ec2.getVpcIpamPools`">`aws.ec2.getVpcIpamPools`</span> provides details about IPAM pools.
///
/// This resource can prove useful when IPAM pools are created in another root
/// module and you need the pool ids as input variables. For example, pools
/// can be shared via RAM and used to create vpcs with CIDRs from that pool.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.ec2.getVpcIpamPools({
/// filters: [
/// {
/// name: "description",
/// values: ["*test*"],
/// },
/// {
/// name: "address-family",
/// values: ["ipv4"],
/// },
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.ec2.get_vpc_ipam_pools(filters=[
/// {
/// "name": "description",
/// "values": ["*test*"],
/// },
/// {
/// "name": "address-family",
/// "values": ["ipv4"],
/// },
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = Aws.Ec2.GetVpcIpamPools.Invoke(new()
/// {
/// Filters = new[]
/// {
/// new Aws.Ec2.Inputs.GetVpcIpamPoolsFilterInputArgs
/// {
/// Name = "description",
/// Values = new[]
/// {
/// "*test*",
/// },
/// },
/// new Aws.Ec2.Inputs.GetVpcIpamPoolsFilterInputArgs
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
/// _, err := ec2.GetVpcIpamPools(ctx, &ec2.GetVpcIpamPoolsArgs{
/// Filters: []ec2.GetVpcIpamPoolsFilter{
/// {
/// Name: "description",
/// Values: []string{
/// "*test*",
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
/// import com.pulumi.aws.ec2.inputs.GetVpcIpamPoolsArgs;
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
/// final var test = Ec2Functions.getVpcIpamPools(GetVpcIpamPoolsArgs.builder()
/// .filters(
/// GetVpcIpamPoolsFilterArgs.builder()
/// .name("description")
/// .values("*test*")
/// .build(),
/// GetVpcIpamPoolsFilterArgs.builder()
/// .name("address-family")
/// .values("ipv4")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// test:
/// fn::invoke:
/// function: aws:ec2:getVpcIpamPools
/// arguments:
/// filters:
/// - name: description
/// values:
/// - '*test*'
/// - name: address-family
/// values:
/// - ipv4
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetVpcIpamPoolsResult> getVpcIpamPools(
  GetVpcIpamPoolsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getVpcIpamPools:getVpcIpamPools',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetVpcIpamPoolsResult.fromMap(result);
}

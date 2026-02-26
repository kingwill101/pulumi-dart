import 'package:pulumi/pulumi.dart';
import 'get_ipam_preview_next_cidr_args.dart';
import 'get_ipam_preview_next_cidr_result.dart';

/// Previews a CIDR from an IPAM address pool. Only works for private IPv4.
///
/// > **NOTE:** This functionality is also encapsulated in a resource sharing the same name. The data source can be used when you need to use the cidr in a calculation of the same Root module, <span pulumi-lang-nodejs="`count`" pulumi-lang-dotnet="`Count`" pulumi-lang-go="`count`" pulumi-lang-python="`count`" pulumi-lang-yaml="`count`" pulumi-lang-java="`count`">`count`</span> for example. However, once a cidr range has been allocated that was previewed, the next refresh will find a **new** cidr and may force new resources downstream. Make sure to use <span pulumi-lang-nodejs="`ignoreChanges`" pulumi-lang-dotnet="`IgnoreChanges`" pulumi-lang-go="`ignoreChanges`" pulumi-lang-python="`ignore_changes`" pulumi-lang-yaml="`ignoreChanges`" pulumi-lang-java="`ignoreChanges`">`ignore_changes`</span> if this is undesirable.
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
/// const test = aws.ec2.getIpamPreviewNextCidr({
/// ipamPoolId: testAwsVpcIpamPool.id,
/// netmaskLength: 28,
/// });
/// const testVpcIpamPoolCidrAllocation = new aws.ec2.VpcIpamPoolCidrAllocation("test", {
/// ipamPoolId: testAwsVpcIpamPool.id,
/// cidr: test.then(test => test.cidr),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.ec2.get_ipam_preview_next_cidr(ipam_pool_id=test_aws_vpc_ipam_pool["id"],
/// netmask_length=28)
/// test_vpc_ipam_pool_cidr_allocation = aws.ec2.VpcIpamPoolCidrAllocation("test",
/// ipam_pool_id=test_aws_vpc_ipam_pool["id"],
/// cidr=test.cidr)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = Aws.Ec2.GetIpamPreviewNextCidr.Invoke(new()
/// {
/// IpamPoolId = testAwsVpcIpamPool.Id,
/// NetmaskLength = 28,
/// });
///
/// var testVpcIpamPoolCidrAllocation = new Aws.Ec2.VpcIpamPoolCidrAllocation("test", new()
/// {
/// IpamPoolId = testAwsVpcIpamPool.Id,
/// Cidr = test.Apply(getIpamPreviewNextCidrResult => getIpamPreviewNextCidrResult.Cidr),
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
/// test, err := ec2.GetIpamPreviewNextCidr(ctx, &ec2.GetIpamPreviewNextCidrArgs{
/// IpamPoolId:    testAwsVpcIpamPool.Id,
/// NetmaskLength: pulumi.IntRef(28),
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = ec2.NewVpcIpamPoolCidrAllocation(ctx, "test", &ec2.VpcIpamPoolCidrAllocationArgs{
/// IpamPoolId: pulumi.Any(testAwsVpcIpamPool.Id),
/// Cidr:       pulumi.String(test.Cidr),
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
/// import com.pulumi.aws.ec2.inputs.GetIpamPreviewNextCidrArgs;
/// import com.pulumi.aws.ec2.VpcIpamPoolCidrAllocation;
/// import com.pulumi.aws.ec2.VpcIpamPoolCidrAllocationArgs;
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
/// final var test = Ec2Functions.getIpamPreviewNextCidr(GetIpamPreviewNextCidrArgs.builder()
/// .ipamPoolId(testAwsVpcIpamPool.id())
/// .netmaskLength(28)
/// .build());
///
/// var testVpcIpamPoolCidrAllocation = new VpcIpamPoolCidrAllocation("testVpcIpamPoolCidrAllocation", VpcIpamPoolCidrAllocationArgs.builder()
/// .ipamPoolId(testAwsVpcIpamPool.id())
/// .cidr(test.cidr())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// testVpcIpamPoolCidrAllocation:
/// type: aws:ec2:VpcIpamPoolCidrAllocation
/// name: test
/// properties:
/// ipamPoolId: ${testAwsVpcIpamPool.id}
/// cidr: ${test.cidr}
/// variables:
/// test:
/// fn::invoke:
/// function: aws:ec2:getIpamPreviewNextCidr
/// arguments:
/// ipamPoolId: ${testAwsVpcIpamPool.id}
/// netmaskLength: 28
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetIpamPreviewNextCidrResult> getIpamPreviewNextCidr(
  GetIpamPreviewNextCidrArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getIpamPreviewNextCidr:getIpamPreviewNextCidr',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetIpamPreviewNextCidrResult.fromMap(result);
}

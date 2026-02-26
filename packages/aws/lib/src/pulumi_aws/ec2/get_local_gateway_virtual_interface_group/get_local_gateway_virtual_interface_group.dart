import 'package:pulumi/pulumi.dart';
import 'get_local_gateway_virtual_interface_group_args.dart';
import 'get_local_gateway_virtual_interface_group_result.dart';

/// Provides details about an EC2 Local Gateway Virtual Interface Group. More information can be found in the [Outposts User Guide](https://docs.aws.amazon.com/outposts/latest/userguide/outposts-networking-components.html#routing).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ec2.getLocalGatewayVirtualInterfaceGroup({
/// localGatewayId: exampleAwsEc2LocalGateway.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.get_local_gateway_virtual_interface_group(local_gateway_id=example_aws_ec2_local_gateway["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Ec2.GetLocalGatewayVirtualInterfaceGroup.Invoke(new()
/// {
/// LocalGatewayId = exampleAwsEc2LocalGateway.Id,
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
/// _, err := ec2.GetLocalGatewayVirtualInterfaceGroup(ctx, &ec2.GetLocalGatewayVirtualInterfaceGroupArgs{
/// LocalGatewayId: pulumi.StringRef(exampleAwsEc2LocalGateway.Id),
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
/// import com.pulumi.aws.ec2.inputs.GetLocalGatewayVirtualInterfaceGroupArgs;
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
/// final var example = Ec2Functions.getLocalGatewayVirtualInterfaceGroup(GetLocalGatewayVirtualInterfaceGroupArgs.builder()
/// .localGatewayId(exampleAwsEc2LocalGateway.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:ec2:getLocalGatewayVirtualInterfaceGroup
/// arguments:
/// localGatewayId: ${exampleAwsEc2LocalGateway.id}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetLocalGatewayVirtualInterfaceGroupResult>
    getLocalGatewayVirtualInterfaceGroup(
  GetLocalGatewayVirtualInterfaceGroupArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getLocalGatewayVirtualInterfaceGroup:getLocalGatewayVirtualInterfaceGroup',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetLocalGatewayVirtualInterfaceGroupResult.fromMap(result);
}

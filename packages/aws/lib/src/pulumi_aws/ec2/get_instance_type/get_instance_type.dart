import 'package:pulumi/pulumi.dart';
import 'get_instance_type_args.dart';
import 'get_instance_type_result.dart';

/// Get characteristics for a single EC2 Instance Type.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ec2.getInstanceType({
/// instanceType: "t2.micro",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.get_instance_type(instance_type="t2.micro")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Ec2.GetInstanceType.Invoke(new()
/// {
/// InstanceType = "t2.micro",
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
/// _, err := ec2.GetInstanceType(ctx, &ec2.GetInstanceTypeArgs{
/// InstanceType: "t2.micro",
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
/// import com.pulumi.aws.ec2.inputs.GetInstanceTypeArgs;
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
/// final var example = Ec2Functions.getInstanceType(GetInstanceTypeArgs.builder()
/// .instanceType("t2.micro")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:ec2:getInstanceType
/// arguments:
/// instanceType: t2.micro
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetInstanceTypeResult> getInstanceType(
  GetInstanceTypeArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getInstanceType:getInstanceType',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstanceTypeResult.fromMap(result);
}

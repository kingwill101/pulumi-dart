import 'package:pulumi/pulumi.dart';
import 'get_outpost_instance_type_args.dart';
import 'get_outpost_instance_type_result.dart';

/// Information about single Outpost Instance Type.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.outposts.getOutpostInstanceType({
/// arn: exampleAwsOutpostsOutpost.arn,
/// preferredInstanceTypes: [
/// "m5.large",
/// "m5.4xlarge",
/// ],
/// });
/// const exampleEc2Instance = new aws.index.Ec2Instance("example", {instanceType: example.instanceType});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.outposts.get_outpost_instance_type(arn=example_aws_outposts_outpost["arn"],
/// preferred_instance_types=[
/// "m5.large",
/// "m5.4xlarge",
/// ])
/// example_ec2_instance = aws.index.Ec2Instance("example", instance_type=example.instance_type)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Outposts.GetOutpostInstanceType.Invoke(new()
/// {
/// Arn = exampleAwsOutpostsOutpost.Arn,
/// PreferredInstanceTypes = new[]
/// {
/// "m5.large",
/// "m5.4xlarge",
/// },
/// });
///
/// var exampleEc2Instance = new Aws.Index.Ec2Instance("example", new()
/// {
/// InstanceType = example.Apply(getOutpostInstanceTypeResult => getOutpostInstanceTypeResult.InstanceType),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/outposts"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := outposts.GetOutpostInstanceType(ctx, &outposts.GetOutpostInstanceTypeArgs{
/// Arn: exampleAwsOutpostsOutpost.Arn,
/// PreferredInstanceTypes: []string{
/// "m5.large",
/// "m5.4xlarge",
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = aws.NewEc2Instance(ctx, "example", &aws.Ec2InstanceArgs{
/// InstanceType: example.InstanceType,
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
/// import com.pulumi.aws.outposts.OutpostsFunctions;
/// import com.pulumi.aws.outposts.inputs.GetOutpostInstanceTypeArgs;
/// import com.pulumi.aws.Ec2Instance;
/// import com.pulumi.aws.Ec2InstanceArgs;
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
/// final var example = OutpostsFunctions.getOutpostInstanceType(GetOutpostInstanceTypeArgs.builder()
/// .arn(exampleAwsOutpostsOutpost.arn())
/// .preferredInstanceTypes(
/// "m5.large",
/// "m5.4xlarge")
/// .build());
///
/// var exampleEc2Instance = new Ec2Instance("exampleEc2Instance", Ec2InstanceArgs.builder()
/// .instanceType(example.instanceType())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// exampleEc2Instance:
/// type: aws:Ec2Instance
/// name: example
/// properties:
/// instanceType: ${example.instanceType}
/// variables:
/// example:
/// fn::invoke:
/// function: aws:outposts:getOutpostInstanceType
/// arguments:
/// arn: ${exampleAwsOutpostsOutpost.arn}
/// preferredInstanceTypes:
/// - m5.large
/// - m5.4xlarge
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetOutpostInstanceTypeResult> getOutpostInstanceType(
  GetOutpostInstanceTypeArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:outposts/getOutpostInstanceType:getOutpostInstanceType',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetOutpostInstanceTypeResult.fromMap(result);
}

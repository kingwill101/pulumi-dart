import 'package:pulumi/pulumi.dart';
import 'get_instance_args2.dart';
import 'get_instance_result2.dart';

/// Use this data source to get the ID of an Amazon EC2 Instance for use in other resources.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const foo = aws.ec2.getInstance({
/// instanceId: "i-instanceid",
/// filters: [
/// {
/// name: "image-id",
/// values: ["ami-xxxxxxxx"],
/// },
/// {
/// name: "tag:Name",
/// values: ["instance-name-tag"],
/// },
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// foo = aws.ec2.get_instance(instance_id="i-instanceid",
/// filters=[
/// {
/// "name": "image-id",
/// "values": ["ami-xxxxxxxx"],
/// },
/// {
/// "name": "tag:Name",
/// "values": ["instance-name-tag"],
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
/// var foo = Aws.Ec2.GetInstance.Invoke(new()
/// {
/// InstanceId = "i-instanceid",
/// Filters = new[]
/// {
/// new Aws.Ec2.Inputs.GetInstanceFilterInputArgs
/// {
/// Name = "image-id",
/// Values = new[]
/// {
/// "ami-xxxxxxxx",
/// },
/// },
/// new Aws.Ec2.Inputs.GetInstanceFilterInputArgs
/// {
/// Name = "tag:Name",
/// Values = new[]
/// {
/// "instance-name-tag",
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
/// _, err := ec2.LookupInstance(ctx, &ec2.LookupInstanceArgs{
/// InstanceId: pulumi.StringRef("i-instanceid"),
/// Filters: []ec2.GetInstanceFilter{
/// {
/// Name: "image-id",
/// Values: []string{
/// "ami-xxxxxxxx",
/// },
/// },
/// {
/// Name: "tag:Name",
/// Values: []string{
/// "instance-name-tag",
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
/// import com.pulumi.aws.ec2.inputs.GetInstanceArgs;
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
/// final var foo = Ec2Functions.getInstance(GetInstanceArgs.builder()
/// .instanceId("i-instanceid")
/// .filters(
/// GetInstanceFilterArgs.builder()
/// .name("image-id")
/// .values("ami-xxxxxxxx")
/// .build(),
/// GetInstanceFilterArgs.builder()
/// .name("tag:Name")
/// .values("instance-name-tag")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// foo:
/// fn::invoke:
/// function: aws:ec2:getInstance
/// arguments:
/// instanceId: i-instanceid
/// filters:
/// - name: image-id
/// values:
/// - ami-xxxxxxxx
/// - name: tag:Name
/// values:
/// - instance-name-tag
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetInstanceResult2> getInstance2(
  GetInstanceArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getInstance:getInstance',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstanceResult2.fromMap(result);
}

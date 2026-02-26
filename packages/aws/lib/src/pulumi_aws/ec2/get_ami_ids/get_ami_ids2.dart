import 'package:pulumi/pulumi.dart';
import 'get_ami_ids_args2.dart';
import 'get_ami_ids_result2.dart';

/// Use this data source to get a list of AMI IDs matching the specified criteria.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const ubuntu = aws.ec2.getAmiIds({
/// owners: ["099720109477"],
/// filters: [{
/// name: "name",
/// values: ["ubuntu/images/ubuntu-*-*-amd64-server-*"],
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// ubuntu = aws.ec2.get_ami_ids(owners=["099720109477"],
/// filters=[{
/// "name": "name",
/// "values": ["ubuntu/images/ubuntu-*-*-amd64-server-*"],
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var ubuntu = Aws.Ec2.GetAmiIds.Invoke(new()
/// {
/// Owners = new[]
/// {
/// "099720109477",
/// },
/// Filters = new[]
/// {
/// new Aws.Ec2.Inputs.GetAmiIdsFilterInputArgs
/// {
/// Name = "name",
/// Values = new[]
/// {
/// "ubuntu/images/ubuntu-*-*-amd64-server-*",
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
/// _, err := ec2.GetAmiIds(ctx, &ec2.GetAmiIdsArgs{
/// Owners: []string{
/// "099720109477",
/// },
/// Filters: []ec2.GetAmiIdsFilter{
/// {
/// Name: "name",
/// Values: []string{
/// "ubuntu/images/ubuntu-*-*-amd64-server-*",
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
/// import com.pulumi.aws.ec2.inputs.GetAmiIdsArgs;
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
/// final var ubuntu = Ec2Functions.getAmiIds(GetAmiIdsArgs.builder()
/// .owners("099720109477")
/// .filters(GetAmiIdsFilterArgs.builder()
/// .name("name")
/// .values("ubuntu/images/ubuntu-*-*-amd64-server-*")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// ubuntu:
/// fn::invoke:
/// function: aws:ec2:getAmiIds
/// arguments:
/// owners:
/// - '099720109477'
/// filters:
/// - name: name
/// values:
/// - ubuntu/images/ubuntu-*-*-amd64-server-*
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetAmiIdsResult2> getAmiIds2(
  GetAmiIdsArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getAmiIds:getAmiIds',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAmiIdsResult2.fromMap(result);
}

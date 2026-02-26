import 'package:pulumi/pulumi.dart';
import 'get_instances_args3.dart';
import 'get_instances_result3.dart';

/// Use this data source to get the instance IDs of SSM managed instances.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ssm.getInstances({
/// filters: [{
/// name: "PlatformTypes",
/// values: ["Linux"],
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ssm.get_instances(filters=[{
/// "name": "PlatformTypes",
/// "values": ["Linux"],
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
/// var example = Aws.Ssm.GetInstances.Invoke(new()
/// {
/// Filters = new[]
/// {
/// new Aws.Ssm.Inputs.GetInstancesFilterInputArgs
/// {
/// Name = "PlatformTypes",
/// Values = new[]
/// {
/// "Linux",
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssm"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ssm.GetInstances(ctx, &ssm.GetInstancesArgs{
/// Filters: []ssm.GetInstancesFilter{
/// {
/// Name: "PlatformTypes",
/// Values: []string{
/// "Linux",
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
/// import com.pulumi.aws.ssm.SsmFunctions;
/// import com.pulumi.aws.ssm.inputs.GetInstancesArgs;
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
/// final var example = SsmFunctions.getInstances(GetInstancesArgs.builder()
/// .filters(GetInstancesFilterArgs.builder()
/// .name("PlatformTypes")
/// .values("Linux")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:ssm:getInstances
/// arguments:
/// filters:
/// - name: PlatformTypes
/// values:
/// - Linux
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetInstancesResult3> getInstances3(
  GetInstancesArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ssm/getInstances:getInstances',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstancesResult3.fromMap(result);
}

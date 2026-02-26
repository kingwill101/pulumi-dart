import 'package:pulumi/pulumi.dart';
import 'get_permission_sets_args.dart';
import 'get_permission_sets_result.dart';

/// Data source returning the ARN of all AWS SSO Admin Permission Sets.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ssoadmin.getInstances({});
/// const exampleGetPermissionSets = example.then(example => aws.ssoadmin.getPermissionSets({
/// instanceArn: example.arns?.[0],
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ssoadmin.get_instances()
/// example_get_permission_sets = aws.ssoadmin.get_permission_sets(instance_arn=example.arns[0])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.SsoAdmin.GetInstances.Invoke();
///
/// var exampleGetPermissionSets = Aws.SsoAdmin.GetPermissionSets.Invoke(new()
/// {
/// InstanceArn = example.Apply(getInstancesResult => getInstancesResult.Arns[0]),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssoadmin"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := ssoadmin.GetInstances(ctx, &ssoadmin.GetInstancesArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// _, err = ssoadmin.GetPermissionSets(ctx, &ssoadmin.GetPermissionSetsArgs{
/// InstanceArn: example.Arns[0],
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
/// import com.pulumi.aws.ssoadmin.SsoadminFunctions;
/// import com.pulumi.aws.ssoadmin.inputs.GetInstancesArgs;
/// import com.pulumi.aws.ssoadmin.inputs.GetPermissionSetsArgs;
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
/// final var example = SsoadminFunctions.getInstances(GetInstancesArgs.builder()
/// .build());
///
/// final var exampleGetPermissionSets = SsoadminFunctions.getPermissionSets(GetPermissionSetsArgs.builder()
/// .instanceArn(example.arns()[0])
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:ssoadmin:getInstances
/// arguments: {}
/// exampleGetPermissionSets:
/// fn::invoke:
/// function: aws:ssoadmin:getPermissionSets
/// arguments:
/// instanceArn: ${example.arns[0]}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetPermissionSetsResult> getPermissionSets(
  GetPermissionSetsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ssoadmin/getPermissionSets:getPermissionSets',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPermissionSetsResult.fromMap(result);
}

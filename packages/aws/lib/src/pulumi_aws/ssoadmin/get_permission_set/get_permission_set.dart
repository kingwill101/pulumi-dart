import 'package:pulumi/pulumi.dart';
import 'get_permission_set_args.dart';
import 'get_permission_set_result.dart';

/// Use this data source to get a Single Sign-On (SSO) Permission Set.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ssoadmin.getInstances({});
/// const exampleGetPermissionSet = example.then(example => aws.ssoadmin.getPermissionSet({
/// instanceArn: example.arns?.[0],
/// name: "Example",
/// }));
/// export const arn = exampleGetPermissionSet.then(exampleGetPermissionSet => exampleGetPermissionSet.arn);
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ssoadmin.get_instances()
/// example_get_permission_set = aws.ssoadmin.get_permission_set(instance_arn=example.arns[0],
/// name="Example")
/// pulumi.export("arn", example_get_permission_set.arn)
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
/// var exampleGetPermissionSet = Aws.SsoAdmin.GetPermissionSet.Invoke(new()
/// {
/// InstanceArn = example.Apply(getInstancesResult => getInstancesResult.Arns[0]),
/// Name = "Example",
/// });
///
/// return new Dictionary<string, object?>
/// {
/// ["arn"] = exampleGetPermissionSet.Apply(getPermissionSetResult => getPermissionSetResult.Arn),
/// };
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
/// exampleGetPermissionSet, err := ssoadmin.LookupPermissionSet(ctx, &ssoadmin.LookupPermissionSetArgs{
/// InstanceArn: example.Arns[0],
/// Name:        pulumi.StringRef("Example"),
/// }, nil)
/// if err != nil {
/// return err
/// }
/// ctx.Export("arn", exampleGetPermissionSet.Arn)
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
/// import com.pulumi.aws.ssoadmin.inputs.GetPermissionSetArgs;
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
/// final var exampleGetPermissionSet = SsoadminFunctions.getPermissionSet(GetPermissionSetArgs.builder()
/// .instanceArn(example.arns()[0])
/// .name("Example")
/// .build());
///
/// ctx.export("arn", exampleGetPermissionSet.arn());
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:ssoadmin:getInstances
/// arguments: {}
/// exampleGetPermissionSet:
/// fn::invoke:
/// function: aws:ssoadmin:getPermissionSet
/// arguments:
/// instanceArn: ${example.arns[0]}
/// name: Example
/// outputs:
/// arn: ${exampleGetPermissionSet.arn}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetPermissionSetResult> getPermissionSet(
  GetPermissionSetArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ssoadmin/getPermissionSet:getPermissionSet',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPermissionSetResult.fromMap(result);
}

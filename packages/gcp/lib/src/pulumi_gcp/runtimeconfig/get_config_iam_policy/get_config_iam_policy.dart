import 'package:pulumi/pulumi.dart';
import 'get_config_iam_policy_args.dart';
import 'get_config_iam_policy_result.dart';

/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.runtimeconfig.getConfigIamPolicy({
/// project: config.project,
/// config: config.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.runtimeconfig.get_config_iam_policy(project=config["project"],
/// config=config["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var policy = Gcp.RuntimeConfig.GetConfigIamPolicy.Invoke(new()
/// {
/// Project = config.Project,
/// Config = config.Name,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/runtimeconfig"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := runtimeconfig.LookupConfigIamPolicy(ctx, &runtimeconfig.LookupConfigIamPolicyArgs{
/// Project: pulumi.StringRef(config.Project),
/// Config:  config.Name,
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
/// import com.pulumi.gcp.runtimeconfig.RuntimeconfigFunctions;
/// import com.pulumi.gcp.runtimeconfig.inputs.GetConfigIamPolicyArgs;
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
/// final var policy = RuntimeconfigFunctions.getConfigIamPolicy(GetConfigIamPolicyArgs.builder()
/// .project(config.project())
/// .config(config.name())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// policy:
/// fn::invoke:
/// function: gcp:runtimeconfig:getConfigIamPolicy
/// arguments:
/// project: ${config.project}
/// config: ${config.name}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetConfigIamPolicyResult> getConfigIamPolicy(
  GetConfigIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:runtimeconfig/getConfigIamPolicy:getConfigIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetConfigIamPolicyResult.fromMap(result);
}

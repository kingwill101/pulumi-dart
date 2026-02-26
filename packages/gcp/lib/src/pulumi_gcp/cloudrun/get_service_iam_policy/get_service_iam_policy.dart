import 'package:pulumi/pulumi.dart';
import 'get_service_iam_policy_args.dart';
import 'get_service_iam_policy_result.dart';

/// Retrieves the current IAM policy data for service
///
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.cloudrun.getServiceIamPolicy({
/// location: _default.location,
/// project: _default.project,
/// service: _default.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.cloudrun.get_service_iam_policy(location=default["location"],
/// project=default["project"],
/// service=default["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var policy = Gcp.CloudRun.GetServiceIamPolicy.Invoke(new()
/// {
/// Location = @default.Location,
/// Project = @default.Project,
/// Service = @default.Name,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudrun"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := cloudrun.GetServiceIamPolicy(ctx, &cloudrun.GetServiceIamPolicyArgs{
/// Location: pulumi.StringRef(_default.Location),
/// Project:  pulumi.StringRef(_default.Project),
/// Service:  _default.Name,
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
/// import com.pulumi.gcp.cloudrun.CloudrunFunctions;
/// import com.pulumi.gcp.cloudrun.inputs.GetServiceIamPolicyArgs;
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
/// final var policy = CloudrunFunctions.getServiceIamPolicy(GetServiceIamPolicyArgs.builder()
/// .location(default_.location())
/// .project(default_.project())
/// .service(default_.name())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// policy:
/// fn::invoke:
/// function: gcp:cloudrun:getServiceIamPolicy
/// arguments:
/// location: ${default.location}
/// project: ${default.project}
/// service: ${default.name}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetServiceIamPolicyResult> getServiceIamPolicy(
  GetServiceIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:cloudrun/getServiceIamPolicy:getServiceIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetServiceIamPolicyResult.fromMap(result);
}

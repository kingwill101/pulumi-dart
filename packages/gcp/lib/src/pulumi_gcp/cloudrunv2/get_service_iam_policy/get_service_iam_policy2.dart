import 'package:pulumi/pulumi.dart';
import 'get_service_iam_policy_args2.dart';
import 'get_service_iam_policy_result2.dart';

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
/// const policy = gcp.cloudrunv2.getServiceIamPolicy({
/// project: _default.project,
/// location: _default.location,
/// name: _default.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.cloudrunv2.get_service_iam_policy(project=default["project"],
/// location=default["location"],
/// name=default["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var policy = Gcp.CloudRunV2.GetServiceIamPolicy.Invoke(new()
/// {
/// Project = @default.Project,
/// Location = @default.Location,
/// Name = @default.Name,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudrunv2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := cloudrunv2.LookupServiceIamPolicy(ctx, &cloudrunv2.LookupServiceIamPolicyArgs{
/// Project:  pulumi.StringRef(_default.Project),
/// Location: pulumi.StringRef(_default.Location),
/// Name:     _default.Name,
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
/// import com.pulumi.gcp.cloudrunv2.Cloudrunv2Functions;
/// import com.pulumi.gcp.cloudrunv2.inputs.GetServiceIamPolicyArgs;
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
/// final var policy = Cloudrunv2Functions.getServiceIamPolicy(GetServiceIamPolicyArgs.builder()
/// .project(default_.project())
/// .location(default_.location())
/// .name(default_.name())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// policy:
/// fn::invoke:
/// function: gcp:cloudrunv2:getServiceIamPolicy
/// arguments:
/// project: ${default.project}
/// location: ${default.location}
/// name: ${default.name}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetServiceIamPolicyResult2> getServiceIamPolicy2(
  GetServiceIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:cloudrunv2/getServiceIamPolicy:getServiceIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetServiceIamPolicyResult2.fromMap(result);
}

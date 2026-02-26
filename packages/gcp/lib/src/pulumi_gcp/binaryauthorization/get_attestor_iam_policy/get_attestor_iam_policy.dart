import 'package:pulumi/pulumi.dart';
import 'get_attestor_iam_policy_args.dart';
import 'get_attestor_iam_policy_result.dart';

/// Retrieves the current IAM policy data for attestor
///
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.binaryauthorization.getAttestorIamPolicy({
/// project: attestor.project,
/// attestor: attestor.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.binaryauthorization.get_attestor_iam_policy(project=attestor["project"],
/// attestor=attestor["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var policy = Gcp.BinaryAuthorization.GetAttestorIamPolicy.Invoke(new()
/// {
/// Project = attestor.Project,
/// Attestor = attestor.Name,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/binaryauthorization"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := binaryauthorization.LookupAttestorIamPolicy(ctx, &binaryauthorization.LookupAttestorIamPolicyArgs{
/// Project:  pulumi.StringRef(attestor.Project),
/// Attestor: attestor.Name,
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
/// import com.pulumi.gcp.binaryauthorization.BinaryauthorizationFunctions;
/// import com.pulumi.gcp.binaryauthorization.inputs.GetAttestorIamPolicyArgs;
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
/// final var policy = BinaryauthorizationFunctions.getAttestorIamPolicy(GetAttestorIamPolicyArgs.builder()
/// .project(attestor.project())
/// .attestor(attestor.name())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// policy:
/// fn::invoke:
/// function: gcp:binaryauthorization:getAttestorIamPolicy
/// arguments:
/// project: ${attestor.project}
/// attestor: ${attestor.name}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetAttestorIamPolicyResult> getAttestorIamPolicy(
  GetAttestorIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:binaryauthorization/getAttestorIamPolicy:getAttestorIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAttestorIamPolicyResult.fromMap(result);
}

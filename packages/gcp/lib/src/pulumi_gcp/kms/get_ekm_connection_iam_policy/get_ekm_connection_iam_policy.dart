import 'package:pulumi/pulumi.dart';
import 'get_ekm_connection_iam_policy_args.dart';
import 'get_ekm_connection_iam_policy_result.dart';

/// Retrieves the current IAM policy data for ekmconnection
///
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.kms.getEkmConnectionIamPolicy({
/// project: example_ekmconnection.project,
/// location: example_ekmconnection.location,
/// name: example_ekmconnection.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.kms.get_ekm_connection_iam_policy(project=example_ekmconnection["project"],
/// location=example_ekmconnection["location"],
/// name=example_ekmconnection["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var policy = Gcp.Kms.GetEkmConnectionIamPolicy.Invoke(new()
/// {
/// Project = example_ekmconnection.Project,
/// Location = example_ekmconnection.Location,
/// Name = example_ekmconnection.Name,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := kms.LookupEkmConnectionIamPolicy(ctx, &kms.LookupEkmConnectionIamPolicyArgs{
/// Project:  pulumi.StringRef(example_ekmconnection.Project),
/// Location: pulumi.StringRef(example_ekmconnection.Location),
/// Name:     example_ekmconnection.Name,
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
/// import com.pulumi.gcp.kms.KmsFunctions;
/// import com.pulumi.gcp.kms.inputs.GetEkmConnectionIamPolicyArgs;
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
/// final var policy = KmsFunctions.getEkmConnectionIamPolicy(GetEkmConnectionIamPolicyArgs.builder()
/// .project(example_ekmconnection.project())
/// .location(example_ekmconnection.location())
/// .name(example_ekmconnection.name())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// policy:
/// fn::invoke:
/// function: gcp:kms:getEkmConnectionIamPolicy
/// arguments:
/// project: ${["example-ekmconnection"].project}
/// location: ${["example-ekmconnection"].location}
/// name: ${["example-ekmconnection"].name}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetEkmConnectionIamPolicyResult> getEkmConnectionIamPolicy(
  GetEkmConnectionIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:kms/getEkmConnectionIamPolicy:getEkmConnectionIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetEkmConnectionIamPolicyResult.fromMap(result);
}

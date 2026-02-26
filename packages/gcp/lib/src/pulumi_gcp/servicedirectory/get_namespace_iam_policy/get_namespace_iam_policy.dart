import 'package:pulumi/pulumi.dart';
import 'get_namespace_iam_policy_args.dart';
import 'get_namespace_iam_policy_result.dart';

/// Retrieves the current IAM policy data for namespace
///
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.servicedirectory.getNamespaceIamPolicy({
/// name: example.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.servicedirectory.get_namespace_iam_policy(name=example["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var policy = Gcp.ServiceDirectory.GetNamespaceIamPolicy.Invoke(new()
/// {
/// Name = example.Name,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/servicedirectory"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := servicedirectory.LookupNamespaceIamPolicy(ctx, &servicedirectory.LookupNamespaceIamPolicyArgs{
/// Name: example.Name,
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
/// import com.pulumi.gcp.servicedirectory.ServicedirectoryFunctions;
/// import com.pulumi.gcp.servicedirectory.inputs.GetNamespaceIamPolicyArgs;
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
/// final var policy = ServicedirectoryFunctions.getNamespaceIamPolicy(GetNamespaceIamPolicyArgs.builder()
/// .name(example.name())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// policy:
/// fn::invoke:
/// function: gcp:servicedirectory:getNamespaceIamPolicy
/// arguments:
/// name: ${example.name}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetNamespaceIamPolicyResult> getNamespaceIamPolicy(
  GetNamespaceIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:servicedirectory/getNamespaceIamPolicy:getNamespaceIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNamespaceIamPolicyResult.fromMap(result);
}

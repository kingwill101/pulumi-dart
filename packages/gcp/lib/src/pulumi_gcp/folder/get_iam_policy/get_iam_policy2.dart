import 'package:pulumi/pulumi.dart';
import 'get_iam_policy_args2.dart';
import 'get_iam_policy_result2.dart';

/// Retrieves the current IAM policy data for a folder.
///
/// ## example
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const test = gcp.folder.getIamPolicy({
/// folder: permissiontest.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// test = gcp.folder.get_iam_policy(folder=permissiontest["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = Gcp.Folder.GetIamPolicy.Invoke(new()
/// {
/// Folder = permissiontest.Name,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/folder"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := folder.GetIamPolicy(ctx, &folder.GetIamPolicyArgs{
/// Folder: permissiontest.Name,
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
/// import com.pulumi.gcp.folder.FolderFunctions;
/// import com.pulumi.gcp.folder.inputs.GetIamPolicyArgs;
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
/// final var test = FolderFunctions.getIamPolicy(GetIamPolicyArgs.builder()
/// .folder(permissiontest.name())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// test:
/// fn::invoke:
/// function: gcp:folder:getIamPolicy
/// arguments:
/// folder: ${permissiontest.name}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetIamPolicyResult2> getIamPolicy2(
  GetIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:folder/getIamPolicy:getIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetIamPolicyResult2.fromMap(result);
}

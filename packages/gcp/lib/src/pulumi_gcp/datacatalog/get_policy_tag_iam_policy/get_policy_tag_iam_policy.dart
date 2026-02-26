import 'package:pulumi/pulumi.dart';
import 'get_policy_tag_iam_policy_args.dart';
import 'get_policy_tag_iam_policy_result.dart';

/// Retrieves the current IAM policy data for policytag
///
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.datacatalog.getPolicyTagIamPolicy({
/// policyTag: basicPolicyTag.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.datacatalog.get_policy_tag_iam_policy(policy_tag=basic_policy_tag["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var policy = Gcp.DataCatalog.GetPolicyTagIamPolicy.Invoke(new()
/// {
/// PolicyTag = basicPolicyTag.Name,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/datacatalog"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := datacatalog.LookupPolicyTagIamPolicy(ctx, &datacatalog.LookupPolicyTagIamPolicyArgs{
/// PolicyTag: basicPolicyTag.Name,
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
/// import com.pulumi.gcp.datacatalog.DatacatalogFunctions;
/// import com.pulumi.gcp.datacatalog.inputs.GetPolicyTagIamPolicyArgs;
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
/// final var policy = DatacatalogFunctions.getPolicyTagIamPolicy(GetPolicyTagIamPolicyArgs.builder()
/// .policyTag(basicPolicyTag.name())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// policy:
/// fn::invoke:
/// function: gcp:datacatalog:getPolicyTagIamPolicy
/// arguments:
/// policyTag: ${basicPolicyTag.name}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetPolicyTagIamPolicyResult> getPolicyTagIamPolicy(
  GetPolicyTagIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:datacatalog/getPolicyTagIamPolicy:getPolicyTagIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPolicyTagIamPolicyResult.fromMap(result);
}

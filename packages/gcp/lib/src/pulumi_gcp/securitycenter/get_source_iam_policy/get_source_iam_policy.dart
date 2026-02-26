import 'package:pulumi/pulumi.dart';
import 'get_source_iam_policy_args.dart';
import 'get_source_iam_policy_result.dart';

/// Retrieves the current IAM policy data for source
///
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.securitycenter.getSourceIamPolicy({
/// source: customSource.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.securitycenter.get_source_iam_policy(source=custom_source["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var policy = Gcp.SecurityCenter.GetSourceIamPolicy.Invoke(new()
/// {
/// Source = customSource.Name,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/securitycenter"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := securitycenter.LookupSourceIamPolicy(ctx, &securitycenter.LookupSourceIamPolicyArgs{
/// Source: customSource.Name,
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
/// import com.pulumi.gcp.securitycenter.SecuritycenterFunctions;
/// import com.pulumi.gcp.securitycenter.inputs.GetSourceIamPolicyArgs;
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
/// final var policy = SecuritycenterFunctions.getSourceIamPolicy(GetSourceIamPolicyArgs.builder()
/// .source(customSource.name())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// policy:
/// fn::invoke:
/// function: gcp:securitycenter:getSourceIamPolicy
/// arguments:
/// source: ${customSource.name}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetSourceIamPolicyResult> getSourceIamPolicy(
  GetSourceIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:securitycenter/getSourceIamPolicy:getSourceIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSourceIamPolicyResult.fromMap(result);
}

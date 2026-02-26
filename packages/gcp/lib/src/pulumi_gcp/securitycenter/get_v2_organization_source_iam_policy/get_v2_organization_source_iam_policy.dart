import 'package:pulumi/pulumi.dart';
import 'get_v2_organization_source_iam_policy_args.dart';
import 'get_v2_organization_source_iam_policy_result.dart';

/// Retrieves the current IAM policy data for organizationsource
///
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.securitycenter.getV2OrganizationSourceIamPolicy({
/// source: customSource.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.securitycenter.get_v2_organization_source_iam_policy(source=custom_source["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var policy = Gcp.SecurityCenter.GetV2OrganizationSourceIamPolicy.Invoke(new()
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
/// _, err := securitycenter.LookupV2OrganizationSourceIamPolicy(ctx, &securitycenter.LookupV2OrganizationSourceIamPolicyArgs{
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
/// import com.pulumi.gcp.securitycenter.inputs.GetV2OrganizationSourceIamPolicyArgs;
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
/// final var policy = SecuritycenterFunctions.getV2OrganizationSourceIamPolicy(GetV2OrganizationSourceIamPolicyArgs.builder()
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
/// function: gcp:securitycenter:getV2OrganizationSourceIamPolicy
/// arguments:
/// source: ${customSource.name}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetV2OrganizationSourceIamPolicyResult> getV2OrganizationSourceIamPolicy(
  GetV2OrganizationSourceIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:securitycenter/getV2OrganizationSourceIamPolicy:getV2OrganizationSourceIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetV2OrganizationSourceIamPolicyResult.fromMap(result);
}

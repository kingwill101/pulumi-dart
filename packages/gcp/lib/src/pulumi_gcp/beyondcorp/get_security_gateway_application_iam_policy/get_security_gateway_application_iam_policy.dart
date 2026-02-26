import 'package:pulumi/pulumi.dart';
import 'get_security_gateway_application_iam_policy_args.dart';
import 'get_security_gateway_application_iam_policy_result.dart';

/// Retrieves the current IAM policy data for securitygatewayapplication
///
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.beyondcorp.getSecurityGatewayApplicationIamPolicy({
/// project: example.project,
/// securityGatewayId: example.securityGatewayId,
/// applicationId: example.applicationId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.beyondcorp.get_security_gateway_application_iam_policy(project=example["project"],
/// security_gateway_id=example["securityGatewayId"],
/// application_id=example["applicationId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var policy = Gcp.Beyondcorp.GetSecurityGatewayApplicationIamPolicy.Invoke(new()
/// {
/// Project = example.Project,
/// SecurityGatewayId = example.SecurityGatewayId,
/// ApplicationId = example.ApplicationId,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/beyondcorp"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := beyondcorp.LookupSecurityGatewayApplicationIamPolicy(ctx, &beyondcorp.LookupSecurityGatewayApplicationIamPolicyArgs{
/// Project:           pulumi.StringRef(example.Project),
/// SecurityGatewayId: example.SecurityGatewayId,
/// ApplicationId:     example.ApplicationId,
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
/// import com.pulumi.gcp.beyondcorp.BeyondcorpFunctions;
/// import com.pulumi.gcp.beyondcorp.inputs.GetSecurityGatewayApplicationIamPolicyArgs;
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
/// final var policy = BeyondcorpFunctions.getSecurityGatewayApplicationIamPolicy(GetSecurityGatewayApplicationIamPolicyArgs.builder()
/// .project(example.project())
/// .securityGatewayId(example.securityGatewayId())
/// .applicationId(example.applicationId())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// policy:
/// fn::invoke:
/// function: gcp:beyondcorp:getSecurityGatewayApplicationIamPolicy
/// arguments:
/// project: ${example.project}
/// securityGatewayId: ${example.securityGatewayId}
/// applicationId: ${example.applicationId}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetSecurityGatewayApplicationIamPolicyResult>
    getSecurityGatewayApplicationIamPolicy(
  GetSecurityGatewayApplicationIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:beyondcorp/getSecurityGatewayApplicationIamPolicy:getSecurityGatewayApplicationIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSecurityGatewayApplicationIamPolicyResult.fromMap(result);
}

import 'package:pulumi/pulumi.dart';
import 'get_security_gateway_iam_policy_args.dart';
import 'get_security_gateway_iam_policy_result.dart';

/// Retrieves the current IAM policy data for securitygateway
///
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.beyondcorp.getSecurityGatewayIamPolicy({
/// project: example.project,
/// location: example.location,
/// securityGatewayId: example.securityGatewayId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.beyondcorp.get_security_gateway_iam_policy(project=example["project"],
/// location=example["location"],
/// security_gateway_id=example["securityGatewayId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var policy = Gcp.Beyondcorp.GetSecurityGatewayIamPolicy.Invoke(new()
/// {
/// Project = example.Project,
/// Location = example.Location,
/// SecurityGatewayId = example.SecurityGatewayId,
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
/// _, err := beyondcorp.LookupSecurityGatewayIamPolicy(ctx, &beyondcorp.LookupSecurityGatewayIamPolicyArgs{
/// Project:           pulumi.StringRef(example.Project),
/// Location:          pulumi.StringRef(example.Location),
/// SecurityGatewayId: example.SecurityGatewayId,
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
/// import com.pulumi.gcp.beyondcorp.inputs.GetSecurityGatewayIamPolicyArgs;
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
/// final var policy = BeyondcorpFunctions.getSecurityGatewayIamPolicy(GetSecurityGatewayIamPolicyArgs.builder()
/// .project(example.project())
/// .location(example.location())
/// .securityGatewayId(example.securityGatewayId())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// policy:
/// fn::invoke:
/// function: gcp:beyondcorp:getSecurityGatewayIamPolicy
/// arguments:
/// project: ${example.project}
/// location: ${example.location}
/// securityGatewayId: ${example.securityGatewayId}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetSecurityGatewayIamPolicyResult> getSecurityGatewayIamPolicy(
  GetSecurityGatewayIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:beyondcorp/getSecurityGatewayIamPolicy:getSecurityGatewayIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSecurityGatewayIamPolicyResult.fromMap(result);
}

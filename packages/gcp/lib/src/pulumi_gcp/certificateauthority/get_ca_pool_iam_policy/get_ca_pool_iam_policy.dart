import 'package:pulumi/pulumi.dart';
import 'get_ca_pool_iam_policy_args.dart';
import 'get_ca_pool_iam_policy_result.dart';

/// Retrieves the current IAM policy data for capool
///
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.certificateauthority.getCaPoolIamPolicy({
/// caPool: _default.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.certificateauthority.get_ca_pool_iam_policy(ca_pool=default["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var policy = Gcp.CertificateAuthority.GetCaPoolIamPolicy.Invoke(new()
/// {
/// CaPool = @default.Id,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/certificateauthority"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := certificateauthority.LookupCaPoolIamPolicy(ctx, &certificateauthority.LookupCaPoolIamPolicyArgs{
/// CaPool: _default.Id,
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
/// import com.pulumi.gcp.certificateauthority.CertificateauthorityFunctions;
/// import com.pulumi.gcp.certificateauthority.inputs.GetCaPoolIamPolicyArgs;
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
/// final var policy = CertificateauthorityFunctions.getCaPoolIamPolicy(GetCaPoolIamPolicyArgs.builder()
/// .caPool(default_.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// policy:
/// fn::invoke:
/// function: gcp:certificateauthority:getCaPoolIamPolicy
/// arguments:
/// caPool: ${default.id}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetCaPoolIamPolicyResult> getCaPoolIamPolicy(
  GetCaPoolIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:certificateauthority/getCaPoolIamPolicy:getCaPoolIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetCaPoolIamPolicyResult.fromMap(result);
}

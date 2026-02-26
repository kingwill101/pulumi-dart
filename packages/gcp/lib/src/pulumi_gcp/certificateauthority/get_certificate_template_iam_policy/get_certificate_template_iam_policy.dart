import 'package:pulumi/pulumi.dart';
import 'get_certificate_template_iam_policy_args.dart';
import 'get_certificate_template_iam_policy_result.dart';

/// Retrieves the current IAM policy data for certificatetemplate
///
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.certificateauthority.getCertificateTemplateIamPolicy({
/// certificateTemplate: _default.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.certificateauthority.get_certificate_template_iam_policy(certificate_template=default["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var policy = Gcp.CertificateAuthority.GetCertificateTemplateIamPolicy.Invoke(new()
/// {
/// CertificateTemplate = @default.Id,
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
/// _, err := certificateauthority.LookupCertificateTemplateIamPolicy(ctx, &certificateauthority.LookupCertificateTemplateIamPolicyArgs{
/// CertificateTemplate: _default.Id,
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
/// import com.pulumi.gcp.certificateauthority.inputs.GetCertificateTemplateIamPolicyArgs;
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
/// final var policy = CertificateauthorityFunctions.getCertificateTemplateIamPolicy(GetCertificateTemplateIamPolicyArgs.builder()
/// .certificateTemplate(default_.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// policy:
/// fn::invoke:
/// function: gcp:certificateauthority:getCertificateTemplateIamPolicy
/// arguments:
/// certificateTemplate: ${default.id}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetCertificateTemplateIamPolicyResult> getCertificateTemplateIamPolicy(
  GetCertificateTemplateIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:certificateauthority/getCertificateTemplateIamPolicy:getCertificateTemplateIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetCertificateTemplateIamPolicyResult.fromMap(result);
}

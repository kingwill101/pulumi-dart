import 'package:pulumi/pulumi.dart';
import 'get_project_service_account_args.dart';
import 'get_project_service_account_result.dart';

/// Get the email address of a project's Access Approval service account.
///
/// Each Google Cloud project has a unique service account used by Access Approval.
/// When using Access Approval with a
/// [custom signing key](https://cloud.google.com/cloud-provider-access-management/access-approval/docs/review-approve-access-requests-custom-keys),
/// this account needs to be granted the `cloudkms.signerVerifier` IAM role on the
/// Cloud KMS key used to sign approvals.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const serviceAccount = gcp.accessapproval.getProjectServiceAccount({
/// projectId: "my-project",
/// });
/// const iam = new gcp.kms.CryptoKeyIAMMember("iam", {
/// cryptoKeyId: cryptoKey.id,
/// role: "roles/cloudkms.signerVerifier",
/// member: serviceAccount.then(serviceAccount => `serviceAccount:${serviceAccount.accountEmail}`),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// service_account = gcp.accessapproval.get_project_service_account(project_id="my-project")
/// iam = gcp.kms.CryptoKeyIAMMember("iam",
/// crypto_key_id=crypto_key["id"],
/// role="roles/cloudkms.signerVerifier",
/// member=f"serviceAccount:{service_account.account_email}")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var serviceAccount = Gcp.AccessApproval.GetProjectServiceAccount.Invoke(new()
/// {
/// ProjectId = "my-project",
/// });
///
/// var iam = new Gcp.Kms.CryptoKeyIAMMember("iam", new()
/// {
/// CryptoKeyId = cryptoKey.Id,
/// Role = "roles/cloudkms.signerVerifier",
/// Member = $"serviceAccount:{serviceAccount.Apply(getProjectServiceAccountResult => getProjectServiceAccountResult.AccountEmail)}",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "fmt"
///
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/accessapproval"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// serviceAccount, err := accessapproval.GetProjectServiceAccount(ctx, &accessapproval.GetProjectServiceAccountArgs{
/// ProjectId: "my-project",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = kms.NewCryptoKeyIAMMember(ctx, "iam", &kms.CryptoKeyIAMMemberArgs{
/// CryptoKeyId: pulumi.Any(cryptoKey.Id),
/// Role:        pulumi.String("roles/cloudkms.signerVerifier"),
/// Member:      pulumi.Sprintf("serviceAccount:%v", serviceAccount.AccountEmail),
/// })
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
/// import com.pulumi.gcp.accessapproval.AccessapprovalFunctions;
/// import com.pulumi.gcp.accessapproval.inputs.GetProjectServiceAccountArgs;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMember;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMemberArgs;
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
/// final var serviceAccount = AccessapprovalFunctions.getProjectServiceAccount(GetProjectServiceAccountArgs.builder()
/// .projectId("my-project")
/// .build());
///
/// var iam = new CryptoKeyIAMMember("iam", CryptoKeyIAMMemberArgs.builder()
/// .cryptoKeyId(cryptoKey.id())
/// .role("roles/cloudkms.signerVerifier")
/// .member(String.format("serviceAccount:%s", serviceAccount.accountEmail()))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// iam:
/// type: gcp:kms:CryptoKeyIAMMember
/// properties:
/// cryptoKeyId: ${cryptoKey.id}
/// role: roles/cloudkms.signerVerifier
/// member: serviceAccount:${serviceAccount.accountEmail}
/// variables:
/// serviceAccount:
/// fn::invoke:
/// function: gcp:accessapproval:getProjectServiceAccount
/// arguments:
/// projectId: my-project
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetProjectServiceAccountResult> getProjectServiceAccount(
  GetProjectServiceAccountArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:accessapproval/getProjectServiceAccount:getProjectServiceAccount',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetProjectServiceAccountResult.fromMap(result);
}

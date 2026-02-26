import 'package:pulumi/pulumi.dart';
import 'get_default_service_account_args2.dart';
import 'get_default_service_account_result2.dart';

/// Get the email address of a project's unique BigQuery service account.
///
/// Each Google Cloud project has a unique service account used by BigQuery. When using
/// BigQuery with [customer-managed encryption keys](https://cloud.google.com/bigquery/docs/customer-managed-encryption),
/// this account needs to be granted the
/// `cloudkms.cryptoKeyEncrypterDecrypter` IAM role on the customer-managed Cloud KMS key used to protect the data.
///
/// For more information see
/// [the API reference](https://cloud.google.com/bigquery/docs/reference/rest/v2/projects/getServiceAccount).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const bqSa = gcp.bigquery.getDefaultServiceAccount({});
/// const keySaUser = new gcp.kms.CryptoKeyIAMMember("key_sa_user", {
/// cryptoKeyId: key.id,
/// role: "roles/cloudkms.cryptoKeyEncrypterDecrypter",
/// member: bqSa.then(bqSa => `serviceAccount:${bqSa.email}`),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// bq_sa = gcp.bigquery.get_default_service_account()
/// key_sa_user = gcp.kms.CryptoKeyIAMMember("key_sa_user",
/// crypto_key_id=key["id"],
/// role="roles/cloudkms.cryptoKeyEncrypterDecrypter",
/// member=f"serviceAccount:{bq_sa.email}")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var bqSa = Gcp.BigQuery.GetDefaultServiceAccount.Invoke();
///
/// var keySaUser = new Gcp.Kms.CryptoKeyIAMMember("key_sa_user", new()
/// {
/// CryptoKeyId = key.Id,
/// Role = "roles/cloudkms.cryptoKeyEncrypterDecrypter",
/// Member = $"serviceAccount:{bqSa.Apply(getDefaultServiceAccountResult => getDefaultServiceAccountResult.Email)}",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// bqSa, err := bigquery.GetDefaultServiceAccount(ctx, &bigquery.GetDefaultServiceAccountArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// _, err = kms.NewCryptoKeyIAMMember(ctx, "key_sa_user", &kms.CryptoKeyIAMMemberArgs{
/// CryptoKeyId: pulumi.Any(key.Id),
/// Role:        pulumi.String("roles/cloudkms.cryptoKeyEncrypterDecrypter"),
/// Member:      pulumi.Sprintf("serviceAccount:%v", bqSa.Email),
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
/// import com.pulumi.gcp.bigquery.BigqueryFunctions;
/// import com.pulumi.gcp.bigquery.inputs.GetDefaultServiceAccountArgs;
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
/// final var bqSa = BigqueryFunctions.getDefaultServiceAccount(GetDefaultServiceAccountArgs.builder()
/// .build());
///
/// var keySaUser = new CryptoKeyIAMMember("keySaUser", CryptoKeyIAMMemberArgs.builder()
/// .cryptoKeyId(key.id())
/// .role("roles/cloudkms.cryptoKeyEncrypterDecrypter")
/// .member(String.format("serviceAccount:%s", bqSa.email()))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// keySaUser:
/// type: gcp:kms:CryptoKeyIAMMember
/// name: key_sa_user
/// properties:
/// cryptoKeyId: ${key.id}
/// role: roles/cloudkms.cryptoKeyEncrypterDecrypter
/// member: serviceAccount:${bqSa.email}
/// variables:
/// bqSa:
/// fn::invoke:
/// function: gcp:bigquery:getDefaultServiceAccount
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetDefaultServiceAccountResult2> getDefaultServiceAccount2(
  GetDefaultServiceAccountArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:bigquery/getDefaultServiceAccount:getDefaultServiceAccount',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDefaultServiceAccountResult2.fromMap(result);
}

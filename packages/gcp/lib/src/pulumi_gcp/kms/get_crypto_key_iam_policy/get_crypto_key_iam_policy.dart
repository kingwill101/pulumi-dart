import 'package:pulumi/pulumi.dart';
import 'get_crypto_key_iam_policy_args.dart';
import 'get_crypto_key_iam_policy_result.dart';

/// Retrieves the current IAM policy data for a Google Cloud KMS crypto key.
///
/// ## example
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const foo = gcp.kms.getCryptoKeyIamPolicy({
/// cryptoKeyId: cryptoKey.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// foo = gcp.kms.get_crypto_key_iam_policy(crypto_key_id=crypto_key["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var foo = Gcp.Kms.GetCryptoKeyIamPolicy.Invoke(new()
/// {
/// CryptoKeyId = cryptoKey.Id,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := kms.GetCryptoKeyIamPolicy(ctx, &kms.GetCryptoKeyIamPolicyArgs{
/// CryptoKeyId: cryptoKey.Id,
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
/// import com.pulumi.gcp.kms.KmsFunctions;
/// import com.pulumi.gcp.kms.inputs.GetCryptoKeyIamPolicyArgs;
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
/// final var foo = KmsFunctions.getCryptoKeyIamPolicy(GetCryptoKeyIamPolicyArgs.builder()
/// .cryptoKeyId(cryptoKey.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// foo:
/// fn::invoke:
/// function: gcp:kms:getCryptoKeyIamPolicy
/// arguments:
/// cryptoKeyId: ${cryptoKey.id}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetCryptoKeyIamPolicyResult> getCryptoKeyIamPolicy(
  GetCryptoKeyIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:kms/getCryptoKeyIamPolicy:getCryptoKeyIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetCryptoKeyIamPolicyResult.fromMap(result);
}

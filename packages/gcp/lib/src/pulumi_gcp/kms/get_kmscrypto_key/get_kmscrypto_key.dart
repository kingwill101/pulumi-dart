import 'package:pulumi/pulumi.dart';
import 'get_kmscrypto_key_args.dart';
import 'get_kmscrypto_key_result.dart';

/// Provides access to a Google Cloud Platform KMS CryptoKey. For more information see
/// [the official documentation](https://cloud.google.com/kms/docs/object-hierarchy#key)
/// and
/// [API](https://cloud.google.com/kms/docs/reference/rest/v1/projects.locations.keyRings.cryptoKeys).
///
/// A CryptoKey is an interface to key material which can be used to encrypt and decrypt data. A CryptoKey belongs to a
/// Google Cloud KMS KeyRing.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myKeyRing = gcp.kms.getKMSKeyRing({
/// name: "my-key-ring",
/// location: "us-central1",
/// });
/// const myCryptoKey = myKeyRing.then(myKeyRing => gcp.kms.getKMSCryptoKey({
/// name: "my-crypto-key",
/// keyRing: myKeyRing.id,
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_key_ring = gcp.kms.get_kms_key_ring(name="my-key-ring",
/// location="us-central1")
/// my_crypto_key = gcp.kms.get_kms_crypto_key(name="my-crypto-key",
/// key_ring=my_key_ring.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var myKeyRing = Gcp.Kms.GetKMSKeyRing.Invoke(new()
/// {
/// Name = "my-key-ring",
/// Location = "us-central1",
/// });
///
/// var myCryptoKey = Gcp.Kms.GetKMSCryptoKey.Invoke(new()
/// {
/// Name = "my-crypto-key",
/// KeyRing = myKeyRing.Apply(getKMSKeyRingResult => getKMSKeyRingResult.Id),
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
/// myKeyRing, err := kms.GetKMSKeyRing(ctx, &kms.GetKMSKeyRingArgs{
/// Name:     "my-key-ring",
/// Location: "us-central1",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = kms.GetKMSCryptoKey(ctx, &kms.GetKMSCryptoKeyArgs{
/// Name:    "my-crypto-key",
/// KeyRing: myKeyRing.Id,
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
/// import com.pulumi.gcp.kms.inputs.GetKMSKeyRingArgs;
/// import com.pulumi.gcp.kms.inputs.GetKMSCryptoKeyArgs;
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
/// final var myKeyRing = KmsFunctions.getKMSKeyRing(GetKMSKeyRingArgs.builder()
/// .name("my-key-ring")
/// .location("us-central1")
/// .build());
///
/// final var myCryptoKey = KmsFunctions.getKMSCryptoKey(GetKMSCryptoKeyArgs.builder()
/// .name("my-crypto-key")
/// .keyRing(myKeyRing.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// myKeyRing:
/// fn::invoke:
/// function: gcp:kms:getKMSKeyRing
/// arguments:
/// name: my-key-ring
/// location: us-central1
/// myCryptoKey:
/// fn::invoke:
/// function: gcp:kms:getKMSCryptoKey
/// arguments:
/// name: my-crypto-key
/// keyRing: ${myKeyRing.id}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetKMSCryptoKeyResult> getKMSCryptoKey(
  GetKMSCryptoKeyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:kms/getKMSCryptoKey:getKMSCryptoKey',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetKMSCryptoKeyResult.fromMap(result);
}

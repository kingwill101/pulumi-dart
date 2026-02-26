import 'package:pulumi/pulumi.dart';
import 'get_kmssecret_ciphertext_args.dart';
import 'get_kmssecret_ciphertext_result.dart';

/// !> **Warning:** This data source is deprecated. Use the <span pulumi-lang-nodejs="`gcp.kms.SecretCiphertext`" pulumi-lang-dotnet="`gcp.kms.SecretCiphertext`" pulumi-lang-go="`kms.SecretCiphertext`" pulumi-lang-python="`kms.SecretCiphertext`" pulumi-lang-yaml="`gcp.kms.SecretCiphertext`" pulumi-lang-java="`gcp.kms.SecretCiphertext`">`gcp.kms.SecretCiphertext`</span> **resource** instead.
///
/// This data source allows you to encrypt data with Google Cloud KMS and use the
/// ciphertext within your resource definitions.
///
/// For more information see
/// [the official documentation](https://cloud.google.com/kms/docs/encrypt-decrypt).
///
/// > **NOTE:** Using this data source will allow you to conceal secret data within your
/// resource definitions, but it does not take care of protecting that data in the
/// logging output, plan output, or state output.  Please take care to secure your secret
/// data outside of resource definitions.
///
/// ## Example Usage
///
/// First, create a KMS KeyRing and CryptoKey using the resource definitions:
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myKeyRing = new gcp.kms.KeyRing("my_key_ring", {
/// project: "my-project",
/// name: "my-key-ring",
/// location: "us-central1",
/// });
/// const myCryptoKey = new gcp.kms.CryptoKey("my_crypto_key", {
/// name: "my-crypto-key",
/// keyRing: myKeyRing.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_key_ring = gcp.kms.KeyRing("my_key_ring",
/// project="my-project",
/// name="my-key-ring",
/// location="us-central1")
/// my_crypto_key = gcp.kms.CryptoKey("my_crypto_key",
/// name="my-crypto-key",
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
/// var myKeyRing = new Gcp.Kms.KeyRing("my_key_ring", new()
/// {
/// Project = "my-project",
/// Name = "my-key-ring",
/// Location = "us-central1",
/// });
///
/// var myCryptoKey = new Gcp.Kms.CryptoKey("my_crypto_key", new()
/// {
/// Name = "my-crypto-key",
/// KeyRing = myKeyRing.Id,
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
/// myKeyRing, err := kms.NewKeyRing(ctx, "my_key_ring", &kms.KeyRingArgs{
/// Project:  pulumi.String("my-project"),
/// Name:     pulumi.String("my-key-ring"),
/// Location: pulumi.String("us-central1"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = kms.NewCryptoKey(ctx, "my_crypto_key", &kms.CryptoKeyArgs{
/// Name:    pulumi.String("my-crypto-key"),
/// KeyRing: myKeyRing.ID(),
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
/// import com.pulumi.gcp.kms.KeyRing;
/// import com.pulumi.gcp.kms.KeyRingArgs;
/// import com.pulumi.gcp.kms.CryptoKey;
/// import com.pulumi.gcp.kms.CryptoKeyArgs;
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
/// var myKeyRing = new KeyRing("myKeyRing", KeyRingArgs.builder()
/// .project("my-project")
/// .name("my-key-ring")
/// .location("us-central1")
/// .build());
///
/// var myCryptoKey = new CryptoKey("myCryptoKey", CryptoKeyArgs.builder()
/// .name("my-crypto-key")
/// .keyRing(myKeyRing.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// myKeyRing:
/// type: gcp:kms:KeyRing
/// name: my_key_ring
/// properties:
/// project: my-project
/// name: my-key-ring
/// location: us-central1
/// myCryptoKey:
/// type: gcp:kms:CryptoKey
/// name: my_crypto_key
/// properties:
/// name: my-crypto-key
/// keyRing: ${myKeyRing.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// Next, encrypt some sensitive information and use the encrypted data in your resource definitions:
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myPassword = gcp.kms.getKMSSecretCiphertext({
/// cryptoKey: myCryptoKey.id,
/// plaintext: "my-secret-password",
/// });
/// const instance = new gcp.compute.Instance("instance", {
/// networkInterfaces: [{
/// accessConfigs: [{}],
/// network: "default",
/// }],
/// name: "test",
/// machineType: "e2-medium",
/// zone: "us-central1-a",
/// bootDisk: {
/// initializeParams: {
/// image: "debian-cloud/debian-11",
/// },
/// },
/// metadata: {
/// password: myPassword.then(myPassword => myPassword.ciphertext),
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_password = gcp.kms.get_kms_secret_ciphertext(crypto_key=my_crypto_key["id"],
/// plaintext="my-secret-password")
/// instance = gcp.compute.Instance("instance",
/// network_interfaces=[{
/// "access_configs": [{}],
/// "network": "default",
/// }],
/// name="test",
/// machine_type="e2-medium",
/// zone="us-central1-a",
/// boot_disk={
/// "initialize_params": {
/// "image": "debian-cloud/debian-11",
/// },
/// },
/// metadata={
/// "password": my_password.ciphertext,
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var myPassword = Gcp.Kms.GetKMSSecretCiphertext.Invoke(new()
/// {
/// CryptoKey = myCryptoKey.Id,
/// Plaintext = "my-secret-password",
/// });
///
/// var instance = new Gcp.Compute.Instance("instance", new()
/// {
/// NetworkInterfaces = new[]
/// {
/// new Gcp.Compute.Inputs.InstanceNetworkInterfaceArgs
/// {
/// AccessConfigs = new[]
/// {
/// null,
/// },
/// Network = "default",
/// },
/// },
/// Name = "test",
/// MachineType = "e2-medium",
/// Zone = "us-central1-a",
/// BootDisk = new Gcp.Compute.Inputs.InstanceBootDiskArgs
/// {
/// InitializeParams = new Gcp.Compute.Inputs.InstanceBootDiskInitializeParamsArgs
/// {
/// Image = "debian-cloud/debian-11",
/// },
/// },
/// Metadata =
/// {
/// { "password", myPassword.Apply(getKMSSecretCiphertextResult => getKMSSecretCiphertextResult.Ciphertext) },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// myPassword, err := kms.GetKMSSecretCiphertext(ctx, &kms.GetKMSSecretCiphertextArgs{
/// CryptoKey: myCryptoKey.Id,
/// Plaintext: "my-secret-password",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = compute.NewInstance(ctx, "instance", &compute.InstanceArgs{
/// NetworkInterfaces: compute.InstanceNetworkInterfaceArray{
/// &compute.InstanceNetworkInterfaceArgs{
/// AccessConfigs: compute.InstanceNetworkInterfaceAccessConfigArray{
/// &compute.InstanceNetworkInterfaceAccessConfigArgs{},
/// },
/// Network: pulumi.String("default"),
/// },
/// },
/// Name:        pulumi.String("test"),
/// MachineType: pulumi.String("e2-medium"),
/// Zone:        pulumi.String("us-central1-a"),
/// BootDisk: &compute.InstanceBootDiskArgs{
/// InitializeParams: &compute.InstanceBootDiskInitializeParamsArgs{
/// Image: pulumi.String("debian-cloud/debian-11"),
/// },
/// },
/// Metadata: pulumi.StringMap{
/// "password": pulumi.String(myPassword.Ciphertext),
/// },
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
/// import com.pulumi.gcp.kms.KmsFunctions;
/// import com.pulumi.gcp.kms.inputs.GetKMSSecretCiphertextArgs;
/// import com.pulumi.gcp.compute.Instance;
/// import com.pulumi.gcp.compute.InstanceArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceNetworkInterfaceArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceBootDiskArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceBootDiskInitializeParamsArgs;
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
/// final var myPassword = KmsFunctions.getKMSSecretCiphertext(GetKMSSecretCiphertextArgs.builder()
/// .cryptoKey(myCryptoKey.id())
/// .plaintext("my-secret-password")
/// .build());
///
/// var instance = new Instance("instance", InstanceArgs.builder()
/// .networkInterfaces(InstanceNetworkInterfaceArgs.builder()
/// .accessConfigs(InstanceNetworkInterfaceAccessConfigArgs.builder()
/// .build())
/// .network("default")
/// .build())
/// .name("test")
/// .machineType("e2-medium")
/// .zone("us-central1-a")
/// .bootDisk(InstanceBootDiskArgs.builder()
/// .initializeParams(InstanceBootDiskInitializeParamsArgs.builder()
/// .image("debian-cloud/debian-11")
/// .build())
/// .build())
/// .metadata(Map.of("password", myPassword.ciphertext()))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// instance:
/// type: gcp:compute:Instance
/// properties:
/// networkInterfaces:
/// - accessConfigs:
/// - {}
/// network: default
/// name: test
/// machineType: e2-medium
/// zone: us-central1-a
/// bootDisk:
/// initializeParams:
/// image: debian-cloud/debian-11
/// metadata:
/// password: ${myPassword.ciphertext}
/// variables:
/// myPassword:
/// fn::invoke:
/// function: gcp:kms:getKMSSecretCiphertext
/// arguments:
/// cryptoKey: ${myCryptoKey.id}
/// plaintext: my-secret-password
/// ```
/// <!--End PulumiCodeChooser -->
///
/// The resulting instance can then access the encrypted password from its metadata
/// and decrypt it, e.g. using the [Cloud SDK](https://cloud.google.com/sdk/gcloud/reference/kms/decrypt)):
///
/// ```bash
/// $ curl -H "Metadata-Flavor: Google" http://metadata.google.internal/computeMetadata/v1/instance/attributes/password \
/// > | base64 -d | gcloud kms decrypt \
/// > --project my-project \
/// > --location us-central1 \
/// > --keyring my-key-ring \
/// > --key my-crypto-key \
/// > --plaintext-file - \
/// > --ciphertext-file - \
/// my-secret-password
/// ```
Future<GetKMSSecretCiphertextResult> getKMSSecretCiphertext(
  GetKMSSecretCiphertextArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:kms/getKMSSecretCiphertext:getKMSSecretCiphertext',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetKMSSecretCiphertextResult.fromMap(result);
}

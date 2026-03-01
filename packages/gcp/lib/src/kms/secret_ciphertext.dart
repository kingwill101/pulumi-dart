import 'package:pulumi/pulumi.dart' as pulumi;
import 'secret_ciphertext_args.dart';

/// Encrypts secret data with Google Cloud KMS and provides access to the ciphertext.
///
///
/// > **NOTE:** Using this resource will allow you to conceal secret data within your
/// resource definitions, but it does not take care of protecting that data in the
/// logging output, plan output, or state output.  Please take care to secure your secret
/// data outside of resource definitions.
///
///
/// To get more information about SecretCiphertext, see:
///
/// * [API documentation](https://cloud.google.com/kms/docs/reference/rest/v1/projects.locations.keyRings.cryptoKeys/encrypt)
/// * How-to Guides
/// * [Encrypting and decrypting data with a symmetric key](https://cloud.google.com/kms/docs/encrypt-decrypt)
///
///
///
/// ## Example Usage
///
/// ### Kms Secret Ciphertext Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const keyring = new gcp.kms.KeyRing("keyring", {
///     name: "keyring-example",
///     location: "global",
/// });
/// const cryptokey = new gcp.kms.CryptoKey("cryptokey", {
///     name: "crypto-key-example",
///     keyRing: keyring.id,
///     rotationPeriod: "7776000s",
/// });
/// const myPassword = new gcp.kms.SecretCiphertext("my_password", {
///     cryptoKey: cryptokey.id,
///     plaintext: "my-secret-password",
/// });
/// const instance = new gcp.compute.Instance("instance", {
///     networkInterfaces: [{
///         accessConfigs: [{}],
///         network: "default",
///     }],
///     name: "my-instance",
///     machineType: "e2-medium",
///     zone: "us-central1-a",
///     bootDisk: {
///         initializeParams: {
///             image: "debian-cloud/debian-11",
///         },
///     },
///     metadata: {
///         password: myPassword.ciphertext,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// keyring = gcp.kms.KeyRing("keyring",
///     name="keyring-example",
///     location="global")
/// cryptokey = gcp.kms.CryptoKey("cryptokey",
///     name="crypto-key-example",
///     key_ring=keyring.id,
///     rotation_period="7776000s")
/// my_password = gcp.kms.SecretCiphertext("my_password",
///     crypto_key=cryptokey.id,
///     plaintext="my-secret-password")
/// instance = gcp.compute.Instance("instance",
///     network_interfaces=[{
///         "access_configs": [{}],
///         "network": "default",
///     }],
///     name="my-instance",
///     machine_type="e2-medium",
///     zone="us-central1-a",
///     boot_disk={
///         "initialize_params": {
///             "image": "debian-cloud/debian-11",
///         },
///     },
///     metadata={
///         "password": my_password.ciphertext,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var keyring = new Gcp.Kms.KeyRing("keyring", new()
///     {
///         Name = "keyring-example",
///         Location = "global",
///     });
///
///     var cryptokey = new Gcp.Kms.CryptoKey("cryptokey", new()
///     {
///         Name = "crypto-key-example",
///         KeyRing = keyring.Id,
///         RotationPeriod = "7776000s",
///     });
///
///     var myPassword = new Gcp.Kms.SecretCiphertext("my_password", new()
///     {
///         CryptoKey = cryptokey.Id,
///         Plaintext = "my-secret-password",
///     });
///
///     var instance = new Gcp.Compute.Instance("instance", new()
///     {
///         NetworkInterfaces = new[]
///         {
///             new Gcp.Compute.Inputs.InstanceNetworkInterfaceArgs
///             {
///                 AccessConfigs = new[]
///                 {
///                     null,
///                 },
///                 Network = "default",
///             },
///         },
///         Name = "my-instance",
///         MachineType = "e2-medium",
///         Zone = "us-central1-a",
///         BootDisk = new Gcp.Compute.Inputs.InstanceBootDiskArgs
///         {
///             InitializeParams = new Gcp.Compute.Inputs.InstanceBootDiskInitializeParamsArgs
///             {
///                 Image = "debian-cloud/debian-11",
///             },
///         },
///         Metadata =
///         {
///             { "password", myPassword.Ciphertext },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		keyring, err := kms.NewKeyRing(ctx, "keyring", &kms.KeyRingArgs{
/// 			Name:     pulumi.String("keyring-example"),
/// 			Location: pulumi.String("global"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		cryptokey, err := kms.NewCryptoKey(ctx, "cryptokey", &kms.CryptoKeyArgs{
/// 			Name:           pulumi.String("crypto-key-example"),
/// 			KeyRing:        keyring.ID(),
/// 			RotationPeriod: pulumi.String("7776000s"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		myPassword, err := kms.NewSecretCiphertext(ctx, "my_password", &kms.SecretCiphertextArgs{
/// 			CryptoKey: cryptokey.ID(),
/// 			Plaintext: pulumi.String("my-secret-password"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewInstance(ctx, "instance", &compute.InstanceArgs{
/// 			NetworkInterfaces: compute.InstanceNetworkInterfaceArray{
/// 				&compute.InstanceNetworkInterfaceArgs{
/// 					AccessConfigs: compute.InstanceNetworkInterfaceAccessConfigArray{
/// 						&compute.InstanceNetworkInterfaceAccessConfigArgs{},
/// 					},
/// 					Network: pulumi.String("default"),
/// 				},
/// 			},
/// 			Name:        pulumi.String("my-instance"),
/// 			MachineType: pulumi.String("e2-medium"),
/// 			Zone:        pulumi.String("us-central1-a"),
/// 			BootDisk: &compute.InstanceBootDiskArgs{
/// 				InitializeParams: &compute.InstanceBootDiskInitializeParamsArgs{
/// 					Image: pulumi.String("debian-cloud/debian-11"),
/// 				},
/// 			},
/// 			Metadata: pulumi.StringMap{
/// 				"password": myPassword.Ciphertext,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
/// import com.pulumi.gcp.kms.SecretCiphertext;
/// import com.pulumi.gcp.kms.SecretCiphertextArgs;
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var keyring = new KeyRing("keyring", KeyRingArgs.builder()
///             .name("keyring-example")
///             .location("global")
///             .build());
///
///         var cryptokey = new CryptoKey("cryptokey", CryptoKeyArgs.builder()
///             .name("crypto-key-example")
///             .keyRing(keyring.id())
///             .rotationPeriod("7776000s")
///             .build());
///
///         var myPassword = new SecretCiphertext("myPassword", SecretCiphertextArgs.builder()
///             .cryptoKey(cryptokey.id())
///             .plaintext("my-secret-password")
///             .build());
///
///         var instance = new Instance("instance", InstanceArgs.builder()
///             .networkInterfaces(InstanceNetworkInterfaceArgs.builder()
///                 .accessConfigs(InstanceNetworkInterfaceAccessConfigArgs.builder()
///                     .build())
///                 .network("default")
///                 .build())
///             .name("my-instance")
///             .machineType("e2-medium")
///             .zone("us-central1-a")
///             .bootDisk(InstanceBootDiskArgs.builder()
///                 .initializeParams(InstanceBootDiskInitializeParamsArgs.builder()
///                     .image("debian-cloud/debian-11")
///                     .build())
///                 .build())
///             .metadata(Map.of("password", myPassword.ciphertext()))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   keyring:
///     type: gcp:kms:KeyRing
///     properties:
///       name: keyring-example
///       location: global
///   cryptokey:
///     type: gcp:kms:CryptoKey
///     properties:
///       name: crypto-key-example
///       keyRing: ${keyring.id}
///       rotationPeriod: 7776000s
///   myPassword:
///     type: gcp:kms:SecretCiphertext
///     name: my_password
///     properties:
///       cryptoKey: ${cryptokey.id}
///       plaintext: my-secret-password
///   instance:
///     type: gcp:compute:Instance
///     properties:
///       networkInterfaces:
///         - accessConfigs:
///             - {}
///           network: default
///       name: my-instance
///       machineType: e2-medium
///       zone: us-central1-a
///       bootDisk:
///         initializeParams:
///           image: debian-cloud/debian-11
///       metadata:
///         password: ${myPassword.ciphertext}
/// ```
///
///
/// ## Import
///
/// This resource does not support import.
class SecretCiphertext extends pulumi.CustomResource {
  /// The additional authenticated data used for integrity checks during encryption and decryption.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  late final pulumi.Output<String?> additionalAuthenticatedData;

  /// Contains the result of encrypting the provided plaintext, encoded in base64.
  late final pulumi.Output<String> ciphertext;

  /// The full name of the CryptoKey that will be used to encrypt the provided plaintext.
  /// Format: `'projects/{{project}}/locations/{{location}}/keyRings/{{keyRing}}/cryptoKeys/{{cryptoKey}}'`
  late final pulumi.Output<String> cryptoKey;

  /// The plaintext to be encrypted.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  late final pulumi.Output<String> plaintext;

  /// Creates a new [SecretCiphertext].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SecretCiphertext]. {@macro pulumi_kms_secret_ciphertext_secret_ciphertext_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SecretCiphertext(
    String name, {
    SecretCiphertextArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:kms/secretCiphertext:SecretCiphertext',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.additionalAuthenticatedData = registerOutput<String?>(
      'additionalAuthenticatedData',
    );
    this.ciphertext = registerOutput<String>('ciphertext');
    this.cryptoKey = registerOutput<String>('cryptoKey');
    this.plaintext = registerOutput<String>('plaintext');
  }
}

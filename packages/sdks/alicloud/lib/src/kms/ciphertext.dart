import 'package:pulumi/pulumi.dart' as pulumi;
import 'ciphertext_args.dart';
import 'ciphertext_state.dart';

/// ## Example Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const key = new alicloud.kms.Key("key", {
///     description: "example key",
///     status: "Enabled",
///     pendingWindowInDays: 7,
/// });
/// const encrypted = new alicloud.kms.Ciphertext("encrypted", {
///     keyId: key.id,
///     plaintext: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// key = alicloud.kms.Key("key",
///     description="example key",
///     status="Enabled",
///     pending_window_in_days=7)
/// encrypted = alicloud.kms.Ciphertext("encrypted",
///     key_id=key.id,
///     plaintext="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var key = new AliCloud.Kms.Key("key", new()
///     {
///         Description = "example key",
///         Status = "Enabled",
///         PendingWindowInDays = 7,
///     });
///
///     var encrypted = new AliCloud.Kms.Ciphertext("encrypted", new()
///     {
///         KeyId = key.Id,
///         Plaintext = "example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/kms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		key, err := kms.NewKey(ctx, "key", &kms.KeyArgs{
/// 			Description:         pulumi.String("example key"),
/// 			Status:              pulumi.String("Enabled"),
/// 			PendingWindowInDays: pulumi.Int(7),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = kms.NewCiphertext(ctx, "encrypted", &kms.CiphertextArgs{
/// 			KeyId:     key.ID(),
/// 			Plaintext: pulumi.String("example"),
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
/// import com.pulumi.alicloud.kms.Key;
/// import com.pulumi.alicloud.kms.KeyArgs;
/// import com.pulumi.alicloud.kms.Ciphertext;
/// import com.pulumi.alicloud.kms.CiphertextArgs;
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
///         var key = new Key("key", KeyArgs.builder()
///             .description("example key")
///             .status("Enabled")
///             .pendingWindowInDays(7)
///             .build());
///
///         var encrypted = new Ciphertext("encrypted", CiphertextArgs.builder()
///             .keyId(key.id())
///             .plaintext("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   key:
///     type: alicloud:kms:Key
///     properties:
///       description: example key
///       status: Enabled
///       pendingWindowInDays: 7
///   encrypted:
///     type: alicloud:kms:Ciphertext
///     properties:
///       keyId: ${key.id}
///       plaintext: example
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
class Ciphertext extends pulumi.CustomResource {
  /// The ciphertext of the data key encrypted with the primary CMK version.
  late final pulumi.Output<String> ciphertextBlob;

  /// The Encryption context. If you specify this parameter here, it is also required when you call the Decrypt API operation. For more information, see [Encryption Context](https://www.alibabacloud.com/help/doc-detail/42975.htm).
  late final pulumi.Output<Map<String, String>?> encryptionContext;

  /// The globally unique ID of the CMK.
  late final pulumi.Output<String> keyId;

  /// The plaintext to be encrypted which must be encoded in Base64.
  late final pulumi.Output<String> plaintext;

  /// Creates a new [Ciphertext].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Ciphertext]. {@macro pulumi_kms_ciphertext_ciphertext_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Ciphertext(
    String name, {
    CiphertextArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:kms/ciphertext:Ciphertext',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    ciphertextBlob = registerOutput<String>('ciphertextBlob');
    encryptionContext = registerOutput<Map<String, String>?>(
      'encryptionContext',
    );
    keyId = registerOutput<String>('keyId');
    plaintext = registerOutput<String>('plaintext');
  }

  /// Gets an existing [Ciphertext] resource's state with the given [name] and [id].
  static Ciphertext get(
    String name,
    pulumi.Input<String> id, {
    CiphertextState? state,
  }) {
    return Ciphertext._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Ciphertext._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:kms/ciphertext:Ciphertext',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    ciphertextBlob = registerOutput<String>('ciphertextBlob');
    encryptionContext = registerOutput<Map<String, String>?>(
      'encryptionContext',
    );
    keyId = registerOutput<String>('keyId');
    plaintext = registerOutput<String>('plaintext');
  }
}

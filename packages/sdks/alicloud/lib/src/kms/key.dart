import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_args.dart';
import 'key_state.dart';

/// Provides a KMS Key resource.
///
///
///
/// For information about KMS Key and how to use it, see [What is Key](https://www.alibabacloud.com/help/en/kms/developer-reference/api-createkey).
///
/// &gt; **NOTE:** Available since v1.85.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = new alicloud.kms.Key("default", {
///     description: "Hello KMS",
///     status: "Enabled",
///     pendingWindowInDays: 7,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.kms.Key("default",
///     description="Hello KMS",
///     status="Enabled",
///     pending_window_in_days=7)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new AliCloud.Kms.Key("default", new()
///     {
///         Description = "Hello KMS",
///         Status = "Enabled",
///         PendingWindowInDays = 7,
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
/// 		_, err := kms.NewKey(ctx, "default", &kms.KeyArgs{
/// 			Description:         pulumi.String("Hello KMS"),
/// 			Status:              pulumi.String("Enabled"),
/// 			PendingWindowInDays: pulumi.Int(7),
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
///         var default_ = new Key("default", KeyArgs.builder()
///             .description("Hello KMS")
///             .status("Enabled")
///             .pendingWindowInDays(7)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: alicloud:kms:Key
///     properties:
///       description: Hello KMS
///       status: Enabled
///       pendingWindowInDays: '7'
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// KMS Key can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:kms/key:Key example <id>
/// ```
class Key extends pulumi.CustomResource {
  /// The ARN of the key.
  late final pulumi.Output<String> arn;
  /// Specifies whether to enable automatic key rotation. Default value: `Disabled`. Valid values: `Enabled`, `Disabled`.
  late final pulumi.Output<String> automaticRotation;
  /// The time when the CMK was created.
  late final pulumi.Output<String> creationDate;
  /// The creator of the CMK.
  late final pulumi.Output<String> creator;
  /// The time at which the CMK is scheduled for deletion.
  late final pulumi.Output<String> deleteDate;
  /// Specifies whether to enable deletion protection. Default value: `Disabled`. Valid values: `Enabled`, `Disabled`.
  late final pulumi.Output<String> deletionProtection;
  /// The description of deletion protection. **NOTE:** `deletion_protection_description` takes effect only if `deletion_protection` is set to `Enabled`.
  late final pulumi.Output<String?> deletionProtectionDescription;
  /// Field `deletion_window_in_days` has been deprecated from provider version 1.85.0. New field `pending_window_in_days` instead.
  late final pulumi.Output<int?> deletionWindowInDays;
  /// The description of the key.
  late final pulumi.Output<String?> description;
  /// The ID of the KMS instance.
  late final pulumi.Output<String> dkmsInstanceId;
  /// Field `is_enabled` has been deprecated from provider version 1.85.0. New field `status` instead.
  ///
  /// &gt; **NOTE:** If you set the origin parameter to EXTERNAL or the key_spec parameter to an asymmetric CMK type, automatic key rotation is unavailable.
  ///
  /// &gt; **NOTE:** The default type of the CMK is `Aliyun_AES_256`. Only Dedicated KMS supports `Aliyun_AES_128` and `Aliyun_AES_192`.
  ///
  /// &gt; **NOTE:** When the pre-deletion days elapses, the key is permanently deleted and cannot be recovered.
  late final pulumi.Output<bool> isEnabled;
  /// The specification of the key. Default value: `Aliyun_AES_256`. Valid values: `Aliyun_AES_256`, `Aliyun_AES_128`, `Aliyun_AES_192`, `Aliyun_SM4`, `RSA_2048`, `RSA_3072`, `EC_P256`, `EC_P256K`, `EC_SM2`.
  late final pulumi.Output<String> keySpec;
  /// Field `key_state` has been deprecated from provider version 1.123.1. New field `status` instead.
  late final pulumi.Output<String> keyState;
  /// The usage of the key. Default value: `ENCRYPT/DECRYPT`. Valid values:
  /// - `ENCRYPT/DECRYPT`: Encrypts or decrypts data.
  /// - `SIGN/VERIFY`: Generates or verifies a digital signature.
  late final pulumi.Output<String> keyUsage;
  /// The time when the last rotation was performed.
  late final pulumi.Output<String> lastRotationDate;
  /// The time when the key material expires.
  late final pulumi.Output<String> materialExpireTime;
  /// The time when the next rotation will be performed.
  late final pulumi.Output<String> nextRotationDate;
  /// The key material origin. Default value: `Aliyun_KMS`. Valid values: `Aliyun_KMS`, `EXTERNAL`.
  late final pulumi.Output<String> origin;
  /// The number of days before the CMK is deleted. During this period, the CMK is in the PendingDeletion state. After this period ends, you cannot cancel the deletion. Unit: days. Valid values: `7` to `366`. **NOTE:** From version 1.184.0, `pending_window_in_days` can be set to `366`.
  late final pulumi.Output<int?> pendingWindowInDays;
  /// The content of the key policy. The value is in the JSON format. The value can be up to 32,768 bytes in length. For more information, see [How to use it](https://www.alibabacloud.com/help/en/kms/developer-reference/api-setkeypolicy).
  late final pulumi.Output<String> policy;
  /// The ID of the current primary key version of the symmetric CMK.
  late final pulumi.Output<String> primaryKeyVersion;
  /// The protection level of the key. Default value: `SOFTWARE`. Valid values: `SOFTWARE`, `HSM`.
  late final pulumi.Output<String?> protectionLevel;
  /// The period of automatic key rotation. The following units are supported: d (day), h (hour), m (minute), and s (second). For example, you can use either 7d or 604800s to specify a seven-day interval. **NOTE**: If `automatic_rotation` is set to `Enabled`, `rotation_interval` is required.
  late final pulumi.Output<String?> rotationInterval;
  /// The status of key. Default value: `Enabled`. Valid values: `Enabled`, `Disabled`, `PendingDeletion`.
  late final pulumi.Output<String> status;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [Key].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Key]. {@macro pulumi_kms_key_key_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Key(
    String name, {
    KeyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:kms/key:Key',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    automaticRotation = registerOutput<String>('automaticRotation');
    creationDate = registerOutput<String>('creationDate');
    creator = registerOutput<String>('creator');
    deleteDate = registerOutput<String>('deleteDate');
    deletionProtection = registerOutput<String>('deletionProtection');
    deletionProtectionDescription = registerOutput<String?>('deletionProtectionDescription');
    deletionWindowInDays = registerOutput<int?>('deletionWindowInDays');
    description = registerOutput<String?>('description');
    dkmsInstanceId = registerOutput<String>('dkmsInstanceId');
    isEnabled = registerOutput<bool>('isEnabled');
    keySpec = registerOutput<String>('keySpec');
    keyState = registerOutput<String>('keyState');
    keyUsage = registerOutput<String>('keyUsage');
    lastRotationDate = registerOutput<String>('lastRotationDate');
    materialExpireTime = registerOutput<String>('materialExpireTime');
    nextRotationDate = registerOutput<String>('nextRotationDate');
    origin = registerOutput<String>('origin');
    pendingWindowInDays = registerOutput<int?>('pendingWindowInDays');
    policy = registerOutput<String>('policy');
    primaryKeyVersion = registerOutput<String>('primaryKeyVersion');
    protectionLevel = registerOutput<String?>('protectionLevel');
    rotationInterval = registerOutput<String?>('rotationInterval');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [Key] resource's state with the given [name] and [id].
  static Key get(
    String name,
    pulumi.Input<String> id, {
    KeyState? state,
  }) {
    return Key._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Key._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:kms/key:Key',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    automaticRotation = registerOutput<String>('automaticRotation');
    creationDate = registerOutput<String>('creationDate');
    creator = registerOutput<String>('creator');
    deleteDate = registerOutput<String>('deleteDate');
    deletionProtection = registerOutput<String>('deletionProtection');
    deletionProtectionDescription = registerOutput<String?>('deletionProtectionDescription');
    deletionWindowInDays = registerOutput<int?>('deletionWindowInDays');
    description = registerOutput<String?>('description');
    dkmsInstanceId = registerOutput<String>('dkmsInstanceId');
    isEnabled = registerOutput<bool>('isEnabled');
    keySpec = registerOutput<String>('keySpec');
    keyState = registerOutput<String>('keyState');
    keyUsage = registerOutput<String>('keyUsage');
    lastRotationDate = registerOutput<String>('lastRotationDate');
    materialExpireTime = registerOutput<String>('materialExpireTime');
    nextRotationDate = registerOutput<String>('nextRotationDate');
    origin = registerOutput<String>('origin');
    pendingWindowInDays = registerOutput<int?>('pendingWindowInDays');
    policy = registerOutput<String>('policy');
    primaryKeyVersion = registerOutput<String>('primaryKeyVersion');
    protectionLevel = registerOutput<String?>('protectionLevel');
    rotationInterval = registerOutput<String?>('rotationInterval');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}

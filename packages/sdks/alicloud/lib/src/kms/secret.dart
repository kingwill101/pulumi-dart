import 'package:pulumi/pulumi.dart' as pulumi;
import 'secret_args.dart';
import 'secret_state.dart';

/// Provides a KMS Secret resource.
///
/// For information about KMS Secret and how to use it, see [What is Secret](https://www.alibabacloud.com/help/en/kms/developer-reference/api-createsecret).
///
/// &gt; **NOTE:** Available since v1.76.0.
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
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const _default = new alicloud.kms.Secret("default", {
///     secretName: name,
///     secretData: "Secret data",
///     versionId: "v1",
///     forceDeleteWithoutRecovery: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.kms.Secret("default",
///     secret_name=name,
///     secret_data="Secret data",
///     version_id="v1",
///     force_delete_without_recovery=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = new AliCloud.Kms.Secret("default", new()
///     {
///         SecretName = name,
///         SecretData = "Secret data",
///         VersionId = "v1",
///         ForceDeleteWithoutRecovery = true,
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_, err := kms.NewSecret(ctx, "default", &kms.SecretArgs{
/// 			SecretName:                 pulumi.String(name),
/// 			SecretData:                 pulumi.String("Secret data"),
/// 			VersionId:                  pulumi.String("v1"),
/// 			ForceDeleteWithoutRecovery: pulumi.Bool(true),
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
/// import com.pulumi.alicloud.kms.Secret;
/// import com.pulumi.alicloud.kms.SecretArgs;
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
///         final var config = ctx.config();
///         final var name = config.get("name").orElse("terraform-example");
///         var default_ = new Secret("default", SecretArgs.builder()
///             .secretName(name)
///             .secretData("Secret data")
///             .versionId("v1")
///             .forceDeleteWithoutRecovery(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
/// resources:
///   default:
///     type: alicloud:kms:Secret
///     properties:
///       secretName: ${name}
///       secretData: Secret data
///       versionId: v1
///       forceDeleteWithoutRecovery: true
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// KMS Secret can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:kms/secret:Secret example <id>
/// ```
class Secret extends pulumi.CustomResource {
  /// The ARN of the secret.
  late final pulumi.Output<String> arn;

  /// (Available since v1.224.0) The time when the secret is created.
  late final pulumi.Output<String> createTime;

  /// The description of the secret.
  late final pulumi.Output<String?> description;

  /// The ID of the KMS instance.
  late final pulumi.Output<String?> dkmsInstanceId;

  /// Specifies whether to enable automatic rotation. Default value: `false`. Valid values: `true`, `false`.
  late final pulumi.Output<bool?> enableAutomaticRotation;

  /// The ID of the KMS key.
  late final pulumi.Output<String?> encryptionKeyId;

  /// The extended configuration of the secret. For more information, see [How to use it](https://www.alibabacloud.com/help/en/key-management-service/latest/kms-createsecret).
  late final pulumi.Output<String?> extendedConfig;

  /// Specifies whether to immediately delete a secret. Default value: `false`. Valid values: `true`, `false`.
  late final pulumi.Output<bool?> forceDeleteWithoutRecovery;

  /// The time when the secret is scheduled to be deleted.
  late final pulumi.Output<String> plannedDeleteTime;

  /// The content of the secret policy. The value is in the JSON format. The value can be up to 32,768 bytes in length. For more information, see [How to use it](https://www.alibabacloud.com/help/en/kms/developer-reference/api-setsecretpolicy).
  late final pulumi.Output<String> policy;

  /// Specifies the recovery period of the secret if you do not forcibly delete it. Unit: Days. Default value: `30`. Valid values: `7` to `30`. **NOTE:**  If `force_delete_without_recovery` is set to `true`, `recovery_window_in_days` will be ignored.
  late final pulumi.Output<int?> recoveryWindowInDays;

  /// The interval for automatic rotation. For more information, see [How to use it](https://www.alibabacloud.com/help/en/key-management-service/latest/kms-createsecret).
  late final pulumi.Output<String?> rotationInterval;

  /// The data of the secret. **NOTE:** From version 1.204.1, `secret_data` updating diff will be ignored when `secret_type` is not `Generic`.
  late final pulumi.Output<String> secretData;

  /// The type of the secret value. Default value: `text`. Valid values: `text`, `binary`.
  late final pulumi.Output<String?> secretDataType;

  /// The name of the secret. For more information, see [How to use it](https://www.alibabacloud.com/help/en/key-management-service/latest/kms-createsecret).
  late final pulumi.Output<String> secretName;

  /// The type of the secret. Valid values:
  /// - `Generic`: Generic secret.
  /// - `Rds`: ApsaraDB RDS secret.
  /// - `Redis`: (Available since v1.253.0) ApsaraDB for Redis secret.
  /// - `RAMCredentials`: RAM secret.
  /// - `ECS`: ECS secret.
  /// - `PolarDB`: (Available since v1.253.0) PolarDB secret.
  late final pulumi.Output<String> secretType;

  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The version number of the initial version.
  late final pulumi.Output<String> versionId;

  /// The stage label that is used to mark the new version.
  late final pulumi.Output<List<String>> versionStages;

  /// Creates a new [Secret].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Secret]. {@macro pulumi_kms_secret_secret_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Secret(String name, {SecretArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'alicloud:kms/secret:Secret',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    arn = registerOutput<String>('arn');
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    dkmsInstanceId = registerOutput<String?>('dkmsInstanceId');
    enableAutomaticRotation = registerOutput<bool?>('enableAutomaticRotation');
    encryptionKeyId = registerOutput<String?>('encryptionKeyId');
    extendedConfig = registerOutput<String?>('extendedConfig');
    forceDeleteWithoutRecovery = registerOutput<bool?>(
      'forceDeleteWithoutRecovery',
    );
    plannedDeleteTime = registerOutput<String>('plannedDeleteTime');
    policy = registerOutput<String>('policy');
    recoveryWindowInDays = registerOutput<int?>('recoveryWindowInDays');
    rotationInterval = registerOutput<String?>('rotationInterval');
    secretData = registerOutput<String>('secretData');
    secretDataType = registerOutput<String?>('secretDataType');
    secretName = registerOutput<String>('secretName');
    secretType = registerOutput<String>('secretType');
    tags = registerOutput<Map<String, String>?>('tags');
    versionId = registerOutput<String>('versionId');
    versionStages = registerOutput<List<String>>('versionStages');
  }

  /// Gets an existing [Secret] resource's state with the given [name] and [id].
  static Secret get(
    String name,
    pulumi.Input<String> id, {
    SecretState? state,
  }) {
    return Secret._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Secret._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:kms/secret:Secret',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    dkmsInstanceId = registerOutput<String?>('dkmsInstanceId');
    enableAutomaticRotation = registerOutput<bool?>('enableAutomaticRotation');
    encryptionKeyId = registerOutput<String?>('encryptionKeyId');
    extendedConfig = registerOutput<String?>('extendedConfig');
    forceDeleteWithoutRecovery = registerOutput<bool?>(
      'forceDeleteWithoutRecovery',
    );
    plannedDeleteTime = registerOutput<String>('plannedDeleteTime');
    policy = registerOutput<String>('policy');
    recoveryWindowInDays = registerOutput<int?>('recoveryWindowInDays');
    rotationInterval = registerOutput<String?>('rotationInterval');
    secretData = registerOutput<String>('secretData');
    secretDataType = registerOutput<String?>('secretDataType');
    secretName = registerOutput<String>('secretName');
    secretType = registerOutput<String>('secretType');
    tags = registerOutput<Map<String, String>?>('tags');
    versionId = registerOutput<String>('versionId');
    versionStages = registerOutput<List<String>>('versionStages');
  }
}

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vault_args.dart';

/// Provides a Hybrid Backup Recovery (HBR) Vault resource.
///
/// Where backup or archived data is stored.
///
/// For information about Hybrid Backup Recovery (HBR) Vault and how to use it, see [What is Vault](https://www.alibabacloud.com/help/en/hybrid-backup-recovery/latest/api-hbr-2017-09-08-createvault).
///
/// > **NOTE:** Available since v1.129.0.
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
/// import * as random from "@pulumi/random";
///
/// const _default = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const example = new alicloud.hbr.Vault("example", {vaultName: `example_value_${_default.result}`});
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// default = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// example = alicloud.hbr.Vault("example", vault_name=f"example_value_{default['result']}")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var example = new AliCloud.Hbr.Vault("example", new()
///     {
///         VaultName = $"example_value_{@default.Result}",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/hbr"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Min: 10000,
/// 			Max: 99999,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hbr.NewVault(ctx, "example", &hbr.VaultArgs{
/// 			VaultName: pulumi.Sprintf("example_value_%v", _default.Result),
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
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.hbr.Vault;
/// import com.pulumi.alicloud.hbr.VaultArgs;
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
///         var default_ = new Integer("default", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         var example = new Vault("example", VaultArgs.builder()
///             .vaultName(String.format("example_value_%s", default_.result()))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: random:Integer
///     properties:
///       min: 10000
///       max: 99999
///   example:
///     type: alicloud:hbr:Vault
///     properties:
///       vaultName: example_value_${default.result}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Hybrid Backup Recovery (HBR) Vault can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:hbr/vault:Vault example <id>
/// ```
class Vault extends pulumi.CustomResource {
  /// (Available since v1.243.0) The time when the backup vault was created.
  late final pulumi.Output<String> createTime;
  /// The description of Vault. Defaults to an empty string.
  late final pulumi.Output<String?> description;
  /// Source Encryption Type，It is valid only when vault_type is `STANDARD` or `OTS_BACKUP`. Default value: `HBR_PRIVATE`. Valid values:
  /// - `HBR_PRIVATE`: HBR is fully hosted, uses the backup service's own encryption method.
  /// - `KMS`: Use Alibaba Cloud Kms to encryption.
  late final pulumi.Output<String> encryptType;
  /// The key id or alias name of Alibaba Cloud Kms. It is required and valid only when encrypt_type is `KMS`.
  late final pulumi.Output<String?> kmsKeyId;
  /// (Available since v1.243.0) The ID of the region in which the backup vault resides.
  late final pulumi.Output<String> regionId;
  /// The ID of the resource group.
  late final pulumi.Output<String> resourceGroupId;
  /// The status of the Vault.
  late final pulumi.Output<String> status;
  /// The tag of the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The name of Vault.
  late final pulumi.Output<String> vaultName;
  /// The storage class of Vault. Valid values: `STANDARD`.
  late final pulumi.Output<String> vaultStorageClass;
  /// The type of Vault. Valid values:
  /// - `STANDARD`: Standard backup vault.
  /// - `OTS_BACKUP`: Backup vault for Tablestore. **NOTE:** We recommend that you use `STANDARD`. The cloud backup product will upgrade the backup vault, and the `vault_type` will be changed from `OTS_BACKUP` to `STANDARD`.
  late final pulumi.Output<String> vaultType;
  /// Indicates whether the immutable backup feature is enabled. Valid values: `true`, `false`.
  late final pulumi.Output<bool?> wormEnabled;

  /// Creates a new [Vault].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Vault]. {@macro pulumi_hbr_vault_vault_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Vault(
    String name, {
    VaultArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:hbr/vault:Vault',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.encryptType = registerOutput<String>('encryptType');
    this.kmsKeyId = registerOutput<String?>('kmsKeyId');
    this.regionId = registerOutput<String>('regionId');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.vaultName = registerOutput<String>('vaultName');
    this.vaultStorageClass = registerOutput<String>('vaultStorageClass');
    this.vaultType = registerOutput<String>('vaultType');
    this.wormEnabled = registerOutput<bool?>('wormEnabled');
  }
}

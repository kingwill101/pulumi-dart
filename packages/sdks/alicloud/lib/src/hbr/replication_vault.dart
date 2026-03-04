import 'package:pulumi/pulumi.dart' as pulumi;
import 'replication_vault_args.dart';
import 'replication_vault_state.dart';

/// Provides a Hybrid Backup Recovery (HBR) Replication Vault resource.
///
/// The replication vault used by the cross-region backup function of Cloud Backup.
///
/// For information about Hybrid Backup Recovery (HBR) Replication Vault and how to use it, see [What is Replication Vault](https://www.alibabacloud.com/help/en/doc-detail/345603.html).
///
/// &gt; **NOTE:** Available since v1.252.0.
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
/// const config = new pulumi.Config();
/// const sourceRegion = config.get("sourceRegion") || "cn-hangzhou";
/// const _default = alicloud.hbr.getReplicationVaultRegions({});
/// const defaultInteger = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const defaultVault = new alicloud.hbr.Vault("default", {vaultName: `terraform-example-${defaultInteger.result}`});
/// const defaultReplicationVault = new alicloud.hbr.ReplicationVault("default", {
///     replicationSourceRegionId: sourceRegion,
///     replicationSourceVaultId: defaultVault.id,
///     vaultName: "terraform-example",
///     vaultStorageClass: "STANDARD",
///     description: "terraform-example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// config = pulumi.Config()
/// source_region = config.get("sourceRegion")
/// if source_region is None:
///     source_region = "cn-hangzhou"
/// default = alicloud.hbr.get_replication_vault_regions()
/// default_integer = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// default_vault = alicloud.hbr.Vault("default", vault_name=f"terraform-example-{default_integer['result']}")
/// default_replication_vault = alicloud.hbr.ReplicationVault("default",
///     replication_source_region_id=source_region,
///     replication_source_vault_id=default_vault.id,
///     vault_name="terraform-example",
///     vault_storage_class="STANDARD",
///     description="terraform-example")
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
///     var config = new Config();
///     var sourceRegion = config.Get("sourceRegion") ?? "cn-hangzhou";
///     var @default = AliCloud.Hbr.GetReplicationVaultRegions.Invoke();
///
///     var defaultInteger = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var defaultVault = new AliCloud.Hbr.Vault("default", new()
///     {
///         VaultName = $"terraform-example-{defaultInteger.Result}",
///     });
///
///     var defaultReplicationVault = new AliCloud.Hbr.ReplicationVault("default", new()
///     {
///         ReplicationSourceRegionId = sourceRegion,
///         ReplicationSourceVaultId = defaultVault.Id,
///         VaultName = "terraform-example",
///         VaultStorageClass = "STANDARD",
///         Description = "terraform-example",
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		sourceRegion := "cn-hangzhou"
/// 		if param := cfg.Get("sourceRegion"); param != "" {
/// 			sourceRegion = param
/// 		}
/// 		_, err := hbr.GetReplicationVaultRegions(ctx, &hbr.GetReplicationVaultRegionsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultInteger, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Min: 10000,
/// 			Max: 99999,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultVault, err := hbr.NewVault(ctx, "default", &hbr.VaultArgs{
/// 			VaultName: pulumi.Sprintf("terraform-example-%v", defaultInteger.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hbr.NewReplicationVault(ctx, "default", &hbr.ReplicationVaultArgs{
/// 			ReplicationSourceRegionId: pulumi.String(sourceRegion),
/// 			ReplicationSourceVaultId:  defaultVault.ID(),
/// 			VaultName:                 pulumi.String("terraform-example"),
/// 			VaultStorageClass:         pulumi.String("STANDARD"),
/// 			Description:               pulumi.String("terraform-example"),
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
/// import com.pulumi.alicloud.hbr.HbrFunctions;
/// import com.pulumi.alicloud.hbr.inputs.GetReplicationVaultRegionsArgs;
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.hbr.Vault;
/// import com.pulumi.alicloud.hbr.VaultArgs;
/// import com.pulumi.alicloud.hbr.ReplicationVault;
/// import com.pulumi.alicloud.hbr.ReplicationVaultArgs;
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
///         final var sourceRegion = config.get("sourceRegion").orElse("cn-hangzhou");
///         final var default = HbrFunctions.getReplicationVaultRegions(GetReplicationVaultRegionsArgs.builder()
///             .build());
///
///         var defaultInteger = new Integer("defaultInteger", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         var defaultVault = new Vault("defaultVault", VaultArgs.builder()
///             .vaultName(String.format("terraform-example-%s", defaultInteger.result()))
///             .build());
///
///         var defaultReplicationVault = new ReplicationVault("defaultReplicationVault", ReplicationVaultArgs.builder()
///             .replicationSourceRegionId(sourceRegion)
///             .replicationSourceVaultId(defaultVault.id())
///             .vaultName("terraform-example")
///             .vaultStorageClass("STANDARD")
///             .description("terraform-example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   sourceRegion:
///     type: string
///     default: cn-hangzhou
/// resources:
///   defaultInteger:
///     type: random:Integer
///     name: default
///     properties:
///       min: 10000
///       max: 99999
///   defaultVault:
///     type: alicloud:hbr:Vault
///     name: default
///     properties:
///       vaultName: terraform-example-${defaultInteger.result}
///   defaultReplicationVault:
///     type: alicloud:hbr:ReplicationVault
///     name: default
///     properties:
///       replicationSourceRegionId: ${sourceRegion}
///       replicationSourceVaultId: ${defaultVault.id}
///       vaultName: terraform-example
///       vaultStorageClass: STANDARD
///       description: terraform-example
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:hbr:getReplicationVaultRegions
///       arguments: {}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Hybrid Backup Recovery (HBR) Replication Vault can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:hbr/replicationVault:ReplicationVault example <id>
/// ```
class ReplicationVault extends pulumi.CustomResource {
  /// The description of the backup vault.
  late final pulumi.Output<String?> description;

  /// The encryption type of the backup vault.
  late final pulumi.Output<String> encryptType;

  /// Alibaba Cloud KMS custom Key or Alias. This parameter is required only when EncryptType = KMS.
  late final pulumi.Output<String?> kmsKeyId;

  /// RegionId
  late final pulumi.Output<String> regionId;

  /// The region ID of the source backup vault.
  late final pulumi.Output<String> replicationSourceRegionId;

  /// The vault ID of the source backup vault.
  late final pulumi.Output<String> replicationSourceVaultId;

  /// The status of the mirror backup vault.
  late final pulumi.Output<String> status;

  /// The name of the backup vault.
  late final pulumi.Output<String> vaultName;

  /// Backup Vault Storage Class
  late final pulumi.Output<String> vaultStorageClass;

  /// Creates a new [ReplicationVault].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ReplicationVault]. {@macro pulumi_hbr_replication_vault_replication_vault_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ReplicationVault(
    String name, {
    ReplicationVaultArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:hbr/replicationVault:ReplicationVault',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    description = registerOutput<String?>('description');
    encryptType = registerOutput<String>('encryptType');
    kmsKeyId = registerOutput<String?>('kmsKeyId');
    regionId = registerOutput<String>('regionId');
    replicationSourceRegionId = registerOutput<String>(
      'replicationSourceRegionId',
    );
    replicationSourceVaultId = registerOutput<String>(
      'replicationSourceVaultId',
    );
    status = registerOutput<String>('status');
    vaultName = registerOutput<String>('vaultName');
    vaultStorageClass = registerOutput<String>('vaultStorageClass');
  }

  /// Gets an existing [ReplicationVault] resource's state with the given [name] and [id].
  static ReplicationVault get(
    String name,
    pulumi.Input<String> id, {
    ReplicationVaultState? state,
  }) {
    return ReplicationVault._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ReplicationVault._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:hbr/replicationVault:ReplicationVault',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    description = registerOutput<String?>('description');
    encryptType = registerOutput<String>('encryptType');
    kmsKeyId = registerOutput<String?>('kmsKeyId');
    regionId = registerOutput<String>('regionId');
    replicationSourceRegionId = registerOutput<String>(
      'replicationSourceRegionId',
    );
    replicationSourceVaultId = registerOutput<String>(
      'replicationSourceVaultId',
    );
    status = registerOutput<String>('status');
    vaultName = registerOutput<String>('vaultName');
    vaultStorageClass = registerOutput<String>('vaultStorageClass');
  }
}

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hana_instance_args.dart';
import 'hana_instance_state.dart';

/// Provides a Hybrid Backup Recovery (HBR) Hana Instance resource.
///
/// For information about Hybrid Backup Recovery (HBR) Hana Instance and how to use it, see [What is Hana Instance](https://www.alibabacloud.com/help/en/hybrid-backup-recovery/latest/api-hbr-2017-09-08-createhanainstance).
///
/// > **NOTE:** Available since v1.178.0.
///
/// > **NOTE:** The `sid` attribute is required when destroying resources.
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
/// const example = alicloud.resourcemanager.getResourceGroups({
///     status: "OK",
/// });
/// const _default = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const exampleVault = new alicloud.hbr.Vault("example", {vaultName: `terraform-example-${_default.result}`});
/// const exampleHanaInstance = new alicloud.hbr.HanaInstance("example", {
///     alertSetting: "INHERITED",
///     hanaName: `terraform-example-${_default.result}`,
///     host: "1.1.1.1",
///     instanceNumber: 1,
///     password: "YouPassword123",
///     resourceGroupId: example.then(example => example.groups?.[0]?.id),
///     sid: "HXE",
///     useSsl: false,
///     userName: "admin",
///     validateCertificate: false,
///     vaultId: exampleVault.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// example = alicloud.resourcemanager.get_resource_groups(status="OK")
/// default = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// example_vault = alicloud.hbr.Vault("example", vault_name=f"terraform-example-{default['result']}")
/// example_hana_instance = alicloud.hbr.HanaInstance("example",
///     alert_setting="INHERITED",
///     hana_name=f"terraform-example-{default['result']}",
///     host="1.1.1.1",
///     instance_number=1,
///     password="YouPassword123",
///     resource_group_id=example.groups[0].id,
///     sid="HXE",
///     use_ssl=False,
///     user_name="admin",
///     validate_certificate=False,
///     vault_id=example_vault.id)
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
///     var example = AliCloud.ResourceManager.GetResourceGroups.Invoke(new()
///     {
///         Status = "OK",
///     });
///
///     var @default = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var exampleVault = new AliCloud.Hbr.Vault("example", new()
///     {
///         VaultName = $"terraform-example-{@default.Result}",
///     });
///
///     var exampleHanaInstance = new AliCloud.Hbr.HanaInstance("example", new()
///     {
///         AlertSetting = "INHERITED",
///         HanaName = $"terraform-example-{@default.Result}",
///         Host = "1.1.1.1",
///         InstanceNumber = 1,
///         Password = "YouPassword123",
///         ResourceGroupId = example.Apply(getResourceGroupsResult => getResourceGroupsResult.Groups[0]?.Id),
///         Sid = "HXE",
///         UseSsl = false,
///         UserName = "admin",
///         ValidateCertificate = false,
///         VaultId = exampleVault.Id,
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := resourcemanager.GetResourceGroups(ctx, &resourcemanager.GetResourceGroupsArgs{
/// 			Status: pulumi.StringRef("OK"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Min: 10000,
/// 			Max: 99999,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVault, err := hbr.NewVault(ctx, "example", &hbr.VaultArgs{
/// 			VaultName: pulumi.Sprintf("terraform-example-%v", _default.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hbr.NewHanaInstance(ctx, "example", &hbr.HanaInstanceArgs{
/// 			AlertSetting:        pulumi.String("INHERITED"),
/// 			HanaName:            pulumi.Sprintf("terraform-example-%v", _default.Result),
/// 			Host:                pulumi.String("1.1.1.1"),
/// 			InstanceNumber:      pulumi.Int(1),
/// 			Password:            pulumi.String("YouPassword123"),
/// 			ResourceGroupId:     pulumi.String(example.Groups[0].Id),
/// 			Sid:                 pulumi.String("HXE"),
/// 			UseSsl:              pulumi.Bool(false),
/// 			UserName:            pulumi.String("admin"),
/// 			ValidateCertificate: pulumi.Bool(false),
/// 			VaultId:             exampleVault.ID(),
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
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetResourceGroupsArgs;
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.hbr.Vault;
/// import com.pulumi.alicloud.hbr.VaultArgs;
/// import com.pulumi.alicloud.hbr.HanaInstance;
/// import com.pulumi.alicloud.hbr.HanaInstanceArgs;
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
///         final var example = ResourcemanagerFunctions.getResourceGroups(GetResourceGroupsArgs.builder()
///             .status("OK")
///             .build());
///
///         var default_ = new Integer("default", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         var exampleVault = new Vault("exampleVault", VaultArgs.builder()
///             .vaultName(String.format("terraform-example-%s", default_.result()))
///             .build());
///
///         var exampleHanaInstance = new HanaInstance("exampleHanaInstance", HanaInstanceArgs.builder()
///             .alertSetting("INHERITED")
///             .hanaName(String.format("terraform-example-%s", default_.result()))
///             .host("1.1.1.1")
///             .instanceNumber(1)
///             .password("YouPassword123")
///             .resourceGroupId(example.groups()[0].id())
///             .sid("HXE")
///             .useSsl(false)
///             .userName("admin")
///             .validateCertificate(false)
///             .vaultId(exampleVault.id())
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
///   exampleVault:
///     type: alicloud:hbr:Vault
///     name: example
///     properties:
///       vaultName: terraform-example-${default.result}
///   exampleHanaInstance:
///     type: alicloud:hbr:HanaInstance
///     name: example
///     properties:
///       alertSetting: INHERITED
///       hanaName: terraform-example-${default.result}
///       host: 1.1.1.1
///       instanceNumber: 1
///       password: YouPassword123
///       resourceGroupId: ${example.groups[0].id}
///       sid: HXE
///       useSsl: false
///       userName: admin
///       validateCertificate: false
///       vaultId: ${exampleVault.id}
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:resourcemanager:getResourceGroups
///       arguments:
///         status: OK
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Hybrid Backup Recovery (HBR) Hana Instance can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:hbr/hanaInstance:HanaInstance example <vault_id>:<hana_instance_id>
/// ```
class HanaInstance extends pulumi.CustomResource {
  /// The alert settings. Valid value: `INHERITED`, which indicates that the backup client sends alert notifications in the same way as the backup vault.
  late final pulumi.Output<String> alertSetting;
  /// The IDs of ECS instances that host the SAP HANA instance to be registered. HBR installs backup clients on the specified ECS instances.
  late final pulumi.Output<List<String>?> ecsInstanceIds;
  /// The id of the Hana Instance.
  late final pulumi.Output<String> hanaInstanceId;
  /// The name of the SAP HANA instance.
  late final pulumi.Output<String?> hanaName;
  /// The private or internal IP address of the host where the primary node of the SAP HANA instance resides.
  late final pulumi.Output<String?> host;
  /// The instance number of the SAP HANA system.
  late final pulumi.Output<int?> instanceNumber;
  /// The password that is used to connect with the SAP HANA database.
  late final pulumi.Output<String?> password;
  /// The ID of the resource group.
  late final pulumi.Output<String> resourceGroupId;
  /// The security identifier (SID) of the SAP HANA database.
  late final pulumi.Output<String?> sid;
  /// The status of the resource.
  late final pulumi.Output<String> status;
  /// Specifies whether to connect with the SAP HANA database over Secure Sockets Layer (SSL).
  late final pulumi.Output<bool?> useSsl;
  /// The username of the SYSTEMDB database.
  late final pulumi.Output<String?> userName;
  /// Specifies whether to verify the SSL certificate of the SAP HANA database.
  late final pulumi.Output<bool?> validateCertificate;
  /// The ID of the backup vault.
  late final pulumi.Output<String> vaultId;

  /// Creates a new [HanaInstance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HanaInstance]. {@macro pulumi_hbr_hana_instance_hana_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HanaInstance(
    String name, {
    HanaInstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:hbr/hanaInstance:HanaInstance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.alertSetting = registerOutput<String>('alertSetting');
    this.ecsInstanceIds = registerOutput<List<String>?>('ecsInstanceIds');
    this.hanaInstanceId = registerOutput<String>('hanaInstanceId');
    this.hanaName = registerOutput<String?>('hanaName');
    this.host = registerOutput<String?>('host');
    this.instanceNumber = registerOutput<int?>('instanceNumber');
    this.password = registerOutput<String?>('password');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.sid = registerOutput<String?>('sid');
    this.status = registerOutput<String>('status');
    this.useSsl = registerOutput<bool?>('useSsl');
    this.userName = registerOutput<String?>('userName');
    this.validateCertificate = registerOutput<bool?>('validateCertificate');
    this.vaultId = registerOutput<String>('vaultId');
  }

  /// Gets an existing [HanaInstance] resource's state with the given [name] and [id].
  static HanaInstance get(
    String name,
    pulumi.Input<String> id, {
    HanaInstanceState? state,
  }) {
    return HanaInstance._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  HanaInstance._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:hbr/hanaInstance:HanaInstance',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.alertSetting = registerOutput<String>('alertSetting');
    this.ecsInstanceIds = registerOutput<List<String>?>('ecsInstanceIds');
    this.hanaInstanceId = registerOutput<String>('hanaInstanceId');
    this.hanaName = registerOutput<String?>('hanaName');
    this.host = registerOutput<String?>('host');
    this.instanceNumber = registerOutput<int?>('instanceNumber');
    this.password = registerOutput<String?>('password');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.sid = registerOutput<String?>('sid');
    this.status = registerOutput<String>('status');
    this.useSsl = registerOutput<bool?>('useSsl');
    this.userName = registerOutput<String?>('userName');
    this.validateCertificate = registerOutput<bool?>('validateCertificate');
    this.vaultId = registerOutput<String>('vaultId');
  }
}

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vault_args.dart';
import 'vault_model_properties_response.dart';
import 'vault_model_response_system_data.dart';

/// Vault model.
///
/// Uses Azure REST API version 2021-02-16-preview. In version 2.x of the Azure Native provider, it used API version 2021-02-16-preview.
///
/// Other available API versions: 2024-09-01, 2026-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native datareplication [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Vault_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var vault = new AzureNative.DataReplication.Vault("vault", new()
///     {
///         Location = "eck",
///         Properties = new AzureNative.DataReplication.Inputs.VaultModelPropertiesArgs
///         {
///             VaultType = AzureNative.DataReplication.ReplicationVaultType.DisasterRecovery,
///         },
///         ResourceGroupName = "rgrecoveryservicesdatareplication",
///         Tags =
///         {
///             { "key5359", "ljfilxolxzuxrauopwtyxghrp" },
///         },
///         VaultName = "4",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	datareplication "github.com/pulumi/pulumi-azure-native-sdk/datareplication/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datareplication.NewVault(ctx, "vault", &datareplication.VaultArgs{
/// 			Location: pulumi.String("eck"),
/// 			Properties: &datareplication.VaultModelPropertiesArgs{
/// 				VaultType: pulumi.String(datareplication.ReplicationVaultTypeDisasterRecovery),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgrecoveryservicesdatareplication"),
/// 			Tags: pulumi.StringMap{
/// 				"key5359": pulumi.String("ljfilxolxzuxrauopwtyxghrp"),
/// 			},
/// 			VaultName: pulumi.String("4"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_datareplication_vault" "vault" {
///   location = "eck"
///   properties = {
///     vault_type = "DisasterRecovery"
///   }
///   resource_group_name = "rgrecoveryservicesdatareplication"
///   tags = {
///     "key5359" = "ljfilxolxzuxrauopwtyxghrp"
///   }
///   vault_name = "4"
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.datareplication.Vault;
/// import com.pulumi.azurenative.datareplication.VaultArgs;
/// import com.pulumi.azurenative.datareplication.inputs.VaultModelPropertiesArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var vault = new Vault("vault", VaultArgs.builder()
///             .location("eck")
///             .properties(VaultModelPropertiesArgs.builder()
///                 .vaultType("DisasterRecovery")
///                 .build())
///             .resourceGroupName("rgrecoveryservicesdatareplication")
///             .tags(Map.of("key5359", "ljfilxolxzuxrauopwtyxghrp"))
///             .vaultName("4")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const vault = new azure_native.datareplication.Vault("vault", {
///     location: "eck",
///     properties: {
///         vaultType: azure_native.datareplication.ReplicationVaultType.DisasterRecovery,
///     },
///     resourceGroupName: "rgrecoveryservicesdatareplication",
///     tags: {
///         key5359: "ljfilxolxzuxrauopwtyxghrp",
///     },
///     vaultName: "4",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// vault = azure_native.datareplication.Vault("vault",
///     location="eck",
///     properties={
///         "vault_type": azure_native.datareplication.ReplicationVaultType.DISASTER_RECOVERY,
///     },
///     resource_group_name="rgrecoveryservicesdatareplication",
///     tags={
///         "key5359": "ljfilxolxzuxrauopwtyxghrp",
///     },
///     vault_name="4")
///
/// ```
///
/// ```yaml
/// resources:
///   vault:
///     type: azure-native:datareplication:Vault
///     properties:
///       location: eck
///       properties:
///         vaultType: DisasterRecovery
///       resourceGroupName: rgrecoveryservicesdatareplication
///       tags:
///         key5359: ljfilxolxzuxrauopwtyxghrp
///       vaultName: '4'
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:datareplication:Vault bqgyqxmnlgwqxbmajddqwtao /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataReplication/replicationVaults/{vaultName}
/// ```
class Vault extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Gets or sets the location of the vault.
  late final pulumi.Output<String> location;
  /// Gets or sets the name of the resource.
  late final pulumi.Output<String> name;
  /// Vault properties.
  late final pulumi.Output<VaultModelPropertiesResponse> properties;
  late final pulumi.Output<VaultModelResponseSystemData> systemData;
  /// Gets or sets the resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Gets or sets the type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [Vault].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Vault]. {@macro pulumi_datareplication_vault_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Vault(
    String name, {
    VaultArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:datareplication:Vault',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<VaultModelPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VaultModelPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<VaultModelResponseSystemData>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VaultModelResponseSystemData.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}

import 'package:pulumi/pulumi.dart' as pulumi;
import 'replication_extension_args.dart';
import 'replication_extension_model_properties_response.dart';
import 'replication_extension_model_response_system_data.dart';

/// Replication extension model.
///
/// Uses Azure REST API version 2021-02-16-preview. In version 2.x of the Azure Native provider, it used API version 2021-02-16-preview.
///
/// Other available API versions: 2024-09-01, 2026-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native datareplication [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ReplicationExtension_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var replicationExtension = new AzureNative.DataReplication.ReplicationExtension("replicationExtension", new()
///     {
///         Properties = new AzureNative.DataReplication.Inputs.ReplicationExtensionModelPropertiesArgs
///         {
///             CustomProperties =
///             {
///                 { "instanceType", "ReplicationExtensionModelCustomProperties" },
///             },
///         },
///         ReplicationExtensionName = "g16yjJ",
///         ResourceGroupName = "rgrecoveryservicesdatareplication",
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
/// 		_, err := datareplication.NewReplicationExtension(ctx, "replicationExtension", &datareplication.ReplicationExtensionArgs{
/// 			Properties: &datareplication.ReplicationExtensionModelPropertiesArgs{
/// 				CustomProperties: pulumi.Any{
/// 					InstanceType: pulumi.String("ReplicationExtensionModelCustomProperties"),
/// 				},
/// 			},
/// 			ReplicationExtensionName: pulumi.String("g16yjJ"),
/// 			ResourceGroupName:        pulumi.String("rgrecoveryservicesdatareplication"),
/// 			VaultName:                pulumi.String("4"),
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
/// resource "azure-native_datareplication_replicationextension" "replicationExtension" {
///   properties = {
///     custom_properties = {
///       "instanceType" = "ReplicationExtensionModelCustomProperties"
///     }
///   }
///   replication_extension_name = "g16yjJ"
///   resource_group_name        = "rgrecoveryservicesdatareplication"
///   vault_name                 = "4"
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
/// import com.pulumi.azurenative.datareplication.ReplicationExtension;
/// import com.pulumi.azurenative.datareplication.ReplicationExtensionArgs;
/// import com.pulumi.azurenative.datareplication.inputs.ReplicationExtensionModelPropertiesArgs;
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
///         var replicationExtension = new ReplicationExtension("replicationExtension", ReplicationExtensionArgs.builder()
///             .properties(ReplicationExtensionModelPropertiesArgs.builder()
///                 .customProperties(Map.of("instanceType", "ReplicationExtensionModelCustomProperties"))
///                 .build())
///             .replicationExtensionName("g16yjJ")
///             .resourceGroupName("rgrecoveryservicesdatareplication")
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
/// const replicationExtension = new azure_native.datareplication.ReplicationExtension("replicationExtension", {
///     properties: {
///         customProperties: {
///             instanceType: "ReplicationExtensionModelCustomProperties",
///         },
///     },
///     replicationExtensionName: "g16yjJ",
///     resourceGroupName: "rgrecoveryservicesdatareplication",
///     vaultName: "4",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// replication_extension = azure_native.datareplication.ReplicationExtension("replicationExtension",
///     properties={
///         "custom_properties": {
///             "instance_type": "ReplicationExtensionModelCustomProperties",
///         },
///     },
///     replication_extension_name="g16yjJ",
///     resource_group_name="rgrecoveryservicesdatareplication",
///     vault_name="4")
///
/// ```
///
/// ```yaml
/// resources:
///   replicationExtension:
///     type: azure-native:datareplication:ReplicationExtension
///     properties:
///       properties:
///         customProperties:
///           instanceType: ReplicationExtensionModelCustomProperties
///       replicationExtensionName: g16yjJ
///       resourceGroupName: rgrecoveryservicesdatareplication
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
/// $ pulumi import azure-native:datareplication:ReplicationExtension xvjffbiecsd /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataReplication/replicationVaults/{vaultName}/replicationExtensions/{replicationExtensionName}
/// ```
class ReplicationExtension extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Gets or sets the name of the resource.
  late final pulumi.Output<String> name;
  /// Replication extension model properties.
  late final pulumi.Output<ReplicationExtensionModelPropertiesResponse> properties;
  late final pulumi.Output<ReplicationExtensionModelResponseSystemData> systemData;
  /// Gets or sets the type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [ReplicationExtension].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ReplicationExtension]. {@macro pulumi_datareplication_replication_extension_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ReplicationExtension(
    String name, {
    ReplicationExtensionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:datareplication:ReplicationExtension',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ReplicationExtensionModelPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ReplicationExtensionModelPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<ReplicationExtensionModelResponseSystemData>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ReplicationExtensionModelResponseSystemData.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}

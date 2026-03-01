import 'package:pulumi/pulumi.dart' as pulumi;
import 'protected_item_args.dart';
import 'protected_item_model_properties_response.dart';
import 'protected_item_model_response_system_data.dart';

/// Protected item model.
///
/// Uses Azure REST API version 2021-02-16-preview. In version 2.x of the Azure Native provider, it used API version 2021-02-16-preview.
///
/// Other available API versions: 2024-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native datareplication [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ProtectedItem_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var protectedItem = new AzureNative.DataReplication.ProtectedItem("protectedItem", new()
///     {
///         Properties = new AzureNative.DataReplication.Inputs.ProtectedItemModelPropertiesArgs
///         {
///             CustomProperties =
///             {
///                 { "instanceType", "ProtectedItemModelCustomProperties" },
///             },
///             PolicyName = "tjoeiynplt",
///             ReplicationExtensionName = "jwxdo",
///         },
///         ProtectedItemName = "d",
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
/// 		_, err := datareplication.NewProtectedItem(ctx, "protectedItem", &datareplication.ProtectedItemArgs{
/// 			Properties: &datareplication.ProtectedItemModelPropertiesArgs{
/// 				CustomProperties: pulumi.Any{
/// 					InstanceType: pulumi.String("ProtectedItemModelCustomProperties"),
/// 				},
/// 				PolicyName:               pulumi.String("tjoeiynplt"),
/// 				ReplicationExtensionName: pulumi.String("jwxdo"),
/// 			},
/// 			ProtectedItemName: pulumi.String("d"),
/// 			ResourceGroupName: pulumi.String("rgrecoveryservicesdatareplication"),
/// 			VaultName:         pulumi.String("4"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.datareplication.ProtectedItem;
/// import com.pulumi.azurenative.datareplication.ProtectedItemArgs;
/// import com.pulumi.azurenative.datareplication.inputs.ProtectedItemModelPropertiesArgs;
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
///         var protectedItem = new ProtectedItem("protectedItem", ProtectedItemArgs.builder()
///             .properties(ProtectedItemModelPropertiesArgs.builder()
///                 .customProperties(Map.of("instanceType", "ProtectedItemModelCustomProperties"))
///                 .policyName("tjoeiynplt")
///                 .replicationExtensionName("jwxdo")
///                 .build())
///             .protectedItemName("d")
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
/// const protectedItem = new azure_native.datareplication.ProtectedItem("protectedItem", {
///     properties: {
///         customProperties: {
///             instanceType: "ProtectedItemModelCustomProperties",
///         },
///         policyName: "tjoeiynplt",
///         replicationExtensionName: "jwxdo",
///     },
///     protectedItemName: "d",
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
/// protected_item = azure_native.datareplication.ProtectedItem("protectedItem",
///     properties={
///         "custom_properties": {
///             "instance_type": "ProtectedItemModelCustomProperties",
///         },
///         "policy_name": "tjoeiynplt",
///         "replication_extension_name": "jwxdo",
///     },
///     protected_item_name="d",
///     resource_group_name="rgrecoveryservicesdatareplication",
///     vault_name="4")
///
/// ```
///
/// ```yaml
/// resources:
///   protectedItem:
///     type: azure-native:datareplication:ProtectedItem
///     properties:
///       properties:
///         customProperties:
///           instanceType: ProtectedItemModelCustomProperties
///         policyName: tjoeiynplt
///         replicationExtensionName: jwxdo
///       protectedItemName: d
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
/// $ pulumi import azure-native:datareplication:ProtectedItem t /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataReplication/replicationVaults/{vaultName}/protectedItems/{protectedItemName}
/// ```
class ProtectedItem extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Gets or sets the name of the resource.
  late final pulumi.Output<String> name;
  /// Protected item model properties.
  late final pulumi.Output<ProtectedItemModelPropertiesResponse> properties;
  late final pulumi.Output<ProtectedItemModelResponseSystemData> systemData;
  /// Gets or sets the type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [ProtectedItem].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProtectedItem]. {@macro pulumi_datareplication_protected_item_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProtectedItem(
    String name, {
    ProtectedItemArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:datareplication:ProtectedItem',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    this.properties = registerOutput<ProtectedItemModelPropertiesResponse>('properties');
    this.systemData = registerOutput<ProtectedItemModelResponseSystemData>('systemData');
    this.type = registerOutput<String>('type');
  }
}

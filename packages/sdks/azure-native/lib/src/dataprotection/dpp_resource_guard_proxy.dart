import 'package:pulumi/pulumi.dart' as pulumi;
import 'dpp_resource_guard_proxy_args.dart';
import 'resource_guard_proxy_base_response.dart';
import 'system_data_response.dart';

/// ResourceGuardProxyBaseResource object, used for response and request bodies for ResourceGuardProxy APIs
///
/// Uses Azure REST API version 2025-01-01. In version 2.x of the Azure Native provider, it used API version 2023-01-01.
///
/// Other available API versions: 2023-01-01, 2023-04-01-preview, 2023-05-01, 2023-06-01-preview, 2023-08-01-preview, 2023-11-01, 2023-12-01, 2024-02-01-preview, 2024-03-01, 2024-04-01, 2025-02-01, 2025-07-01, 2025-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native dataprotection [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create ResourceGuardProxy
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dppResourceGuardProxy = new AzureNative.DataProtection.DppResourceGuardProxy("dppResourceGuardProxy", new()
///     {
///         Properties = new AzureNative.DataProtection.Inputs.ResourceGuardProxyBaseArgs
///         {
///             ResourceGuardResourceId = "/subscriptions/f9e67185-f313-4e79-aa71-6458d429369d/resourceGroups/ResourceGuardSecurityAdminRG/providers/Microsoft.DataProtection/resourceGuards/ResourceGuardTestResource",
///         },
///         ResourceGroupName = "SampleResourceGroup",
///         ResourceGuardProxyName = "swaggerExample",
///         VaultName = "sampleVault",
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
/// 	dataprotection "github.com/pulumi/pulumi-azure-native-sdk/dataprotection/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataprotection.NewDppResourceGuardProxy(ctx, "dppResourceGuardProxy", &dataprotection.DppResourceGuardProxyArgs{
/// 			Properties: &dataprotection.ResourceGuardProxyBaseArgs{
/// 				ResourceGuardResourceId: pulumi.String("/subscriptions/f9e67185-f313-4e79-aa71-6458d429369d/resourceGroups/ResourceGuardSecurityAdminRG/providers/Microsoft.DataProtection/resourceGuards/ResourceGuardTestResource"),
/// 			},
/// 			ResourceGroupName:      pulumi.String("SampleResourceGroup"),
/// 			ResourceGuardProxyName: pulumi.String("swaggerExample"),
/// 			VaultName:              pulumi.String("sampleVault"),
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
/// import com.pulumi.azurenative.dataprotection.DppResourceGuardProxy;
/// import com.pulumi.azurenative.dataprotection.DppResourceGuardProxyArgs;
/// import com.pulumi.azurenative.dataprotection.inputs.ResourceGuardProxyBaseArgs;
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
///         var dppResourceGuardProxy = new DppResourceGuardProxy("dppResourceGuardProxy", DppResourceGuardProxyArgs.builder()
///             .properties(ResourceGuardProxyBaseArgs.builder()
///                 .resourceGuardResourceId("/subscriptions/f9e67185-f313-4e79-aa71-6458d429369d/resourceGroups/ResourceGuardSecurityAdminRG/providers/Microsoft.DataProtection/resourceGuards/ResourceGuardTestResource")
///                 .build())
///             .resourceGroupName("SampleResourceGroup")
///             .resourceGuardProxyName("swaggerExample")
///             .vaultName("sampleVault")
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
/// const dppResourceGuardProxy = new azure_native.dataprotection.DppResourceGuardProxy("dppResourceGuardProxy", {
///     properties: {
///         resourceGuardResourceId: "/subscriptions/f9e67185-f313-4e79-aa71-6458d429369d/resourceGroups/ResourceGuardSecurityAdminRG/providers/Microsoft.DataProtection/resourceGuards/ResourceGuardTestResource",
///     },
///     resourceGroupName: "SampleResourceGroup",
///     resourceGuardProxyName: "swaggerExample",
///     vaultName: "sampleVault",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// dpp_resource_guard_proxy = azure_native.dataprotection.DppResourceGuardProxy("dppResourceGuardProxy",
///     properties={
///         "resource_guard_resource_id": "/subscriptions/f9e67185-f313-4e79-aa71-6458d429369d/resourceGroups/ResourceGuardSecurityAdminRG/providers/Microsoft.DataProtection/resourceGuards/ResourceGuardTestResource",
///     },
///     resource_group_name="SampleResourceGroup",
///     resource_guard_proxy_name="swaggerExample",
///     vault_name="sampleVault")
///
/// ```
///
/// ```yaml
/// resources:
///   dppResourceGuardProxy:
///     type: azure-native:dataprotection:DppResourceGuardProxy
///     properties:
///       properties:
///         resourceGuardResourceId: /subscriptions/f9e67185-f313-4e79-aa71-6458d429369d/resourceGroups/ResourceGuardSecurityAdminRG/providers/Microsoft.DataProtection/resourceGuards/ResourceGuardTestResource
///       resourceGroupName: SampleResourceGroup
///       resourceGuardProxyName: swaggerExample
///       vaultName: sampleVault
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
/// $ pulumi import azure-native:dataprotection:DppResourceGuardProxy swaggerExample /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataProtection/backupVaults/{vaultName}/backupResourceGuardProxies/{resourceGuardProxyName}
/// ```
class DppResourceGuardProxy extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Resource name associated with the resource.
  late final pulumi.Output<String> name;
  /// ResourceGuardProxyBaseResource properties
  late final pulumi.Output<ResourceGuardProxyBaseResponse> properties;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource type represents the complete path of the form Namespace/ResourceType/ResourceType/...
  late final pulumi.Output<String> type;

  /// Creates a new [DppResourceGuardProxy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DppResourceGuardProxy]. {@macro pulumi_dataprotection_dpp_resource_guard_proxy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DppResourceGuardProxy(
    String name, {
    DppResourceGuardProxyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:dataprotection:DppResourceGuardProxy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ResourceGuardProxyBaseResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceGuardProxyBaseResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}

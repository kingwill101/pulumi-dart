import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_properties_response.dart';
import 'fluid_relay_endpoints_response.dart';
import 'fluid_relay_server_args.dart';
import 'identity_response.dart';
import 'system_data_response.dart';

/// A FluidRelay Server.
///
/// Uses Azure REST API version 2022-06-01. In version 2.x of the Azure Native provider, it used API version 2022-06-01.
///
/// Other available API versions: 2025-06-20-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native fluidrelay [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a Fluid Relay server
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var fluidRelayServer = new AzureNative.FluidRelay.FluidRelayServer("fluidRelayServer", new()
///     {
///         FluidRelayServerName = "myFluidRelayServer",
///         Identity = new AzureNative.FluidRelay.Inputs.IdentityArgs
///         {
///             Type = AzureNative.FluidRelay.ResourceIdentityType.SystemAssigned,
///         },
///         Location = "west-us",
///         ResourceGroup = "myResourceGroup",
///         Storagesku = AzureNative.FluidRelay.StorageSKU.Basic,
///         Tags =
///         {
///             { "Category", "sales" },
///         },
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
/// 	fluidrelay "github.com/pulumi/pulumi-azure-native-sdk/fluidrelay/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := fluidrelay.NewFluidRelayServer(ctx, "fluidRelayServer", &fluidrelay.FluidRelayServerArgs{
/// 			FluidRelayServerName: pulumi.String("myFluidRelayServer"),
/// 			Identity: &fluidrelay.IdentityArgs{
/// 				Type: fluidrelay.ResourceIdentityTypeSystemAssigned,
/// 			},
/// 			Location:      pulumi.String("west-us"),
/// 			ResourceGroup: pulumi.String("myResourceGroup"),
/// 			Storagesku:    pulumi.String(fluidrelay.StorageSKUBasic),
/// 			Tags: pulumi.StringMap{
/// 				"Category": pulumi.String("sales"),
/// 			},
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
/// resource "azure-native_fluidrelay_fluidrelayserver" "fluidRelayServer" {
///   fluid_relay_server_name = "myFluidRelayServer"
///   identity = {
///     type = "SystemAssigned"
///   }
///   location       = "west-us"
///   resource_group = "myResourceGroup"
///   storagesku     = "basic"
///   tags = {
///     "Category" = "sales"
///   }
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
/// import com.pulumi.azurenative.fluidrelay.FluidRelayServer;
/// import com.pulumi.azurenative.fluidrelay.FluidRelayServerArgs;
/// import com.pulumi.azurenative.fluidrelay.inputs.IdentityArgs;
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
///         var fluidRelayServer = new FluidRelayServer("fluidRelayServer", FluidRelayServerArgs.builder()
///             .fluidRelayServerName("myFluidRelayServer")
///             .identity(IdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .location("west-us")
///             .resourceGroup("myResourceGroup")
///             .storagesku("basic")
///             .tags(Map.of("Category", "sales"))
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
/// const fluidRelayServer = new azure_native.fluidrelay.FluidRelayServer("fluidRelayServer", {
///     fluidRelayServerName: "myFluidRelayServer",
///     identity: {
///         type: azure_native.fluidrelay.ResourceIdentityType.SystemAssigned,
///     },
///     location: "west-us",
///     resourceGroup: "myResourceGroup",
///     storagesku: azure_native.fluidrelay.StorageSKU.Basic,
///     tags: {
///         Category: "sales",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// fluid_relay_server = azure_native.fluidrelay.FluidRelayServer("fluidRelayServer",
///     fluid_relay_server_name="myFluidRelayServer",
///     identity={
///         "type": azure_native.fluidrelay.ResourceIdentityType.SYSTEM_ASSIGNED,
///     },
///     location="west-us",
///     resource_group="myResourceGroup",
///     storagesku=azure_native.fluidrelay.StorageSKU.BASIC,
///     tags={
///         "Category": "sales",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   fluidRelayServer:
///     type: azure-native:fluidrelay:FluidRelayServer
///     properties:
///       fluidRelayServerName: myFluidRelayServer
///       identity:
///         type: SystemAssigned
///       location: west-us
///       resourceGroup: myResourceGroup
///       storagesku: basic
///       tags:
///         Category: sales
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
/// $ pulumi import azure-native:fluidrelay:FluidRelayServer myFluidRelayServer /subscriptions/{subscriptionId}/resourceGroups/{resourceGroup}/providers/Microsoft.FluidRelay/fluidRelayServers/{fluidRelayServerName}
/// ```
class FluidRelayServer extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// All encryption configuration for a resource.
  late final pulumi.Output<EncryptionPropertiesResponse?> encryption;
  /// The Fluid Relay Service endpoints for this server.
  late final pulumi.Output<FluidRelayEndpointsResponse> fluidRelayEndpoints;
  /// The Fluid tenantId for this server
  late final pulumi.Output<String> frsTenantId;
  /// The type of identity used for the resource.
  late final pulumi.Output<IdentityResponse?> identity;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Provision states for FluidRelay RP
  late final pulumi.Output<String?> provisioningState;
  /// Sku of the storage associated with the resource
  late final pulumi.Output<String?> storagesku;
  /// System meta data for this resource, including creation and modification information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [FluidRelayServer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FluidRelayServer]. {@macro pulumi_fluidrelay_fluid_relay_server_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FluidRelayServer(
    String name, {
    FluidRelayServerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:fluidrelay:FluidRelayServer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    encryption = registerOutput<EncryptionPropertiesResponse?>('encryption', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EncryptionPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    fluidRelayEndpoints = registerOutput<FluidRelayEndpointsResponse>('fluidRelayEndpoints', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FluidRelayEndpointsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    frsTenantId = registerOutput<String>('frsTenantId');
    identity = registerOutput<IdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String?>('provisioningState');
    storagesku = registerOutput<String?>('storagesku');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}

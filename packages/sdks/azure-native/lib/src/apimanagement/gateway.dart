import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_args.dart';
import 'resource_location_data_contract_response.dart';

/// Gateway details.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2022-08-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-08-01, 2021-12-01-preview, 2022-04-01-preview, 2022-08-01, 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ApiManagementCreateGateway
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var gateway = new AzureNative.ApiManagement.Gateway("gateway", new()
///     {
///         Description = "my gateway 1",
///         GatewayId = "gw1",
///         LocationData = new AzureNative.ApiManagement.Inputs.ResourceLocationDataContractArgs
///         {
///             Name = "my location",
///         },
///         ResourceGroupName = "rg1",
///         ServiceName = "apimService1",
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
/// 	apimanagement "github.com/pulumi/pulumi-azure-native-sdk/apimanagement/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apimanagement.NewGateway(ctx, "gateway", &apimanagement.GatewayArgs{
/// 			Description: pulumi.String("my gateway 1"),
/// 			GatewayId:   pulumi.String("gw1"),
/// 			LocationData: &apimanagement.ResourceLocationDataContractArgs{
/// 				Name: pulumi.String("my location"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ServiceName:       pulumi.String("apimService1"),
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
/// resource "azure-native_apimanagement_gateway" "gateway" {
///   description = "my gateway 1"
///   gateway_id  = "gw1"
///   location_data = {
///     name = "my location"
///   }
///   resource_group_name = "rg1"
///   service_name        = "apimService1"
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
/// import com.pulumi.azurenative.apimanagement.Gateway;
/// import com.pulumi.azurenative.apimanagement.GatewayArgs;
/// import com.pulumi.azurenative.apimanagement.inputs.ResourceLocationDataContractArgs;
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
///         var gateway = new Gateway("gateway", GatewayArgs.builder()
///             .description("my gateway 1")
///             .gatewayId("gw1")
///             .locationData(ResourceLocationDataContractArgs.builder()
///                 .name("my location")
///                 .build())
///             .resourceGroupName("rg1")
///             .serviceName("apimService1")
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
/// const gateway = new azure_native.apimanagement.Gateway("gateway", {
///     description: "my gateway 1",
///     gatewayId: "gw1",
///     locationData: {
///         name: "my location",
///     },
///     resourceGroupName: "rg1",
///     serviceName: "apimService1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// gateway = azure_native.apimanagement.Gateway("gateway",
///     description="my gateway 1",
///     gateway_id="gw1",
///     location_data={
///         "name": "my location",
///     },
///     resource_group_name="rg1",
///     service_name="apimService1")
///
/// ```
///
/// ```yaml
/// resources:
///   gateway:
///     type: azure-native:apimanagement:Gateway
///     properties:
///       description: my gateway 1
///       gatewayId: gw1
///       locationData:
///         name: my location
///       resourceGroupName: rg1
///       serviceName: apimService1
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
/// $ pulumi import azure-native:apimanagement:Gateway a1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/gateways/{gatewayId}
/// ```
class Gateway extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Gateway description
  late final pulumi.Output<String?> description;
  /// Gateway location.
  late final pulumi.Output<ResourceLocationDataContractResponse?> locationData;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Gateway].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Gateway]. {@macro pulumi_apimanagement_gateway_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Gateway(
    String name, {
    GatewayArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:apimanagement:Gateway',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<String?>('description');
    locationData = registerOutput<ResourceLocationDataContractResponse?>('locationData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceLocationDataContractResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [Gateway] resource.
  Gateway.reference(String urn)
    : super(
        'azure-native:apimanagement:Gateway',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<String?>('description');
    locationData = registerOutput<ResourceLocationDataContractResponse?>('locationData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceLocationDataContractResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    type = registerOutput<String>('type');
  }
}

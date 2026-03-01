import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_args.dart';
import 'system_data_response.dart';

/// Describes an Arc Gateway.
///
/// Uses Azure REST API version 2024-07-31-preview. In version 2.x of the Azure Native provider, it used API version 2024-03-31-preview.
///
/// Other available API versions: 2024-03-31-preview, 2024-05-20-preview, 2024-09-10-preview, 2024-11-10-preview, 2025-01-13, 2025-02-19-preview, 2025-06-01, 2025-08-21-preview, 2025-09-16-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native hybridcompute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or Update a Gateway
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var gateway = new AzureNative.HybridCompute.Gateway("gateway", new()
///     {
///         AllowedFeatures = new[]
///         {
///             "*",
///         },
///         GatewayName = "{gatewayName}",
///         GatewayType = AzureNative.HybridCompute.GatewayType.Public,
///         Location = "eastus2euap",
///         ResourceGroupName = "myResourceGroup",
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
/// 	hybridcompute "github.com/pulumi/pulumi-azure-native-sdk/hybridcompute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hybridcompute.NewGateway(ctx, "gateway", &hybridcompute.GatewayArgs{
/// 			AllowedFeatures: pulumi.StringArray{
/// 				pulumi.String("*"),
/// 			},
/// 			GatewayName:       pulumi.String("{gatewayName}"),
/// 			GatewayType:       pulumi.String(hybridcompute.GatewayTypePublic),
/// 			Location:          pulumi.String("eastus2euap"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
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
/// import com.pulumi.azurenative.hybridcompute.Gateway;
/// import com.pulumi.azurenative.hybridcompute.GatewayArgs;
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
///         var gateway = new Gateway("gateway", GatewayArgs.builder()
///             .allowedFeatures("*")
///             .gatewayName("{gatewayName}")
///             .gatewayType("Public")
///             .location("eastus2euap")
///             .resourceGroupName("myResourceGroup")
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
/// const gateway = new azure_native.hybridcompute.Gateway("gateway", {
///     allowedFeatures: ["*"],
///     gatewayName: "{gatewayName}",
///     gatewayType: azure_native.hybridcompute.GatewayType.Public,
///     location: "eastus2euap",
///     resourceGroupName: "myResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// gateway = azure_native.hybridcompute.Gateway("gateway",
///     allowed_features=["*"],
///     gateway_name="{gatewayName}",
///     gateway_type=azure_native.hybridcompute.GatewayType.PUBLIC,
///     location="eastus2euap",
///     resource_group_name="myResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   gateway:
///     type: azure-native:hybridcompute:Gateway
///     properties:
///       allowedFeatures:
///         - '*'
///       gatewayName: '{gatewayName}'
///       gatewayType: Public
///       location: eastus2euap
///       resourceGroupName: myResourceGroup
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
/// $ pulumi import azure-native:hybridcompute:Gateway {gatewayName} /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.HybridCompute/gateways/{gatewayName}
/// ```
class Gateway extends pulumi.CustomResource {
  /// Specifies the list of features that are enabled for this Gateway.
  late final pulumi.Output<List<String>?> allowedFeatures;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The endpoint fqdn for the Gateway.
  late final pulumi.Output<String> gatewayEndpoint;
  /// A unique, immutable, identifier for the Gateway.
  late final pulumi.Output<String> gatewayId;
  /// The type of the Gateway resource.
  late final pulumi.Output<String?> gatewayType;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The provisioning state, which only appears in the response.
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Gateway].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Gateway]. {@macro pulumi_hybridcompute_gateway_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Gateway(
    String name, {
    GatewayArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:hybridcompute:Gateway',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.allowedFeatures = registerOutput<List<String>?>('allowedFeatures');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.gatewayEndpoint = registerOutput<String>('gatewayEndpoint');
    this.gatewayId = registerOutput<String>('gatewayId');
    this.gatewayType = registerOutput<String?>('gatewayType');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}

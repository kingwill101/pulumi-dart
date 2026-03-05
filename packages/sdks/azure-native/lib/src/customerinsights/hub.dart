import 'package:pulumi/pulumi.dart' as pulumi;
import 'hub_args.dart';
import 'hub_billing_info_format_response.dart';

/// Hub resource.
///
/// Uses Azure REST API version 2017-04-26. In version 2.x of the Azure Native provider, it used API version 2017-04-26.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Hubs_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var hub = new AzureNative.CustomerInsights.Hub("hub", new()
///     {
///         HubBillingInfo = new AzureNative.CustomerInsights.Inputs.HubBillingInfoFormatArgs
///         {
///             MaxUnits = 5,
///             MinUnits = 1,
///             SkuName = "B0",
///         },
///         HubName = "sdkTestHub",
///         Location = "West US",
///         ResourceGroupName = "TestHubRG",
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
/// 	customerinsights "github.com/pulumi/pulumi-azure-native-sdk/customerinsights/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := customerinsights.NewHub(ctx, "hub", &customerinsights.HubArgs{
/// 			HubBillingInfo: &customerinsights.HubBillingInfoFormatArgs{
/// 				MaxUnits: pulumi.Int(5),
/// 				MinUnits: pulumi.Int(1),
/// 				SkuName:  pulumi.String("B0"),
/// 			},
/// 			HubName:           pulumi.String("sdkTestHub"),
/// 			Location:          pulumi.String("West US"),
/// 			ResourceGroupName: pulumi.String("TestHubRG"),
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
/// import com.pulumi.azurenative.customerinsights.Hub;
/// import com.pulumi.azurenative.customerinsights.HubArgs;
/// import com.pulumi.azurenative.customerinsights.inputs.HubBillingInfoFormatArgs;
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
///         var hub = new Hub("hub", HubArgs.builder()
///             .hubBillingInfo(HubBillingInfoFormatArgs.builder()
///                 .maxUnits(5)
///                 .minUnits(1)
///                 .skuName("B0")
///                 .build())
///             .hubName("sdkTestHub")
///             .location("West US")
///             .resourceGroupName("TestHubRG")
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
/// const hub = new azure_native.customerinsights.Hub("hub", {
///     hubBillingInfo: {
///         maxUnits: 5,
///         minUnits: 1,
///         skuName: "B0",
///     },
///     hubName: "sdkTestHub",
///     location: "West US",
///     resourceGroupName: "TestHubRG",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// hub = azure_native.customerinsights.Hub("hub",
///     hub_billing_info={
///         "max_units": 5,
///         "min_units": 1,
///         "sku_name": "B0",
///     },
///     hub_name="sdkTestHub",
///     location="West US",
///     resource_group_name="TestHubRG")
///
/// ```
///
/// ```yaml
/// resources:
///   hub:
///     type: azure-native:customerinsights:Hub
///     properties:
///       hubBillingInfo:
///         maxUnits: 5
///         minUnits: 1
///         skuName: B0
///       hubName: sdkTestHub
///       location: West US
///       resourceGroupName: TestHubRG
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
/// $ pulumi import azure-native:customerinsights:Hub testHub2839 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.CustomerInsights/hubs/{hubName}
/// ```
class Hub extends pulumi.CustomResource {
  /// API endpoint URL of the hub.
  late final pulumi.Output<String> apiEndpoint;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Billing settings of the hub.
  late final pulumi.Output<HubBillingInfoFormatResponse?> hubBillingInfo;
  /// Resource location.
  late final pulumi.Output<String?> location;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// Provisioning state of the hub.
  late final pulumi.Output<String> provisioningState;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The bit flags for enabled hub features. Bit 0 is set to 1 indicates graph is enabled, or disabled if set to 0. Bit 1 is set to 1 indicates the hub is disabled, or enabled if set to 0.
  late final pulumi.Output<int?> tenantFeatures;
  /// Resource type.
  late final pulumi.Output<String> type;
  /// Web endpoint URL of the hub.
  late final pulumi.Output<String> webEndpoint;

  /// Creates a new [Hub].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Hub]. {@macro pulumi_customerinsights_hub_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Hub(
    String name, {
    HubArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:customerinsights:Hub',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiEndpoint = registerOutput<String>('apiEndpoint');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    hubBillingInfo = registerOutput<HubBillingInfoFormatResponse?>('hubBillingInfo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HubBillingInfoFormatResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    tags = registerOutput<Map<String, String>?>('tags');
    tenantFeatures = registerOutput<int?>('tenantFeatures');
    type = registerOutput<String>('type');
    webEndpoint = registerOutput<String>('webEndpoint');
  }
}

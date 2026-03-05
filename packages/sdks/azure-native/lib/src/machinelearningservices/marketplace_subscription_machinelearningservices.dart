import 'package:pulumi/pulumi.dart' as pulumi;
import 'marketplace_subscription_args.dart';
import 'marketplace_subscription_response.dart';
import 'system_data_response.dart';

/// Azure Resource Manager resource envelope.
///
/// Uses Azure REST API version 2025-09-01. In version 2.x of the Azure Native provider, it used API version 2024-01-01-preview.
///
/// Other available API versions: 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateOrUpdate Workspace Marketplace Subscription.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var marketplaceSubscription = new AzureNative.MachineLearningServices.MarketplaceSubscription("marketplaceSubscription", new()
///     {
///         MarketplaceSubscriptionProperties = new AzureNative.MachineLearningServices.Inputs.MarketplaceSubscriptionArgs
///         {
///             ModelId = "string",
///         },
///         Name = "string",
///         ResourceGroupName = "test-rg",
///         WorkspaceName = "my-aml-workspace",
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
/// 	machinelearningservices "github.com/pulumi/pulumi-azure-native-sdk/machinelearningservices/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := machinelearningservices.NewMarketplaceSubscription(ctx, "marketplaceSubscription", &machinelearningservices.MarketplaceSubscriptionArgs{
/// 			MarketplaceSubscriptionProperties: &machinelearningservices.MarketplaceSubscriptionTypeArgs{
/// 				ModelId: pulumi.String("string"),
/// 			},
/// 			Name:              pulumi.String("string"),
/// 			ResourceGroupName: pulumi.String("test-rg"),
/// 			WorkspaceName:     pulumi.String("my-aml-workspace"),
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
/// import com.pulumi.azurenative.machinelearningservices.MarketplaceSubscription;
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
///         var marketplaceSubscription = new MarketplaceSubscription("marketplaceSubscription", MarketplaceSubscriptionArgs.builder()
///             .marketplaceSubscriptionProperties(MarketplaceSubscriptionArgs.builder()
///                 .modelId("string")
///                 .build())
///             .name("string")
///             .resourceGroupName("test-rg")
///             .workspaceName("my-aml-workspace")
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
/// const marketplaceSubscription = new azure_native.machinelearningservices.MarketplaceSubscription("marketplaceSubscription", {
///     marketplaceSubscriptionProperties: {
///         modelId: "string",
///     },
///     name: "string",
///     resourceGroupName: "test-rg",
///     workspaceName: "my-aml-workspace",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// marketplace_subscription = azure_native.machinelearningservices.MarketplaceSubscription("marketplaceSubscription",
///     marketplace_subscription_properties={
///         "model_id": "string",
///     },
///     name="string",
///     resource_group_name="test-rg",
///     workspace_name="my-aml-workspace")
///
/// ```
///
/// ```yaml
/// resources:
///   marketplaceSubscription:
///     type: azure-native:machinelearningservices:MarketplaceSubscription
///     properties:
///       marketplaceSubscriptionProperties:
///         modelId: string
///       name: string
///       resourceGroupName: test-rg
///       workspaceName: my-aml-workspace
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
/// $ pulumi import azure-native:machinelearningservices:MarketplaceSubscription string /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.MachineLearningServices/workspaces/{workspaceName}/marketplaceSubscriptions/{name}
/// ```
class MarketplaceSubscriptionMachinelearningservices extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// [Required] Additional attributes of the entity.
  late final pulumi.Output<MarketplaceSubscriptionResponse> marketplaceSubscriptionProperties;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [MarketplaceSubscriptionMachinelearningservices].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MarketplaceSubscriptionMachinelearningservices]. {@macro pulumi_machinelearningservices_marketplace_subscription_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MarketplaceSubscriptionMachinelearningservices(
    String name, {
    MarketplaceSubscriptionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:machinelearningservices:MarketplaceSubscription',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    marketplaceSubscriptionProperties = registerOutput<MarketplaceSubscriptionResponse>('marketplaceSubscriptionProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MarketplaceSubscriptionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}

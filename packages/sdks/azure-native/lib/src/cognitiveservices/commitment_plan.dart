import 'package:pulumi/pulumi.dart' as pulumi;
import 'commitment_plan_args.dart';
import 'commitment_plan_properties_response.dart';
import 'sku_response.dart';
import 'system_data_response.dart';

/// Cognitive Services account commitment plan.
///
/// Uses Azure REST API version 2024-10-01. In version 2.x of the Azure Native provider, it used API version 2023-05-01.
///
/// Other available API versions: 2023-05-01, 2023-10-01-preview, 2024-04-01-preview, 2024-06-01-preview, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cognitiveservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### PutCommitmentPlan
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var commitmentPlan = new AzureNative.CognitiveServices.CommitmentPlan("commitmentPlan", new()
///     {
///         AccountName = "accountName",
///         CommitmentPlanName = "commitmentPlanName",
///         Properties = new AzureNative.CognitiveServices.Inputs.CommitmentPlanPropertiesArgs
///         {
///             AutoRenew = true,
///             Current = new AzureNative.CognitiveServices.Inputs.CommitmentPeriodArgs
///             {
///                 Tier = "T1",
///             },
///             HostingModel = AzureNative.CognitiveServices.HostingModel.Web,
///             PlanType = "Speech2Text",
///         },
///         ResourceGroupName = "resourceGroupName",
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
/// 	cognitiveservices "github.com/pulumi/pulumi-azure-native-sdk/cognitiveservices/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cognitiveservices.NewCommitmentPlan(ctx, "commitmentPlan", &cognitiveservices.CommitmentPlanArgs{
/// 			AccountName:        pulumi.String("accountName"),
/// 			CommitmentPlanName: pulumi.String("commitmentPlanName"),
/// 			Properties: &cognitiveservices.CommitmentPlanPropertiesArgs{
/// 				AutoRenew: pulumi.Bool(true),
/// 				Current: &cognitiveservices.CommitmentPeriodArgs{
/// 					Tier: pulumi.String("T1"),
/// 				},
/// 				HostingModel: pulumi.String(cognitiveservices.HostingModelWeb),
/// 				PlanType:     pulumi.String("Speech2Text"),
/// 			},
/// 			ResourceGroupName: pulumi.String("resourceGroupName"),
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
/// import com.pulumi.azurenative.cognitiveservices.CommitmentPlan;
/// import com.pulumi.azurenative.cognitiveservices.CommitmentPlanArgs;
/// import com.pulumi.azurenative.cognitiveservices.inputs.CommitmentPlanPropertiesArgs;
/// import com.pulumi.azurenative.cognitiveservices.inputs.CommitmentPeriodArgs;
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
///         var commitmentPlan = new CommitmentPlan("commitmentPlan", CommitmentPlanArgs.builder()
///             .accountName("accountName")
///             .commitmentPlanName("commitmentPlanName")
///             .properties(CommitmentPlanPropertiesArgs.builder()
///                 .autoRenew(true)
///                 .current(CommitmentPeriodArgs.builder()
///                     .tier("T1")
///                     .build())
///                 .hostingModel("Web")
///                 .planType("Speech2Text")
///                 .build())
///             .resourceGroupName("resourceGroupName")
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
/// const commitmentPlan = new azure_native.cognitiveservices.CommitmentPlan("commitmentPlan", {
///     accountName: "accountName",
///     commitmentPlanName: "commitmentPlanName",
///     properties: {
///         autoRenew: true,
///         current: {
///             tier: "T1",
///         },
///         hostingModel: azure_native.cognitiveservices.HostingModel.Web,
///         planType: "Speech2Text",
///     },
///     resourceGroupName: "resourceGroupName",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// commitment_plan = azure_native.cognitiveservices.CommitmentPlan("commitmentPlan",
///     account_name="accountName",
///     commitment_plan_name="commitmentPlanName",
///     properties={
///         "auto_renew": True,
///         "current": {
///             "tier": "T1",
///         },
///         "hosting_model": azure_native.cognitiveservices.HostingModel.WEB,
///         "plan_type": "Speech2Text",
///     },
///     resource_group_name="resourceGroupName")
///
/// ```
///
/// ```yaml
/// resources:
///   commitmentPlan:
///     type: azure-native:cognitiveservices:CommitmentPlan
///     properties:
///       accountName: accountName
///       commitmentPlanName: commitmentPlanName
///       properties:
///         autoRenew: true
///         current:
///           tier: T1
///         hostingModel: Web
///         planType: Speech2Text
///       resourceGroupName: resourceGroupName
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
/// $ pulumi import azure-native:cognitiveservices:CommitmentPlan commitmentPlanName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.CognitiveServices/accounts/{accountName}/commitmentPlans/{commitmentPlanName}
/// ```
class CommitmentPlan extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Resource Etag.
  late final pulumi.Output<String> etag;

  /// The Kind of the resource.
  late final pulumi.Output<String?> kind;

  /// The geo-location where the resource lives
  late final pulumi.Output<String?> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Properties of Cognitive Services account commitment plan.
  late final pulumi.Output<CommitmentPlanPropertiesResponse> properties;

  /// The resource model definition representing SKU
  late final pulumi.Output<SkuResponse?> sku;

  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [CommitmentPlan].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CommitmentPlan]. {@macro pulumi_cognitiveservices_commitment_plan_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CommitmentPlan(
    String name, {
    CommitmentPlanArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:cognitiveservices:CommitmentPlan',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String>('etag');
    kind = registerOutput<String?>('kind');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<CommitmentPlanPropertiesResponse>('properties');
    sku = registerOutput<SkuResponse?>('sku');
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}

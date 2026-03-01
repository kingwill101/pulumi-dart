import 'package:pulumi/pulumi.dart' as pulumi;
import 'commitment_plan_properties_response.dart';
import 'shared_commitment_plan_args.dart';
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
/// ### Create Commitment Plan
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sharedCommitmentPlan = new AzureNative.CognitiveServices.SharedCommitmentPlan("sharedCommitmentPlan", new()
///     {
///         CommitmentPlanName = "commitmentPlanName",
///         Kind = "SpeechServices",
///         Location = "West US",
///         Properties = new AzureNative.CognitiveServices.Inputs.CommitmentPlanPropertiesArgs
///         {
///             AutoRenew = true,
///             Current = new AzureNative.CognitiveServices.Inputs.CommitmentPeriodArgs
///             {
///                 Tier = "T1",
///             },
///             HostingModel = AzureNative.CognitiveServices.HostingModel.Web,
///             PlanType = "STT",
///         },
///         ResourceGroupName = "resourceGroupName",
///         Sku = new AzureNative.CognitiveServices.Inputs.SkuArgs
///         {
///             Name = "S0",
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
/// 	cognitiveservices "github.com/pulumi/pulumi-azure-native-sdk/cognitiveservices/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cognitiveservices.NewSharedCommitmentPlan(ctx, "sharedCommitmentPlan", &cognitiveservices.SharedCommitmentPlanArgs{
/// 			CommitmentPlanName: pulumi.String("commitmentPlanName"),
/// 			Kind:               pulumi.String("SpeechServices"),
/// 			Location:           pulumi.String("West US"),
/// 			Properties: &cognitiveservices.CommitmentPlanPropertiesArgs{
/// 				AutoRenew: pulumi.Bool(true),
/// 				Current: &cognitiveservices.CommitmentPeriodArgs{
/// 					Tier: pulumi.String("T1"),
/// 				},
/// 				HostingModel: pulumi.String(cognitiveservices.HostingModelWeb),
/// 				PlanType:     pulumi.String("STT"),
/// 			},
/// 			ResourceGroupName: pulumi.String("resourceGroupName"),
/// 			Sku: &cognitiveservices.SkuArgs{
/// 				Name: pulumi.String("S0"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.cognitiveservices.SharedCommitmentPlan;
/// import com.pulumi.azurenative.cognitiveservices.SharedCommitmentPlanArgs;
/// import com.pulumi.azurenative.cognitiveservices.inputs.CommitmentPlanPropertiesArgs;
/// import com.pulumi.azurenative.cognitiveservices.inputs.CommitmentPeriodArgs;
/// import com.pulumi.azurenative.cognitiveservices.inputs.SkuArgs;
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
///         var sharedCommitmentPlan = new SharedCommitmentPlan("sharedCommitmentPlan", SharedCommitmentPlanArgs.builder()
///             .commitmentPlanName("commitmentPlanName")
///             .kind("SpeechServices")
///             .location("West US")
///             .properties(CommitmentPlanPropertiesArgs.builder()
///                 .autoRenew(true)
///                 .current(CommitmentPeriodArgs.builder()
///                     .tier("T1")
///                     .build())
///                 .hostingModel("Web")
///                 .planType("STT")
///                 .build())
///             .resourceGroupName("resourceGroupName")
///             .sku(SkuArgs.builder()
///                 .name("S0")
///                 .build())
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
/// const sharedCommitmentPlan = new azure_native.cognitiveservices.SharedCommitmentPlan("sharedCommitmentPlan", {
///     commitmentPlanName: "commitmentPlanName",
///     kind: "SpeechServices",
///     location: "West US",
///     properties: {
///         autoRenew: true,
///         current: {
///             tier: "T1",
///         },
///         hostingModel: azure_native.cognitiveservices.HostingModel.Web,
///         planType: "STT",
///     },
///     resourceGroupName: "resourceGroupName",
///     sku: {
///         name: "S0",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// shared_commitment_plan = azure_native.cognitiveservices.SharedCommitmentPlan("sharedCommitmentPlan",
///     commitment_plan_name="commitmentPlanName",
///     kind="SpeechServices",
///     location="West US",
///     properties={
///         "auto_renew": True,
///         "current": {
///             "tier": "T1",
///         },
///         "hosting_model": azure_native.cognitiveservices.HostingModel.WEB,
///         "plan_type": "STT",
///     },
///     resource_group_name="resourceGroupName",
///     sku={
///         "name": "S0",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   sharedCommitmentPlan:
///     type: azure-native:cognitiveservices:SharedCommitmentPlan
///     properties:
///       commitmentPlanName: commitmentPlanName
///       kind: SpeechServices
///       location: West US
///       properties:
///         autoRenew: true
///         current:
///           tier: T1
///         hostingModel: Web
///         planType: STT
///       resourceGroupName: resourceGroupName
///       sku:
///         name: S0
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
/// $ pulumi import azure-native:cognitiveservices:SharedCommitmentPlan commitmentPlanName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.CognitiveServices/commitmentPlans/{commitmentPlanName}
/// ```
class SharedCommitmentPlan extends pulumi.CustomResource {
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

  /// Creates a new [SharedCommitmentPlan].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SharedCommitmentPlan]. {@macro pulumi_cognitiveservices_shared_commitment_plan_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SharedCommitmentPlan(
    String name, {
    SharedCommitmentPlanArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:cognitiveservices:SharedCommitmentPlan',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.etag = registerOutput<String>('etag');
    this.kind = registerOutput<String?>('kind');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.properties = registerOutput<CommitmentPlanPropertiesResponse>('properties');
    this.sku = registerOutput<SkuResponse?>('sku');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}

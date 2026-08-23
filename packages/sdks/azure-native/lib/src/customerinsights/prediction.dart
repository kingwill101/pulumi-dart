import 'package:pulumi/pulumi.dart' as pulumi;
import 'prediction_args.dart';
import 'prediction_response_mappings.dart';
import 'prediction_response_system_generated_entities.dart';

/// The prediction resource format.
///
/// Uses Azure REST API version 2017-04-26. In version 2.x of the Azure Native provider, it used API version 2017-04-26.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Predictions_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var prediction = new AzureNative.CustomerInsights.Prediction("prediction", new()
///     {
///         AutoAnalyze = true,
///         Description =
///         {
///             { "en-us", "sdktest" },
///         },
///         DisplayName =
///         {
///             { "en-us", "sdktest" },
///         },
///         Grades = new[] {},
///         HubName = "sdkTestHub",
///         InvolvedInteractionTypes = new[] {},
///         InvolvedKpiTypes = new[] {},
///         InvolvedRelationships = new[] {},
///         Mappings = new AzureNative.CustomerInsights.Inputs.PredictionMappingsArgs
///         {
///             Grade = "sdktest_Grade",
///             Reason = "sdktest_Reason",
///             Score = "sdktest_Score",
///         },
///         NegativeOutcomeExpression = "Customers.FirstName = 'Mike'",
///         PositiveOutcomeExpression = "Customers.FirstName = 'David'",
///         PredictionName = "sdktest",
///         PrimaryProfileType = "Customers",
///         ResourceGroupName = "TestHubRG",
///         ScopeExpression = "*",
///         ScoreLabel = "score label",
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
/// 		_, err := customerinsights.NewPrediction(ctx, "prediction", &customerinsights.PredictionArgs{
/// 			AutoAnalyze: pulumi.Bool(true),
/// 			Description: pulumi.StringMap{
/// 				"en-us": pulumi.String("sdktest"),
/// 			},
/// 			DisplayName: pulumi.StringMap{
/// 				"en-us": pulumi.String("sdktest"),
/// 			},
/// 			Grades:                   customerinsights.PredictionGradesArray{},
/// 			HubName:                  pulumi.String("sdkTestHub"),
/// 			InvolvedInteractionTypes: pulumi.StringArray{},
/// 			InvolvedKpiTypes:         pulumi.StringArray{},
/// 			InvolvedRelationships:    pulumi.StringArray{},
/// 			Mappings: &customerinsights.PredictionMappingsArgs{
/// 				Grade:  pulumi.String("sdktest_Grade"),
/// 				Reason: pulumi.String("sdktest_Reason"),
/// 				Score:  pulumi.String("sdktest_Score"),
/// 			},
/// 			NegativeOutcomeExpression: pulumi.String("Customers.FirstName = 'Mike'"),
/// 			PositiveOutcomeExpression: pulumi.String("Customers.FirstName = 'David'"),
/// 			PredictionName:            pulumi.String("sdktest"),
/// 			PrimaryProfileType:        pulumi.String("Customers"),
/// 			ResourceGroupName:         pulumi.String("TestHubRG"),
/// 			ScopeExpression:           pulumi.String("*"),
/// 			ScoreLabel:                pulumi.String("score label"),
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
/// resource "azure-native_customerinsights_prediction" "prediction" {
///   auto_analyze = true
///   description = {
///     "en-us" = "sdktest"
///   }
///   display_name = {
///     "en-us" = "sdktest"
///   }
///   hub_name                   = "sdkTestHub"
///   involved_interaction_types = []
///   involved_kpi_types         = []
///   involved_relationships     = []
///   mappings = {
///     grade  = "sdktest_Grade"
///     reason = "sdktest_Reason"
///     score  = "sdktest_Score"
///   }
///   negative_outcome_expression = "Customers.FirstName = 'Mike'"
///   positive_outcome_expression = "Customers.FirstName = 'David'"
///   prediction_name             = "sdktest"
///   primary_profile_type        = "Customers"
///   resource_group_name         = "TestHubRG"
///   scope_expression            = "*"
///   score_label                 = "score label"
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
/// import com.pulumi.azurenative.customerinsights.Prediction;
/// import com.pulumi.azurenative.customerinsights.PredictionArgs;
/// import com.pulumi.azurenative.customerinsights.inputs.PredictionMappingsArgs;
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
///         var prediction = new Prediction("prediction", PredictionArgs.builder()
///             .autoAnalyze(true)
///             .description(Map.of("en-us", "sdktest"))
///             .displayName(Map.of("en-us", "sdktest"))
///             .grades()
///             .hubName("sdkTestHub")
///             .involvedInteractionTypes()
///             .involvedKpiTypes()
///             .involvedRelationships()
///             .mappings(PredictionMappingsArgs.builder()
///                 .grade("sdktest_Grade")
///                 .reason("sdktest_Reason")
///                 .score("sdktest_Score")
///                 .build())
///             .negativeOutcomeExpression("Customers.FirstName = 'Mike'")
///             .positiveOutcomeExpression("Customers.FirstName = 'David'")
///             .predictionName("sdktest")
///             .primaryProfileType("Customers")
///             .resourceGroupName("TestHubRG")
///             .scopeExpression("*")
///             .scoreLabel("score label")
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
/// const prediction = new azure_native.customerinsights.Prediction("prediction", {
///     autoAnalyze: true,
///     description: {
///         "en-us": "sdktest",
///     },
///     displayName: {
///         "en-us": "sdktest",
///     },
///     grades: [],
///     hubName: "sdkTestHub",
///     involvedInteractionTypes: [],
///     involvedKpiTypes: [],
///     involvedRelationships: [],
///     mappings: {
///         grade: "sdktest_Grade",
///         reason: "sdktest_Reason",
///         score: "sdktest_Score",
///     },
///     negativeOutcomeExpression: "Customers.FirstName = 'Mike'",
///     positiveOutcomeExpression: "Customers.FirstName = 'David'",
///     predictionName: "sdktest",
///     primaryProfileType: "Customers",
///     resourceGroupName: "TestHubRG",
///     scopeExpression: "*",
///     scoreLabel: "score label",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// prediction = azure_native.customerinsights.Prediction("prediction",
///     auto_analyze=True,
///     description={
///         "en-us": "sdktest",
///     },
///     display_name={
///         "en-us": "sdktest",
///     },
///     grades=[],
///     hub_name="sdkTestHub",
///     involved_interaction_types=[],
///     involved_kpi_types=[],
///     involved_relationships=[],
///     mappings={
///         "grade": "sdktest_Grade",
///         "reason": "sdktest_Reason",
///         "score": "sdktest_Score",
///     },
///     negative_outcome_expression="Customers.FirstName = 'Mike'",
///     positive_outcome_expression="Customers.FirstName = 'David'",
///     prediction_name="sdktest",
///     primary_profile_type="Customers",
///     resource_group_name="TestHubRG",
///     scope_expression="*",
///     score_label="score label")
///
/// ```
///
/// ```yaml
/// resources:
///   prediction:
///     type: azure-native:customerinsights:Prediction
///     properties:
///       autoAnalyze: true
///       description:
///         en-us: sdktest
///       displayName:
///         en-us: sdktest
///       grades: []
///       hubName: sdkTestHub
///       involvedInteractionTypes: []
///       involvedKpiTypes: []
///       involvedRelationships: []
///       mappings:
///         grade: sdktest_Grade
///         reason: sdktest_Reason
///         score: sdktest_Score
///       negativeOutcomeExpression: Customers.FirstName = 'Mike'
///       positiveOutcomeExpression: Customers.FirstName = 'David'
///       predictionName: sdktest
///       primaryProfileType: Customers
///       resourceGroupName: TestHubRG
///       scopeExpression: '*'
///       scoreLabel: score label
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
/// $ pulumi import azure-native:customerinsights:Prediction sdkTestHub/sdktest /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.CustomerInsights/hubs/{hubName}/predictions/{predictionName}
/// ```
class Prediction extends pulumi.CustomResource {
  /// Whether do auto analyze.
  late final pulumi.Output<bool> autoAnalyze;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Description of the prediction.
  late final pulumi.Output<Map<String, String>?> description;
  /// Display name of the prediction.
  late final pulumi.Output<Map<String, String>?> displayName;
  /// The prediction grades.
  late final pulumi.Output<List<Map<String, dynamic>>?> grades;
  /// Interaction types involved in the prediction.
  late final pulumi.Output<List<String>?> involvedInteractionTypes;
  /// KPI types involved in the prediction.
  late final pulumi.Output<List<String>?> involvedKpiTypes;
  /// Relationships involved in the prediction.
  late final pulumi.Output<List<String>?> involvedRelationships;
  /// Definition of the link mapping of prediction.
  late final pulumi.Output<PredictionResponseMappings> mappings;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// Negative outcome expression.
  late final pulumi.Output<String> negativeOutcomeExpression;
  /// Positive outcome expression.
  late final pulumi.Output<String> positiveOutcomeExpression;
  /// Name of the prediction.
  late final pulumi.Output<String?> predictionName;
  /// Primary profile type.
  late final pulumi.Output<String> primaryProfileType;
  /// Provisioning state.
  late final pulumi.Output<String> provisioningState;
  /// Scope expression.
  late final pulumi.Output<String> scopeExpression;
  /// Score label.
  late final pulumi.Output<String> scoreLabel;
  /// System generated entities.
  late final pulumi.Output<PredictionResponseSystemGeneratedEntities> systemGeneratedEntities;
  /// The hub name.
  late final pulumi.Output<String> tenantId;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [Prediction].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Prediction]. {@macro pulumi_customerinsights_prediction_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Prediction(
    String name, {
    PredictionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:customerinsights:Prediction',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    autoAnalyze = registerOutput<bool>('autoAnalyze');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<Map<String, String>?>('description');
    displayName = registerOutput<Map<String, String>?>('displayName');
    grades = registerOutput<List<Map<String, dynamic>>?>('grades');
    involvedInteractionTypes = registerOutput<List<String>?>('involvedInteractionTypes');
    involvedKpiTypes = registerOutput<List<String>?>('involvedKpiTypes');
    involvedRelationships = registerOutput<List<String>?>('involvedRelationships');
    mappings = registerOutput<PredictionResponseMappings>('mappings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PredictionResponseMappings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    negativeOutcomeExpression = registerOutput<String>('negativeOutcomeExpression');
    positiveOutcomeExpression = registerOutput<String>('positiveOutcomeExpression');
    predictionName = registerOutput<String?>('predictionName');
    primaryProfileType = registerOutput<String>('primaryProfileType');
    provisioningState = registerOutput<String>('provisioningState');
    scopeExpression = registerOutput<String>('scopeExpression');
    scoreLabel = registerOutput<String>('scoreLabel');
    systemGeneratedEntities = registerOutput<PredictionResponseSystemGeneratedEntities>('systemGeneratedEntities', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PredictionResponseSystemGeneratedEntities.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tenantId = registerOutput<String>('tenantId');
    type = registerOutput<String>('type');
  }
}

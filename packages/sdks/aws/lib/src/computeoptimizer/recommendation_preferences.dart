import 'package:pulumi/pulumi.dart' as pulumi;
import 'recommendation_preferences_args.dart';
import 'recommendation_preferences_external_metrics_preference.dart';
import 'recommendation_preferences_preferred_resource.dart';
import 'recommendation_preferences_scope.dart';
import 'recommendation_preferences_state.dart';
import 'recommendation_preferences_utilization_preference.dart';

/// Manages AWS Compute Optimizer recommendation preferences.
///
/// ## Example Usage
///
/// ### Lookback Period Preference
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.computeoptimizer.RecommendationPreferences("example", {
///     resourceType: "Ec2Instance",
///     scope: {
///         name: "AccountId",
///         value: "123456789012",
///     },
///     lookBackPeriod: "DAYS_32",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.computeoptimizer.RecommendationPreferences("example",
///     resource_type="Ec2Instance",
///     scope={
///         "name": "AccountId",
///         "value": "123456789012",
///     },
///     look_back_period="DAYS_32")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.ComputeOptimizer.RecommendationPreferences("example", new()
///     {
///         ResourceType = "Ec2Instance",
///         Scope = new Aws.ComputeOptimizer.Inputs.RecommendationPreferencesScopeArgs
///         {
///             Name = "AccountId",
///             Value = "123456789012",
///         },
///         LookBackPeriod = "DAYS_32",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/computeoptimizer"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := computeoptimizer.NewRecommendationPreferences(ctx, "example", &computeoptimizer.RecommendationPreferencesArgs{
/// 			ResourceType: pulumi.String("Ec2Instance"),
/// 			Scope: &computeoptimizer.RecommendationPreferencesScopeArgs{
/// 				Name:  pulumi.String("AccountId"),
/// 				Value: pulumi.String("123456789012"),
/// 			},
/// 			LookBackPeriod: pulumi.String("DAYS_32"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.computeoptimizer.RecommendationPreferences;
/// import com.pulumi.aws.computeoptimizer.RecommendationPreferencesArgs;
/// import com.pulumi.aws.computeoptimizer.inputs.RecommendationPreferencesScopeArgs;
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
///         var example = new RecommendationPreferences("example", RecommendationPreferencesArgs.builder()
///             .resourceType("Ec2Instance")
///             .scope(RecommendationPreferencesScopeArgs.builder()
///                 .name("AccountId")
///                 .value("123456789012")
///                 .build())
///             .lookBackPeriod("DAYS_32")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:computeoptimizer:RecommendationPreferences
///     properties:
///       resourceType: Ec2Instance
///       scope:
///         name: AccountId
///         value: '123456789012'
///       lookBackPeriod: DAYS_32
/// ```
///
///
/// ### Multiple Preferences
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.computeoptimizer.RecommendationPreferences("example", {
///     resourceType: "Ec2Instance",
///     scope: {
///         name: "AccountId",
///         value: "123456789012",
///     },
///     enhancedInfrastructureMetrics: "Active",
///     externalMetricsPreference: {
///         source: "Datadog",
///     },
///     preferredResources: [{
///         includeLists: [
///             "m5.xlarge",
///             "r5",
///         ],
///         name: "Ec2InstanceTypes",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.computeoptimizer.RecommendationPreferences("example",
///     resource_type="Ec2Instance",
///     scope={
///         "name": "AccountId",
///         "value": "123456789012",
///     },
///     enhanced_infrastructure_metrics="Active",
///     external_metrics_preference={
///         "source": "Datadog",
///     },
///     preferred_resources=[{
///         "include_lists": [
///             "m5.xlarge",
///             "r5",
///         ],
///         "name": "Ec2InstanceTypes",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.ComputeOptimizer.RecommendationPreferences("example", new()
///     {
///         ResourceType = "Ec2Instance",
///         Scope = new Aws.ComputeOptimizer.Inputs.RecommendationPreferencesScopeArgs
///         {
///             Name = "AccountId",
///             Value = "123456789012",
///         },
///         EnhancedInfrastructureMetrics = "Active",
///         ExternalMetricsPreference = new Aws.ComputeOptimizer.Inputs.RecommendationPreferencesExternalMetricsPreferenceArgs
///         {
///             Source = "Datadog",
///         },
///         PreferredResources = new[]
///         {
///             new Aws.ComputeOptimizer.Inputs.RecommendationPreferencesPreferredResourceArgs
///             {
///                 IncludeLists = new[]
///                 {
///                     "m5.xlarge",
///                     "r5",
///                 },
///                 Name = "Ec2InstanceTypes",
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/computeoptimizer"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := computeoptimizer.NewRecommendationPreferences(ctx, "example", &computeoptimizer.RecommendationPreferencesArgs{
/// 			ResourceType: pulumi.String("Ec2Instance"),
/// 			Scope: &computeoptimizer.RecommendationPreferencesScopeArgs{
/// 				Name:  pulumi.String("AccountId"),
/// 				Value: pulumi.String("123456789012"),
/// 			},
/// 			EnhancedInfrastructureMetrics: pulumi.String("Active"),
/// 			ExternalMetricsPreference: &computeoptimizer.RecommendationPreferencesExternalMetricsPreferenceArgs{
/// 				Source: pulumi.String("Datadog"),
/// 			},
/// 			PreferredResources: computeoptimizer.RecommendationPreferencesPreferredResourceArray{
/// 				&computeoptimizer.RecommendationPreferencesPreferredResourceArgs{
/// 					IncludeLists: pulumi.StringArray{
/// 						pulumi.String("m5.xlarge"),
/// 						pulumi.String("r5"),
/// 					},
/// 					Name: pulumi.String("Ec2InstanceTypes"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.computeoptimizer.RecommendationPreferences;
/// import com.pulumi.aws.computeoptimizer.RecommendationPreferencesArgs;
/// import com.pulumi.aws.computeoptimizer.inputs.RecommendationPreferencesScopeArgs;
/// import com.pulumi.aws.computeoptimizer.inputs.RecommendationPreferencesExternalMetricsPreferenceArgs;
/// import com.pulumi.aws.computeoptimizer.inputs.RecommendationPreferencesPreferredResourceArgs;
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
///         var example = new RecommendationPreferences("example", RecommendationPreferencesArgs.builder()
///             .resourceType("Ec2Instance")
///             .scope(RecommendationPreferencesScopeArgs.builder()
///                 .name("AccountId")
///                 .value("123456789012")
///                 .build())
///             .enhancedInfrastructureMetrics("Active")
///             .externalMetricsPreference(RecommendationPreferencesExternalMetricsPreferenceArgs.builder()
///                 .source("Datadog")
///                 .build())
///             .preferredResources(RecommendationPreferencesPreferredResourceArgs.builder()
///                 .includeLists(
///                     "m5.xlarge",
///                     "r5")
///                 .name("Ec2InstanceTypes")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:computeoptimizer:RecommendationPreferences
///     properties:
///       resourceType: Ec2Instance
///       scope:
///         name: AccountId
///         value: '123456789012'
///       enhancedInfrastructureMetrics: Active
///       externalMetricsPreference:
///         source: Datadog
///       preferredResources:
///         - includeLists:
///             - m5.xlarge
///             - r5
///           name: Ec2InstanceTypes
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import recommendation preferences using the resource type, scope name and scope value. For example:
///
/// ```sh
/// $ pulumi import aws:computeoptimizer/recommendationPreferences:RecommendationPreferences example Ec2Instance,AccountId,123456789012
/// ```
class RecommendationPreferences extends pulumi.CustomResource {
  /// The status of the enhanced infrastructure metrics recommendation preference. Valid values: `Active`, `Inactive`.
  late final pulumi.Output<String?> enhancedInfrastructureMetrics;
  /// The provider of the external metrics recommendation preference. See External Metrics Preference below.
  late final pulumi.Output<RecommendationPreferencesExternalMetricsPreference?> externalMetricsPreference;
  /// The status of the inferred workload types recommendation preference. Valid values: `Active`, `Inactive`.
  late final pulumi.Output<String?> inferredWorkloadTypes;
  /// The preference to control the number of days the utilization metrics of the AWS resource are analyzed. Valid values: `DAYS_14`, `DAYS_32`, `DAYS_93`.
  late final pulumi.Output<String> lookBackPeriod;
  /// The preference to control which resource type values are considered when generating rightsizing recommendations. See Preferred Resources below.
  late final pulumi.Output<List<RecommendationPreferencesPreferredResource>?> preferredResources;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The target resource type of the recommendation preferences. Valid values: `Ec2Instance`, `AutoScalingGroup`, `RdsDBInstance`, `AuroraDBClusterStorage`.
  late final pulumi.Output<String> resourceType;
  /// The status of the savings estimation mode preference. Valid values: `AfterDiscounts`, `BeforeDiscounts`.
  late final pulumi.Output<String?> savingsEstimationMode;
  /// The scope of the recommendation preferences. See Scope below.
  late final pulumi.Output<RecommendationPreferencesScope> scope;
  /// The preference to control the resource’s CPU utilization threshold, CPU utilization headroom, and memory utilization headroom. See Utilization Preferences below.
  late final pulumi.Output<List<RecommendationPreferencesUtilizationPreference>?> utilizationPreferences;

  /// Creates a new [RecommendationPreferences].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RecommendationPreferences]. {@macro pulumi_computeoptimizer_recommendation_preferences_recommendation_preferences_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RecommendationPreferences(
    String name, {
    RecommendationPreferencesArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:computeoptimizer/recommendationPreferences:RecommendationPreferences',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.enhancedInfrastructureMetrics = registerOutput<String?>('enhancedInfrastructureMetrics');
    this.externalMetricsPreference = registerOutput<RecommendationPreferencesExternalMetricsPreference?>('externalMetricsPreference');
    this.inferredWorkloadTypes = registerOutput<String?>('inferredWorkloadTypes');
    this.lookBackPeriod = registerOutput<String>('lookBackPeriod');
    this.preferredResources = registerOutput<List<RecommendationPreferencesPreferredResource>?>('preferredResources');
    this.region = registerOutput<String>('region');
    this.resourceType = registerOutput<String>('resourceType');
    this.savingsEstimationMode = registerOutput<String?>('savingsEstimationMode');
    this.scope = registerOutput<RecommendationPreferencesScope>('scope');
    this.utilizationPreferences = registerOutput<List<RecommendationPreferencesUtilizationPreference>?>('utilizationPreferences');
  }

  /// Gets an existing [RecommendationPreferences] resource's state with the given [name] and [id].
  static RecommendationPreferences get(
    String name,
    pulumi.Input<String> id, {
    RecommendationPreferencesState? state,
  }) {
    return RecommendationPreferences._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RecommendationPreferences._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:computeoptimizer/recommendationPreferences:RecommendationPreferences',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.enhancedInfrastructureMetrics = registerOutput<String?>('enhancedInfrastructureMetrics');
    this.externalMetricsPreference = registerOutput<RecommendationPreferencesExternalMetricsPreference?>('externalMetricsPreference');
    this.inferredWorkloadTypes = registerOutput<String?>('inferredWorkloadTypes');
    this.lookBackPeriod = registerOutput<String>('lookBackPeriod');
    this.preferredResources = registerOutput<List<RecommendationPreferencesPreferredResource>?>('preferredResources');
    this.region = registerOutput<String>('region');
    this.resourceType = registerOutput<String>('resourceType');
    this.savingsEstimationMode = registerOutput<String?>('savingsEstimationMode');
    this.scope = registerOutput<RecommendationPreferencesScope>('scope');
    this.utilizationPreferences = registerOutput<List<RecommendationPreferencesUtilizationPreference>?>('utilizationPreferences');
  }
}

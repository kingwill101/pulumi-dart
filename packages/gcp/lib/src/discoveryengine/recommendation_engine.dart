import 'package:pulumi/pulumi.dart' as pulumi;
import 'recommendation_engine_args.dart';
import 'recommendation_engine_common_config.dart';
import 'recommendation_engine_media_recommendation_engine_config.dart';

/// Vertex AI Search recommendation apps.
///
///
/// To get more information about RecommendationEngine, see:
///
/// * [API documentation](https://cloud.google.com/generative-ai-app-builder/docs/reference/rest/v1/projects.locations.collections.engines)
/// * How-to Guides
/// * [Create a Recommendation Engine](https://cloud.google.com/generative-ai-app-builder/docs/create-generic-recommendations-app)
///
/// ## Example Usage
///
/// ### Discoveryengine Recommendationengine Generic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const generic = new gcp.discoveryengine.DataStore("generic", {
///     location: "global",
///     dataStoreId: "recommendation-datastore-id",
///     displayName: "tf-test-structured-datastore",
///     industryVertical: "GENERIC",
///     contentConfig: "NO_CONTENT",
///     solutionTypes: ["SOLUTION_TYPE_RECOMMENDATION"],
///     createAdvancedSiteSearch: false,
///     skipDefaultSchemaCreation: false,
/// });
/// const genericRecommendationEngine = new gcp.discoveryengine.RecommendationEngine("generic", {
///     engineId: "recommendation-engine-id",
///     location: generic.location,
///     displayName: "Example Recommendation Engine",
///     dataStoreIds: [generic.dataStoreId],
///     industryVertical: "GENERIC",
///     commonConfig: {
///         companyName: "test-company",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// generic = gcp.discoveryengine.DataStore("generic",
///     location="global",
///     data_store_id="recommendation-datastore-id",
///     display_name="tf-test-structured-datastore",
///     industry_vertical="GENERIC",
///     content_config="NO_CONTENT",
///     solution_types=["SOLUTION_TYPE_RECOMMENDATION"],
///     create_advanced_site_search=False,
///     skip_default_schema_creation=False)
/// generic_recommendation_engine = gcp.discoveryengine.RecommendationEngine("generic",
///     engine_id="recommendation-engine-id",
///     location=generic.location,
///     display_name="Example Recommendation Engine",
///     data_store_ids=[generic.data_store_id],
///     industry_vertical="GENERIC",
///     common_config={
///         "company_name": "test-company",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var generic = new Gcp.DiscoveryEngine.DataStore("generic", new()
///     {
///         Location = "global",
///         DataStoreId = "recommendation-datastore-id",
///         DisplayName = "tf-test-structured-datastore",
///         IndustryVertical = "GENERIC",
///         ContentConfig = "NO_CONTENT",
///         SolutionTypes = new[]
///         {
///             "SOLUTION_TYPE_RECOMMENDATION",
///         },
///         CreateAdvancedSiteSearch = false,
///         SkipDefaultSchemaCreation = false,
///     });
///
///     var genericRecommendationEngine = new Gcp.DiscoveryEngine.RecommendationEngine("generic", new()
///     {
///         EngineId = "recommendation-engine-id",
///         Location = generic.Location,
///         DisplayName = "Example Recommendation Engine",
///         DataStoreIds = new[]
///         {
///             generic.DataStoreId,
///         },
///         IndustryVertical = "GENERIC",
///         CommonConfig = new Gcp.DiscoveryEngine.Inputs.RecommendationEngineCommonConfigArgs
///         {
///             CompanyName = "test-company",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/discoveryengine"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		generic, err := discoveryengine.NewDataStore(ctx, "generic", &discoveryengine.DataStoreArgs{
/// 			Location:         pulumi.String("global"),
/// 			DataStoreId:      pulumi.String("recommendation-datastore-id"),
/// 			DisplayName:      pulumi.String("tf-test-structured-datastore"),
/// 			IndustryVertical: pulumi.String("GENERIC"),
/// 			ContentConfig:    pulumi.String("NO_CONTENT"),
/// 			SolutionTypes: pulumi.StringArray{
/// 				pulumi.String("SOLUTION_TYPE_RECOMMENDATION"),
/// 			},
/// 			CreateAdvancedSiteSearch:  pulumi.Bool(false),
/// 			SkipDefaultSchemaCreation: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = discoveryengine.NewRecommendationEngine(ctx, "generic", &discoveryengine.RecommendationEngineArgs{
/// 			EngineId:    pulumi.String("recommendation-engine-id"),
/// 			Location:    generic.Location,
/// 			DisplayName: pulumi.String("Example Recommendation Engine"),
/// 			DataStoreIds: pulumi.StringArray{
/// 				generic.DataStoreId,
/// 			},
/// 			IndustryVertical: pulumi.String("GENERIC"),
/// 			CommonConfig: &discoveryengine.RecommendationEngineCommonConfigArgs{
/// 				CompanyName: pulumi.String("test-company"),
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
/// import com.pulumi.gcp.discoveryengine.DataStore;
/// import com.pulumi.gcp.discoveryengine.DataStoreArgs;
/// import com.pulumi.gcp.discoveryengine.RecommendationEngine;
/// import com.pulumi.gcp.discoveryengine.RecommendationEngineArgs;
/// import com.pulumi.gcp.discoveryengine.inputs.RecommendationEngineCommonConfigArgs;
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
///         var generic = new DataStore("generic", DataStoreArgs.builder()
///             .location("global")
///             .dataStoreId("recommendation-datastore-id")
///             .displayName("tf-test-structured-datastore")
///             .industryVertical("GENERIC")
///             .contentConfig("NO_CONTENT")
///             .solutionTypes("SOLUTION_TYPE_RECOMMENDATION")
///             .createAdvancedSiteSearch(false)
///             .skipDefaultSchemaCreation(false)
///             .build());
///
///         var genericRecommendationEngine = new RecommendationEngine("genericRecommendationEngine", RecommendationEngineArgs.builder()
///             .engineId("recommendation-engine-id")
///             .location(generic.location())
///             .displayName("Example Recommendation Engine")
///             .dataStoreIds(generic.dataStoreId())
///             .industryVertical("GENERIC")
///             .commonConfig(RecommendationEngineCommonConfigArgs.builder()
///                 .companyName("test-company")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   generic:
///     type: gcp:discoveryengine:DataStore
///     properties:
///       location: global
///       dataStoreId: recommendation-datastore-id
///       displayName: tf-test-structured-datastore
///       industryVertical: GENERIC
///       contentConfig: NO_CONTENT
///       solutionTypes:
///         - SOLUTION_TYPE_RECOMMENDATION
///       createAdvancedSiteSearch: false
///       skipDefaultSchemaCreation: false
///   genericRecommendationEngine:
///     type: gcp:discoveryengine:RecommendationEngine
///     name: generic
///     properties:
///       engineId: recommendation-engine-id
///       location: ${generic.location}
///       displayName: Example Recommendation Engine
///       dataStoreIds:
///         - ${generic.dataStoreId}
///       industryVertical: GENERIC
///       commonConfig:
///         companyName: test-company
/// ```
///
/// ### Discoveryengine Recommendationengine Media
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const media = new gcp.discoveryengine.DataStore("media", {
///     location: "global",
///     dataStoreId: "recommendation-datastore-id",
///     displayName: "tf-test-structured-datastore",
///     industryVertical: "MEDIA",
///     contentConfig: "NO_CONTENT",
///     solutionTypes: ["SOLUTION_TYPE_RECOMMENDATION"],
///     createAdvancedSiteSearch: false,
///     skipDefaultSchemaCreation: false,
/// });
/// const mediaRecommendationEngine = new gcp.discoveryengine.RecommendationEngine("media", {
///     engineId: "recommendation-engine-id",
///     location: media.location,
///     displayName: "Example Media Recommendation Engine",
///     dataStoreIds: [media.dataStoreId],
///     industryVertical: "MEDIA",
///     mediaRecommendationEngineConfig: {
///         type: "recommended-for-you",
///         optimizationObjective: "ctr",
///         trainingState: "PAUSED",
///         engineFeaturesConfig: {
///             recommendedForYouConfig: {
///                 contextEventType: "generic",
///             },
///         },
///     },
///     commonConfig: {
///         companyName: "test-company",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// media = gcp.discoveryengine.DataStore("media",
///     location="global",
///     data_store_id="recommendation-datastore-id",
///     display_name="tf-test-structured-datastore",
///     industry_vertical="MEDIA",
///     content_config="NO_CONTENT",
///     solution_types=["SOLUTION_TYPE_RECOMMENDATION"],
///     create_advanced_site_search=False,
///     skip_default_schema_creation=False)
/// media_recommendation_engine = gcp.discoveryengine.RecommendationEngine("media",
///     engine_id="recommendation-engine-id",
///     location=media.location,
///     display_name="Example Media Recommendation Engine",
///     data_store_ids=[media.data_store_id],
///     industry_vertical="MEDIA",
///     media_recommendation_engine_config={
///         "type": "recommended-for-you",
///         "optimization_objective": "ctr",
///         "training_state": "PAUSED",
///         "engine_features_config": {
///             "recommended_for_you_config": {
///                 "context_event_type": "generic",
///             },
///         },
///     },
///     common_config={
///         "company_name": "test-company",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var media = new Gcp.DiscoveryEngine.DataStore("media", new()
///     {
///         Location = "global",
///         DataStoreId = "recommendation-datastore-id",
///         DisplayName = "tf-test-structured-datastore",
///         IndustryVertical = "MEDIA",
///         ContentConfig = "NO_CONTENT",
///         SolutionTypes = new[]
///         {
///             "SOLUTION_TYPE_RECOMMENDATION",
///         },
///         CreateAdvancedSiteSearch = false,
///         SkipDefaultSchemaCreation = false,
///     });
///
///     var mediaRecommendationEngine = new Gcp.DiscoveryEngine.RecommendationEngine("media", new()
///     {
///         EngineId = "recommendation-engine-id",
///         Location = media.Location,
///         DisplayName = "Example Media Recommendation Engine",
///         DataStoreIds = new[]
///         {
///             media.DataStoreId,
///         },
///         IndustryVertical = "MEDIA",
///         MediaRecommendationEngineConfig = new Gcp.DiscoveryEngine.Inputs.RecommendationEngineMediaRecommendationEngineConfigArgs
///         {
///             Type = "recommended-for-you",
///             OptimizationObjective = "ctr",
///             TrainingState = "PAUSED",
///             EngineFeaturesConfig = new Gcp.DiscoveryEngine.Inputs.RecommendationEngineMediaRecommendationEngineConfigEngineFeaturesConfigArgs
///             {
///                 RecommendedForYouConfig = new Gcp.DiscoveryEngine.Inputs.RecommendationEngineMediaRecommendationEngineConfigEngineFeaturesConfigRecommendedForYouConfigArgs
///                 {
///                     ContextEventType = "generic",
///                 },
///             },
///         },
///         CommonConfig = new Gcp.DiscoveryEngine.Inputs.RecommendationEngineCommonConfigArgs
///         {
///             CompanyName = "test-company",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/discoveryengine"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		media, err := discoveryengine.NewDataStore(ctx, "media", &discoveryengine.DataStoreArgs{
/// 			Location:         pulumi.String("global"),
/// 			DataStoreId:      pulumi.String("recommendation-datastore-id"),
/// 			DisplayName:      pulumi.String("tf-test-structured-datastore"),
/// 			IndustryVertical: pulumi.String("MEDIA"),
/// 			ContentConfig:    pulumi.String("NO_CONTENT"),
/// 			SolutionTypes: pulumi.StringArray{
/// 				pulumi.String("SOLUTION_TYPE_RECOMMENDATION"),
/// 			},
/// 			CreateAdvancedSiteSearch:  pulumi.Bool(false),
/// 			SkipDefaultSchemaCreation: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = discoveryengine.NewRecommendationEngine(ctx, "media", &discoveryengine.RecommendationEngineArgs{
/// 			EngineId:    pulumi.String("recommendation-engine-id"),
/// 			Location:    media.Location,
/// 			DisplayName: pulumi.String("Example Media Recommendation Engine"),
/// 			DataStoreIds: pulumi.StringArray{
/// 				media.DataStoreId,
/// 			},
/// 			IndustryVertical: pulumi.String("MEDIA"),
/// 			MediaRecommendationEngineConfig: &discoveryengine.RecommendationEngineMediaRecommendationEngineConfigArgs{
/// 				Type:                  pulumi.String("recommended-for-you"),
/// 				OptimizationObjective: pulumi.String("ctr"),
/// 				TrainingState:         pulumi.String("PAUSED"),
/// 				EngineFeaturesConfig: &discoveryengine.RecommendationEngineMediaRecommendationEngineConfigEngineFeaturesConfigArgs{
/// 					RecommendedForYouConfig: &discoveryengine.RecommendationEngineMediaRecommendationEngineConfigEngineFeaturesConfigRecommendedForYouConfigArgs{
/// 						ContextEventType: pulumi.String("generic"),
/// 					},
/// 				},
/// 			},
/// 			CommonConfig: &discoveryengine.RecommendationEngineCommonConfigArgs{
/// 				CompanyName: pulumi.String("test-company"),
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
/// import com.pulumi.gcp.discoveryengine.DataStore;
/// import com.pulumi.gcp.discoveryengine.DataStoreArgs;
/// import com.pulumi.gcp.discoveryengine.RecommendationEngine;
/// import com.pulumi.gcp.discoveryengine.RecommendationEngineArgs;
/// import com.pulumi.gcp.discoveryengine.inputs.RecommendationEngineMediaRecommendationEngineConfigArgs;
/// import com.pulumi.gcp.discoveryengine.inputs.RecommendationEngineMediaRecommendationEngineConfigEngineFeaturesConfigArgs;
/// import com.pulumi.gcp.discoveryengine.inputs.RecommendationEngineMediaRecommendationEngineConfigEngineFeaturesConfigRecommendedForYouConfigArgs;
/// import com.pulumi.gcp.discoveryengine.inputs.RecommendationEngineCommonConfigArgs;
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
///         var media = new DataStore("media", DataStoreArgs.builder()
///             .location("global")
///             .dataStoreId("recommendation-datastore-id")
///             .displayName("tf-test-structured-datastore")
///             .industryVertical("MEDIA")
///             .contentConfig("NO_CONTENT")
///             .solutionTypes("SOLUTION_TYPE_RECOMMENDATION")
///             .createAdvancedSiteSearch(false)
///             .skipDefaultSchemaCreation(false)
///             .build());
///
///         var mediaRecommendationEngine = new RecommendationEngine("mediaRecommendationEngine", RecommendationEngineArgs.builder()
///             .engineId("recommendation-engine-id")
///             .location(media.location())
///             .displayName("Example Media Recommendation Engine")
///             .dataStoreIds(media.dataStoreId())
///             .industryVertical("MEDIA")
///             .mediaRecommendationEngineConfig(RecommendationEngineMediaRecommendationEngineConfigArgs.builder()
///                 .type("recommended-for-you")
///                 .optimizationObjective("ctr")
///                 .trainingState("PAUSED")
///                 .engineFeaturesConfig(RecommendationEngineMediaRecommendationEngineConfigEngineFeaturesConfigArgs.builder()
///                     .recommendedForYouConfig(RecommendationEngineMediaRecommendationEngineConfigEngineFeaturesConfigRecommendedForYouConfigArgs.builder()
///                         .contextEventType("generic")
///                         .build())
///                     .build())
///                 .build())
///             .commonConfig(RecommendationEngineCommonConfigArgs.builder()
///                 .companyName("test-company")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   media:
///     type: gcp:discoveryengine:DataStore
///     properties:
///       location: global
///       dataStoreId: recommendation-datastore-id
///       displayName: tf-test-structured-datastore
///       industryVertical: MEDIA
///       contentConfig: NO_CONTENT
///       solutionTypes:
///         - SOLUTION_TYPE_RECOMMENDATION
///       createAdvancedSiteSearch: false
///       skipDefaultSchemaCreation: false
///   mediaRecommendationEngine:
///     type: gcp:discoveryengine:RecommendationEngine
///     name: media
///     properties:
///       engineId: recommendation-engine-id
///       location: ${media.location}
///       displayName: Example Media Recommendation Engine
///       dataStoreIds:
///         - ${media.dataStoreId}
///       industryVertical: MEDIA
///       mediaRecommendationEngineConfig:
///         type: recommended-for-you
///         optimizationObjective: ctr
///         trainingState: PAUSED
///         engineFeaturesConfig:
///           recommendedForYouConfig:
///             contextEventType: generic
///       commonConfig:
///         companyName: test-company
/// ```
///
///
/// ## Import
///
/// RecommendationEngine can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/collections/default_collection/engines/{{engine_id}}`
///
/// * `{{project}}/{{location}}/{{engine_id}}`
///
/// * `{{location}}/{{engine_id}}`
///
/// When using the `pulumi import` command, RecommendationEngine can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:discoveryengine/recommendationEngine:RecommendationEngine default projects/{{project}}/locations/{{location}}/collections/default_collection/engines/{{engine_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:discoveryengine/recommendationEngine:RecommendationEngine default {{project}}/{{location}}/{{engine_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:discoveryengine/recommendationEngine:RecommendationEngine default {{location}}/{{engine_id}}
/// ```
class RecommendationEngine extends pulumi.CustomResource {
  /// Common config spec that specifies the metadata of the engine.
  /// Structure is documented below.
  late final pulumi.Output<RecommendationEngineCommonConfig?> commonConfig;

  /// Timestamp the Engine was created at.
  late final pulumi.Output<String> createTime;

  /// The data stores associated with this engine. For SOLUTION_TYPE_RECOMMENDATION type of engines, they can only associate with at most one data store.
  late final pulumi.Output<List<String>> dataStoreIds;

  /// Required. The display name of the engine. Should be human readable. UTF-8 encoded string with limit of 1024 characters.
  late final pulumi.Output<String> displayName;

  /// Unique ID to use for Recommendation Engine.
  late final pulumi.Output<String> engineId;

  /// The industry vertical that the engine registers. The restriction of the Engine industry vertical is based on DataStore: If unspecified, default to GENERIC. Vertical on Engine has to match vertical of the DataStore liniked to the engine.
  /// Default value is `GENERIC`.
  /// Possible values are: `GENERIC`, `MEDIA`.
  late final pulumi.Output<String?> industryVertical;

  /// The geographic location where the data store should reside. The value can
  /// only be one of "global", "us" and "eu".
  late final pulumi.Output<String> location;

  /// Configurations for a Media Recommendation Engine. Only applicable on the data stores
  /// with SOLUTION_TYPE_RECOMMENDATION solution type and MEDIA industry vertical.
  /// Structure is documented below.
  late final pulumi.Output<RecommendationEngineMediaRecommendationEngineConfig?>
  mediaRecommendationEngineConfig;

  /// The unique full resource name of the recommendation engine. Values are of the format
  /// `projects/{project}/locations/{location}/collections/{collection}/engines/{engine_id}`.
  /// This field must be a UTF-8 encoded string with a length limit of 1024 characters.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Timestamp the Engine was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [RecommendationEngine].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RecommendationEngine]. {@macro pulumi_discoveryengine_recommendation_engine_recommendation_engine_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RecommendationEngine(
    String name, {
    RecommendationEngineArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:discoveryengine/recommendationEngine:RecommendationEngine',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.commonConfig = registerOutput<RecommendationEngineCommonConfig?>(
      'commonConfig',
    );
    this.createTime = registerOutput<String>('createTime');
    this.dataStoreIds = registerOutput<List<String>>('dataStoreIds');
    this.displayName = registerOutput<String>('displayName');
    this.engineId = registerOutput<String>('engineId');
    this.industryVertical = registerOutput<String?>('industryVertical');
    this.location = registerOutput<String>('location');
    this.mediaRecommendationEngineConfig =
        registerOutput<RecommendationEngineMediaRecommendationEngineConfig?>(
          'mediaRecommendationEngineConfig',
        );
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.updateTime = registerOutput<String>('updateTime');
  }
}

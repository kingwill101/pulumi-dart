import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_feature_store_entity_type_feature_args.dart';

/// Feature Metadata information that describes an attribute of an entity type. For example, apple is an entity type, and color is a feature that describes apple.
///
///
/// To get more information about FeaturestoreEntitytypeFeature, see:
///
/// * [API documentation](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.featurestores.entityTypes.features)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/vertex-ai/docs)
///
/// ## Example Usage
///
/// ### Vertex Ai Featurestore Entitytype Feature
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const featurestore = new gcp.vertex.AiFeatureStore("featurestore", {
///     name: "terraform",
///     labels: {
///         foo: "bar",
///     },
///     region: "us-central1",
///     onlineServingConfig: {
///         fixedNodeCount: 2,
///     },
/// });
/// const entity = new gcp.vertex.AiFeatureStoreEntityType("entity", {
///     name: "terraform",
///     labels: {
///         foo: "bar",
///     },
///     featurestore: featurestore.id,
/// });
/// const feature = new gcp.vertex.AiFeatureStoreEntityTypeFeature("feature", {
///     name: "terraform",
///     labels: {
///         foo: "bar",
///     },
///     entitytype: entity.id,
///     valueType: "INT64_ARRAY",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// featurestore = gcp.vertex.AiFeatureStore("featurestore",
///     name="terraform",
///     labels={
///         "foo": "bar",
///     },
///     region="us-central1",
///     online_serving_config={
///         "fixed_node_count": 2,
///     })
/// entity = gcp.vertex.AiFeatureStoreEntityType("entity",
///     name="terraform",
///     labels={
///         "foo": "bar",
///     },
///     featurestore=featurestore.id)
/// feature = gcp.vertex.AiFeatureStoreEntityTypeFeature("feature",
///     name="terraform",
///     labels={
///         "foo": "bar",
///     },
///     entitytype=entity.id,
///     value_type="INT64_ARRAY")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var featurestore = new Gcp.Vertex.AiFeatureStore("featurestore", new()
///     {
///         Name = "terraform",
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///         Region = "us-central1",
///         OnlineServingConfig = new Gcp.Vertex.Inputs.AiFeatureStoreOnlineServingConfigArgs
///         {
///             FixedNodeCount = 2,
///         },
///     });
///
///     var entity = new Gcp.Vertex.AiFeatureStoreEntityType("entity", new()
///     {
///         Name = "terraform",
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///         Featurestore = featurestore.Id,
///     });
///
///     var feature = new Gcp.Vertex.AiFeatureStoreEntityTypeFeature("feature", new()
///     {
///         Name = "terraform",
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///         Entitytype = entity.Id,
///         ValueType = "INT64_ARRAY",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		featurestore, err := vertex.NewAiFeatureStore(ctx, "featurestore", &vertex.AiFeatureStoreArgs{
/// 			Name: pulumi.String("terraform"),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			Region: pulumi.String("us-central1"),
/// 			OnlineServingConfig: &vertex.AiFeatureStoreOnlineServingConfigArgs{
/// 				FixedNodeCount: pulumi.Int(2),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		entity, err := vertex.NewAiFeatureStoreEntityType(ctx, "entity", &vertex.AiFeatureStoreEntityTypeArgs{
/// 			Name: pulumi.String("terraform"),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			Featurestore: featurestore.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vertex.NewAiFeatureStoreEntityTypeFeature(ctx, "feature", &vertex.AiFeatureStoreEntityTypeFeatureArgs{
/// 			Name: pulumi.String("terraform"),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			Entitytype: entity.ID(),
/// 			ValueType:  pulumi.String("INT64_ARRAY"),
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
/// import com.pulumi.gcp.vertex.AiFeatureStore;
/// import com.pulumi.gcp.vertex.AiFeatureStoreArgs;
/// import com.pulumi.gcp.vertex.inputs.AiFeatureStoreOnlineServingConfigArgs;
/// import com.pulumi.gcp.vertex.AiFeatureStoreEntityType;
/// import com.pulumi.gcp.vertex.AiFeatureStoreEntityTypeArgs;
/// import com.pulumi.gcp.vertex.AiFeatureStoreEntityTypeFeature;
/// import com.pulumi.gcp.vertex.AiFeatureStoreEntityTypeFeatureArgs;
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
///         var featurestore = new AiFeatureStore("featurestore", AiFeatureStoreArgs.builder()
///             .name("terraform")
///             .labels(Map.of("foo", "bar"))
///             .region("us-central1")
///             .onlineServingConfig(AiFeatureStoreOnlineServingConfigArgs.builder()
///                 .fixedNodeCount(2)
///                 .build())
///             .build());
///
///         var entity = new AiFeatureStoreEntityType("entity", AiFeatureStoreEntityTypeArgs.builder()
///             .name("terraform")
///             .labels(Map.of("foo", "bar"))
///             .featurestore(featurestore.id())
///             .build());
///
///         var feature = new AiFeatureStoreEntityTypeFeature("feature", AiFeatureStoreEntityTypeFeatureArgs.builder()
///             .name("terraform")
///             .labels(Map.of("foo", "bar"))
///             .entitytype(entity.id())
///             .valueType("INT64_ARRAY")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   featurestore:
///     type: gcp:vertex:AiFeatureStore
///     properties:
///       name: terraform
///       labels:
///         foo: bar
///       region: us-central1
///       onlineServingConfig:
///         fixedNodeCount: 2
///   entity:
///     type: gcp:vertex:AiFeatureStoreEntityType
///     properties:
///       name: terraform
///       labels:
///         foo: bar
///       featurestore: ${featurestore.id}
///   feature:
///     type: gcp:vertex:AiFeatureStoreEntityTypeFeature
///     properties:
///       name: terraform
///       labels:
///         foo: bar
///       entitytype: ${entity.id}
///       valueType: INT64_ARRAY
/// ```
///
/// ### Vertex Ai Featurestore Entitytype Feature With Beta Fields
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const featurestore = new gcp.vertex.AiFeatureStore("featurestore", {
///     name: "terraform2",
///     labels: {
///         foo: "bar",
///     },
///     region: "us-central1",
///     onlineServingConfig: {
///         fixedNodeCount: 2,
///     },
/// });
/// const entity = new gcp.vertex.AiFeatureStoreEntityType("entity", {
///     name: "terraform2",
///     labels: {
///         foo: "bar",
///     },
///     featurestore: featurestore.id,
///     monitoringConfig: {
///         snapshotAnalysis: {
///             disabled: false,
///             monitoringInterval: "86400s",
///         },
///         categoricalThresholdConfig: {
///             value: 0.3,
///         },
///         numericalThresholdConfig: {
///             value: 0.3,
///         },
///     },
/// });
/// const feature = new gcp.vertex.AiFeatureStoreEntityTypeFeature("feature", {
///     name: "terraform2",
///     labels: {
///         foo: "bar",
///     },
///     entitytype: entity.id,
///     valueType: "INT64_ARRAY",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// featurestore = gcp.vertex.AiFeatureStore("featurestore",
///     name="terraform2",
///     labels={
///         "foo": "bar",
///     },
///     region="us-central1",
///     online_serving_config={
///         "fixed_node_count": 2,
///     })
/// entity = gcp.vertex.AiFeatureStoreEntityType("entity",
///     name="terraform2",
///     labels={
///         "foo": "bar",
///     },
///     featurestore=featurestore.id,
///     monitoring_config={
///         "snapshot_analysis": {
///             "disabled": False,
///             "monitoring_interval": "86400s",
///         },
///         "categorical_threshold_config": {
///             "value": 0.3,
///         },
///         "numerical_threshold_config": {
///             "value": 0.3,
///         },
///     })
/// feature = gcp.vertex.AiFeatureStoreEntityTypeFeature("feature",
///     name="terraform2",
///     labels={
///         "foo": "bar",
///     },
///     entitytype=entity.id,
///     value_type="INT64_ARRAY")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var featurestore = new Gcp.Vertex.AiFeatureStore("featurestore", new()
///     {
///         Name = "terraform2",
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///         Region = "us-central1",
///         OnlineServingConfig = new Gcp.Vertex.Inputs.AiFeatureStoreOnlineServingConfigArgs
///         {
///             FixedNodeCount = 2,
///         },
///     });
///
///     var entity = new Gcp.Vertex.AiFeatureStoreEntityType("entity", new()
///     {
///         Name = "terraform2",
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///         Featurestore = featurestore.Id,
///         MonitoringConfig = new Gcp.Vertex.Inputs.AiFeatureStoreEntityTypeMonitoringConfigArgs
///         {
///             SnapshotAnalysis = new Gcp.Vertex.Inputs.AiFeatureStoreEntityTypeMonitoringConfigSnapshotAnalysisArgs
///             {
///                 Disabled = false,
///                 MonitoringInterval = "86400s",
///             },
///             CategoricalThresholdConfig = new Gcp.Vertex.Inputs.AiFeatureStoreEntityTypeMonitoringConfigCategoricalThresholdConfigArgs
///             {
///                 Value = 0.3,
///             },
///             NumericalThresholdConfig = new Gcp.Vertex.Inputs.AiFeatureStoreEntityTypeMonitoringConfigNumericalThresholdConfigArgs
///             {
///                 Value = 0.3,
///             },
///         },
///     });
///
///     var feature = new Gcp.Vertex.AiFeatureStoreEntityTypeFeature("feature", new()
///     {
///         Name = "terraform2",
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///         Entitytype = entity.Id,
///         ValueType = "INT64_ARRAY",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		featurestore, err := vertex.NewAiFeatureStore(ctx, "featurestore", &vertex.AiFeatureStoreArgs{
/// 			Name: pulumi.String("terraform2"),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			Region: pulumi.String("us-central1"),
/// 			OnlineServingConfig: &vertex.AiFeatureStoreOnlineServingConfigArgs{
/// 				FixedNodeCount: pulumi.Int(2),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		entity, err := vertex.NewAiFeatureStoreEntityType(ctx, "entity", &vertex.AiFeatureStoreEntityTypeArgs{
/// 			Name: pulumi.String("terraform2"),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			Featurestore: featurestore.ID(),
/// 			MonitoringConfig: &vertex.AiFeatureStoreEntityTypeMonitoringConfigArgs{
/// 				SnapshotAnalysis: &vertex.AiFeatureStoreEntityTypeMonitoringConfigSnapshotAnalysisArgs{
/// 					Disabled:           pulumi.Bool(false),
/// 					MonitoringInterval: pulumi.String("86400s"),
/// 				},
/// 				CategoricalThresholdConfig: &vertex.AiFeatureStoreEntityTypeMonitoringConfigCategoricalThresholdConfigArgs{
/// 					Value: pulumi.Float64(0.3),
/// 				},
/// 				NumericalThresholdConfig: &vertex.AiFeatureStoreEntityTypeMonitoringConfigNumericalThresholdConfigArgs{
/// 					Value: pulumi.Float64(0.3),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vertex.NewAiFeatureStoreEntityTypeFeature(ctx, "feature", &vertex.AiFeatureStoreEntityTypeFeatureArgs{
/// 			Name: pulumi.String("terraform2"),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			Entitytype: entity.ID(),
/// 			ValueType:  pulumi.String("INT64_ARRAY"),
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
/// import com.pulumi.gcp.vertex.AiFeatureStore;
/// import com.pulumi.gcp.vertex.AiFeatureStoreArgs;
/// import com.pulumi.gcp.vertex.inputs.AiFeatureStoreOnlineServingConfigArgs;
/// import com.pulumi.gcp.vertex.AiFeatureStoreEntityType;
/// import com.pulumi.gcp.vertex.AiFeatureStoreEntityTypeArgs;
/// import com.pulumi.gcp.vertex.inputs.AiFeatureStoreEntityTypeMonitoringConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiFeatureStoreEntityTypeMonitoringConfigSnapshotAnalysisArgs;
/// import com.pulumi.gcp.vertex.inputs.AiFeatureStoreEntityTypeMonitoringConfigCategoricalThresholdConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiFeatureStoreEntityTypeMonitoringConfigNumericalThresholdConfigArgs;
/// import com.pulumi.gcp.vertex.AiFeatureStoreEntityTypeFeature;
/// import com.pulumi.gcp.vertex.AiFeatureStoreEntityTypeFeatureArgs;
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
///         var featurestore = new AiFeatureStore("featurestore", AiFeatureStoreArgs.builder()
///             .name("terraform2")
///             .labels(Map.of("foo", "bar"))
///             .region("us-central1")
///             .onlineServingConfig(AiFeatureStoreOnlineServingConfigArgs.builder()
///                 .fixedNodeCount(2)
///                 .build())
///             .build());
///
///         var entity = new AiFeatureStoreEntityType("entity", AiFeatureStoreEntityTypeArgs.builder()
///             .name("terraform2")
///             .labels(Map.of("foo", "bar"))
///             .featurestore(featurestore.id())
///             .monitoringConfig(AiFeatureStoreEntityTypeMonitoringConfigArgs.builder()
///                 .snapshotAnalysis(AiFeatureStoreEntityTypeMonitoringConfigSnapshotAnalysisArgs.builder()
///                     .disabled(false)
///                     .monitoringInterval("86400s")
///                     .build())
///                 .categoricalThresholdConfig(AiFeatureStoreEntityTypeMonitoringConfigCategoricalThresholdConfigArgs.builder()
///                     .value(0.3)
///                     .build())
///                 .numericalThresholdConfig(AiFeatureStoreEntityTypeMonitoringConfigNumericalThresholdConfigArgs.builder()
///                     .value(0.3)
///                     .build())
///                 .build())
///             .build());
///
///         var feature = new AiFeatureStoreEntityTypeFeature("feature", AiFeatureStoreEntityTypeFeatureArgs.builder()
///             .name("terraform2")
///             .labels(Map.of("foo", "bar"))
///             .entitytype(entity.id())
///             .valueType("INT64_ARRAY")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   featurestore:
///     type: gcp:vertex:AiFeatureStore
///     properties:
///       name: terraform2
///       labels:
///         foo: bar
///       region: us-central1
///       onlineServingConfig:
///         fixedNodeCount: 2
///   entity:
///     type: gcp:vertex:AiFeatureStoreEntityType
///     properties:
///       name: terraform2
///       labels:
///         foo: bar
///       featurestore: ${featurestore.id}
///       monitoringConfig:
///         snapshotAnalysis:
///           disabled: false
///           monitoringInterval: 86400s
///         categoricalThresholdConfig:
///           value: 0.3
///         numericalThresholdConfig:
///           value: 0.3
///   feature:
///     type: gcp:vertex:AiFeatureStoreEntityTypeFeature
///     properties:
///       name: terraform2
///       labels:
///         foo: bar
///       entitytype: ${entity.id}
///       valueType: INT64_ARRAY
/// ```
///
///
/// ## Import
///
/// FeaturestoreEntitytypeFeature can be imported using any of these accepted formats:
///
/// * `{{entitytype}}/features/{{name}}`
///
/// When using the `pulumi import` command, FeaturestoreEntitytypeFeature can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:vertex/aiFeatureStoreEntityTypeFeature:AiFeatureStoreEntityTypeFeature default {{entitytype}}/features/{{name}}
/// ```
class AiFeatureStoreEntityTypeFeature extends pulumi.CustomResource {
  /// The timestamp of when the entity type was created in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  late final pulumi.Output<String> createTime;
  /// Description of the feature.
  late final pulumi.Output<String?> description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// The name of the Featurestore to use, in the format projects/{project}/locations/{location}/featurestores/{featurestore}/entityTypes/{entitytype}.
  late final pulumi.Output<String> entitytype;
  /// Used to perform consistent read-modify-write updates.
  late final pulumi.Output<String> etag;
  /// A set of key/value label pairs to assign to the feature.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The name of the feature. The feature can be up to 64 characters long and can consist only of ASCII Latin letters A-Z and a-z, underscore(_), and ASCII digits 0-9 starting with a letter. The value will be unique given an entity type.
  late final pulumi.Output<String> name;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The region of the feature
  late final pulumi.Output<String> region;
  /// The timestamp when the entity type was most recently updated in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  late final pulumi.Output<String> updateTime;
  /// Type of Feature value. Immutable. https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.featurestores.entityTypes.features#ValueType
  late final pulumi.Output<String> valueType;

  /// Creates a new [AiFeatureStoreEntityTypeFeature].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AiFeatureStoreEntityTypeFeature]. {@macro pulumi_vertex_ai_feature_store_entity_type_feature_ai_feature_store_entity_type_feature_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AiFeatureStoreEntityTypeFeature(
    String name, {
    AiFeatureStoreEntityTypeFeatureArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiFeatureStoreEntityTypeFeature:AiFeatureStoreEntityTypeFeature',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    this.entitytype = registerOutput<String>('entitytype');
    this.etag = registerOutput<String>('etag');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.region = registerOutput<String>('region');
    this.updateTime = registerOutput<String>('updateTime');
    this.valueType = registerOutput<String>('valueType');
  }
}

import 'package:pulumi/pulumi.dart' as pulumi;
import 'engine_model_args.dart';
import 'engine_model_default_version.dart';

/// ## Example Usage
///
/// ### Ml Model Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.ml.EngineModel("default", {
///     name: "default",
///     description: "My model",
///     regions: "us-central1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.ml.EngineModel("default",
///     name="default",
///     description="My model",
///     regions="us-central1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.ML.EngineModel("default", new()
///     {
///         Name = "default",
///         Description = "My model",
///         Regions = "us-central1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/ml"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ml.NewEngineModel(ctx, "default", &ml.EngineModelArgs{
/// 			Name:        pulumi.String("default"),
/// 			Description: pulumi.String("My model"),
/// 			Regions:     pulumi.String("us-central1"),
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
/// import com.pulumi.gcp.ml.EngineModel;
/// import com.pulumi.gcp.ml.EngineModelArgs;
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
///         var default_ = new EngineModel("default", EngineModelArgs.builder()
///             .name("default")
///             .description("My model")
///             .regions("us-central1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:ml:EngineModel
///     properties:
///       name: default
///       description: My model
///       regions: us-central1
/// ```
///
/// ### Ml Model Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.ml.EngineModel("default", {
///     name: "default",
///     description: "My model",
///     regions: "us-central1",
///     labels: {
///         my_model: "foo",
///     },
///     onlinePredictionLogging: true,
///     onlinePredictionConsoleLogging: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.ml.EngineModel("default",
///     name="default",
///     description="My model",
///     regions="us-central1",
///     labels={
///         "my_model": "foo",
///     },
///     online_prediction_logging=True,
///     online_prediction_console_logging=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.ML.EngineModel("default", new()
///     {
///         Name = "default",
///         Description = "My model",
///         Regions = "us-central1",
///         Labels =
///         {
///             { "my_model", "foo" },
///         },
///         OnlinePredictionLogging = true,
///         OnlinePredictionConsoleLogging = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/ml"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ml.NewEngineModel(ctx, "default", &ml.EngineModelArgs{
/// 			Name:        pulumi.String("default"),
/// 			Description: pulumi.String("My model"),
/// 			Regions:     pulumi.String("us-central1"),
/// 			Labels: pulumi.StringMap{
/// 				"my_model": pulumi.String("foo"),
/// 			},
/// 			OnlinePredictionLogging:        pulumi.Bool(true),
/// 			OnlinePredictionConsoleLogging: pulumi.Bool(true),
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
/// import com.pulumi.gcp.ml.EngineModel;
/// import com.pulumi.gcp.ml.EngineModelArgs;
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
///         var default_ = new EngineModel("default", EngineModelArgs.builder()
///             .name("default")
///             .description("My model")
///             .regions("us-central1")
///             .labels(Map.of("my_model", "foo"))
///             .onlinePredictionLogging(true)
///             .onlinePredictionConsoleLogging(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:ml:EngineModel
///     properties:
///       name: default
///       description: My model
///       regions: us-central1
///       labels:
///         my_model: foo
///       onlinePredictionLogging: true
///       onlinePredictionConsoleLogging: true
/// ```
///
///
/// ## Import
///
/// Model can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/models/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Model can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:ml/engineModel:EngineModel default projects/{{project}}/models/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:ml/engineModel:EngineModel default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:ml/engineModel:EngineModel default {{name}}
/// ```
class EngineModel extends pulumi.CustomResource {
  /// The default version of the model. This version will be used to handle
  /// prediction requests that do not specify a version.
  /// Structure is documented below.
  late final pulumi.Output<EngineModelDefaultVersion?> defaultVersion;
  /// The description specified for the model when it was created.
  late final pulumi.Output<String?> description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// One or more labels that you can add, to organize your models.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The name specified for the model.
  late final pulumi.Output<String> name;
  /// If true, online prediction nodes send stderr and stdout streams to Stackdriver Logging
  late final pulumi.Output<bool?> onlinePredictionConsoleLogging;
  /// If true, online prediction access logs are sent to StackDriver Logging.
  late final pulumi.Output<bool?> onlinePredictionLogging;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The list of regions where the model is going to be deployed.
  /// Currently only one region per model is supported
  late final pulumi.Output<String?> regions;

  /// Creates a new [EngineModel].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EngineModel]. {@macro pulumi_ml_engine_model_engine_model_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EngineModel(
    String name, {
    EngineModelArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:ml/engineModel:EngineModel',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.defaultVersion = registerOutput<EngineModelDefaultVersion?>('defaultVersion');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    this.onlinePredictionConsoleLogging = registerOutput<bool?>('onlinePredictionConsoleLogging');
    this.onlinePredictionLogging = registerOutput<bool?>('onlinePredictionLogging');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.regions = registerOutput<String?>('regions');
  }
}

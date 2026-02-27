import 'package:pulumi/pulumi.dart' as pulumi;
import '../engine_model_default_version/engine_model_default_version.dart';
import 'engine_model_args.dart';

/// ## Example Usage
///
/// ### Ml Model Basic
///
///
///
/// ### Ml Model Full
///
///
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
    this.defaultVersion =
        registerOutput<EngineModelDefaultVersion?>('defaultVersion');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    this.onlinePredictionConsoleLogging =
        registerOutput<bool?>('onlinePredictionConsoleLogging');
    this.onlinePredictionLogging =
        registerOutput<bool?>('onlinePredictionLogging');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.regions = registerOutput<String?>('regions');
  }
}

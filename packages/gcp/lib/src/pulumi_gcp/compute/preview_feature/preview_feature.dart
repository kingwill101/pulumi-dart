import 'package:pulumi/pulumi.dart' as pulumi;
import '../preview_feature_rollout_operation/preview_feature_rollout_operation.dart';
import 'preview_feature_args.dart';

/// Represents a single Google Compute Engine preview feature such as Alpha API access, which can be enabled or unspecified for a project.
///
///
/// To get more information about PreviewFeature, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/previewFeatures)
/// * How-to Guides
/// * [Use the Compute Engine alpha API](https://cloud.google.com/compute/docs/reference/rest/alpha)
///
/// ## Example Usage
///
/// ### Preview Feature Basic
///
///
///
///
/// ## Import
///
/// PreviewFeature can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/global/previewFeatures/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, PreviewFeature can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/previewFeature:PreviewFeature default projects/{{project}}/global/previewFeatures/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/previewFeature:PreviewFeature default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/previewFeature:PreviewFeature default {{name}}
/// ```
class PreviewFeature extends pulumi.CustomResource {
  /// The activation status of the preview feature.
  /// Possible values are: `ENABLED`, `ACTIVATION_STATE_UNSPECIFIED`.
  late final pulumi.Output<String> activationStatus;

  /// The name of the preview feature.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The rollout operation of the feature.
  /// Structure is documented below.
  late final pulumi.Output<PreviewFeatureRolloutOperation?> rolloutOperation;

  PreviewFeature(
    String name, {
    PreviewFeatureArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/previewFeature:PreviewFeature',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.activationStatus = registerOutput<String>('activationStatus');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.rolloutOperation =
        registerOutput<PreviewFeatureRolloutOperation?>('rolloutOperation');
  }
}

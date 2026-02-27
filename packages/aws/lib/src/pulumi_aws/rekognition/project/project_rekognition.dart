import 'package:pulumi/pulumi.dart' as pulumi;
import '../project_timeouts/project_timeouts_rekognition.dart';
import 'project_rekognition_args.dart';

/// Resource for managing an AWS Rekognition Project.
///
/// ## Example Usage
///
/// ### Content Moderation
///
///
///
/// ### Custom Labels
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Rekognition Project using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:rekognition/project:Project example project-id-12345678
/// ```
class ProjectRekognition extends pulumi.CustomResource {
  /// ARN of the Project.
  late final pulumi.Output<String> arn;

  /// Specify if automatic retraining should occur. Valid values are `ENABLED` or `DISABLED`. Must be set when `feature` is `CONTENT_MODERATION`, but do not set otherwise.
  late final pulumi.Output<String> autoUpdate;

  /// Specify the feature being customized. Valid values are `CONTENT_MODERATION` or `CUSTOM_LABELS`. Defaults to `CUSTOM_LABELS`.
  late final pulumi.Output<String?> feature;

  /// Desired name of the project.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<ProjectTimeoutsRekognition?> timeouts;

  ProjectRekognition(
    String name, {
    ProjectRekognitionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:rekognition/project:Project',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.autoUpdate = registerOutput<String>('autoUpdate');
    this.feature = registerOutput<String?>('feature');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<ProjectTimeoutsRekognition?>('timeouts');
  }
}

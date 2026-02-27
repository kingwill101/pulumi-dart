import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_ml_v1_study_config_response.dart';
import 'study_ml_v1_args.dart';

/// Creates a study.
/// Auto-naming is currently not supported for this resource.
class StudyMlV1 extends pulumi.CustomResource {
  /// Time at which the study was created.
  late final pulumi.Output<String> createTime;

  /// A human readable reason why the Study is inactive. This should be empty if a study is ACTIVE or COMPLETED.
  late final pulumi.Output<String> inactiveReason;
  late final pulumi.Output<String> location;

  /// The name of a study.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// The detailed state of a study.
  late final pulumi.Output<String> state;

  /// Configuration of the study.
  late final pulumi.Output<GoogleCloudMlV1StudyConfigResponse> studyConfig;

  /// Required. The ID to use for the study, which will become the final component of the study's resource name.
  late final pulumi.Output<String> studyId;

  StudyMlV1(
    String name, {
    StudyMlV1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:ml/v1:Study',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.inactiveReason = registerOutput<String>('inactiveReason');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.state = registerOutput<String>('state');
    this.studyConfig =
        registerOutput<GoogleCloudMlV1StudyConfigResponse>('studyConfig');
    this.studyId = registerOutput<String>('studyId');
  }
}

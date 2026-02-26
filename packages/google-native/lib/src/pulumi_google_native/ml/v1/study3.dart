import 'package:pulumi/pulumi.dart';
import 'google_cloud_ml_v1_study_config_response.dart';
import 'study_args3.dart';

/// Creates a study.
/// Auto-naming is currently not supported for this resource.
class Study3 extends CustomResource {
  /// Time at which the study was created.
  late final Output<String> createTime;

  /// A human readable reason why the Study is inactive. This should be empty if a study is ACTIVE or COMPLETED.
  late final Output<String> inactiveReason;
  late final Output<String> location;

  /// The name of a study.
  late final Output<String> name;
  late final Output<String> project;

  /// The detailed state of a study.
  late final Output<String> state;

  /// Configuration of the study.
  late final Output<GoogleCloudMlV1StudyConfigResponse> studyConfig;

  /// Required. The ID to use for the study, which will become the final component of the study's resource name.
  late final Output<String> studyId;

  Study3(
    String name, {
    StudyArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:ml/v1:Study',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
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

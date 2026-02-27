import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_aiplatform_v1beta1_study_spec_response.dart';
import 'study_args2.dart';

/// Creates a Study. A resource name will be generated after creation of the Study.
/// Auto-naming is currently not supported for this resource.
class Study2 extends CustomResource {
  /// Time at which the study was created.
  late final Output<String> createTime;

  /// Describes the Study, default value is empty string.
  late final Output<String> displayName;

  /// A human readable reason why the Study is inactive. This should be empty if a study is ACTIVE or COMPLETED.
  late final Output<String> inactiveReason;
  late final Output<String> location;

  /// The name of a study. The study's globally unique identifier. Format: `projects/{project}/locations/{location}/studies/{study}`
  late final Output<String> name;
  late final Output<String> project;

  /// The detailed state of a Study.
  late final Output<String> state;

  /// Configuration of the Study.
  late final Output<GoogleCloudAiplatformV1beta1StudySpecResponse> studySpec;

  Study2(
    String name, {
    StudyArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:aiplatform/v1beta1:Study',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.displayName = registerOutput<String>('displayName');
    this.inactiveReason = registerOutput<String>('inactiveReason');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.state = registerOutput<String>('state');
    this.studySpec =
        registerOutput<GoogleCloudAiplatformV1beta1StudySpecResponse>(
            'studySpec');
  }
}

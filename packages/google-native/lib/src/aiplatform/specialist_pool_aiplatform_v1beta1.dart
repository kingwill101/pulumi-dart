import 'package:pulumi/pulumi.dart' as pulumi;
import 'specialist_pool_aiplatform_v1beta1_args.dart';

/// Creates a SpecialistPool.
class SpecialistPoolAiplatformV1beta1 extends pulumi.CustomResource {
  /// The user-defined name of the SpecialistPool. The name can be up to 128 characters long and can consist of any UTF-8 characters. This field should be unique on project-level.
  late final pulumi.Output<String> displayName;
  late final pulumi.Output<String> location;
  /// The resource name of the SpecialistPool.
  late final pulumi.Output<String> name;
  /// The resource name of the pending data labeling jobs.
  late final pulumi.Output<List<String>> pendingDataLabelingJobs;
  late final pulumi.Output<String> project;
  /// The email addresses of the managers in the SpecialistPool.
  late final pulumi.Output<List<String>> specialistManagerEmails;
  /// The number of managers in this SpecialistPool.
  late final pulumi.Output<int> specialistManagersCount;
  /// The email addresses of workers in the SpecialistPool.
  late final pulumi.Output<List<String>> specialistWorkerEmails;

  /// Creates a new [SpecialistPoolAiplatformV1beta1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SpecialistPoolAiplatformV1beta1]. {@macro pulumi_aiplatform_v1beta1_specialist_pool_aiplatform_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SpecialistPoolAiplatformV1beta1(
    String name, {
    SpecialistPoolAiplatformV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:aiplatform/v1beta1:SpecialistPool',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.displayName = registerOutput<String>('displayName');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.pendingDataLabelingJobs = registerOutput<List<String>>('pendingDataLabelingJobs');
    this.project = registerOutput<String>('project');
    this.specialistManagerEmails = registerOutput<List<String>>('specialistManagerEmails');
    this.specialistManagersCount = registerOutput<int>('specialistManagersCount');
    this.specialistWorkerEmails = registerOutput<List<String>>('specialistWorkerEmails');
  }
}

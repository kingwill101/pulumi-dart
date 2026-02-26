import 'package:pulumi/pulumi.dart';
import 'specialist_pool_args2.dart';

/// Creates a SpecialistPool.
class SpecialistPool2 extends CustomResource {
  /// The user-defined name of the SpecialistPool. The name can be up to 128 characters long and can consist of any UTF-8 characters. This field should be unique on project-level.
  late final Output<String> displayName;
  late final Output<String> location;

  /// The resource name of the SpecialistPool.
  late final Output<String> name;

  /// The resource name of the pending data labeling jobs.
  late final Output<List<String>> pendingDataLabelingJobs;
  late final Output<String> project;

  /// The email addresses of the managers in the SpecialistPool.
  late final Output<List<String>> specialistManagerEmails;

  /// The number of managers in this SpecialistPool.
  late final Output<int> specialistManagersCount;

  /// The email addresses of workers in the SpecialistPool.
  late final Output<List<String>> specialistWorkerEmails;

  SpecialistPool2(
    String name, {
    SpecialistPoolArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:aiplatform/v1beta1:SpecialistPool',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.displayName = registerOutput<String>('displayName');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.pendingDataLabelingJobs =
        registerOutput<List<String>>('pendingDataLabelingJobs');
    this.project = registerOutput<String>('project');
    this.specialistManagerEmails =
        registerOutput<List<String>>('specialistManagerEmails');
    this.specialistManagersCount =
        registerOutput<int>('specialistManagersCount');
    this.specialistWorkerEmails =
        registerOutput<List<String>>('specialistWorkerEmails');
  }
}

import 'package:pulumi/pulumi.dart' as pulumi;
import '../dev_environment_ides/dev_environment_ides.dart';
import '../dev_environment_persistent_storage/dev_environment_persistent_storage.dart';
import '../dev_environment_repository/dev_environment_repository.dart';
import 'dev_environment_args.dart';

/// Resource for managing an AWS CodeCatalyst Dev Environment.
class DevEnvironment extends pulumi.CustomResource {
  late final pulumi.Output<String?> alias;

  /// Information about the integrated development environment (IDE) configured for a Dev Environment.
  late final pulumi.Output<DevEnvironmentIdes> ides;

  /// The amount of time the Dev Environment will run without any activity detected before stopping, in minutes. Only whole integers are allowed. Dev Environments consume compute minutes when running.
  late final pulumi.Output<int?> inactivityTimeoutMinutes;

  /// The Amazon EC2 instace type to use for the Dev Environment. Valid values include dev.standard1.small,dev.standard1.medium,dev.standard1.large,dev.standard1.xlarge
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> instanceType;

  /// Information about the amount of storage allocated to the Dev Environment.
  late final pulumi.Output<DevEnvironmentPersistentStorage> persistentStorage;

  /// The name of the project in the space.
  late final pulumi.Output<String> projectName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The source repository that contains the branch to clone into the Dev Environment.
  late final pulumi.Output<List<DevEnvironmentRepository>?> repositories;

  /// The name of the space.
  late final pulumi.Output<String> spaceName;

  DevEnvironment(
    String name, {
    DevEnvironmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:codecatalyst/devEnvironment:DevEnvironment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.alias = registerOutput<String?>('alias');
    this.ides = registerOutput<DevEnvironmentIdes>('ides');
    this.inactivityTimeoutMinutes =
        registerOutput<int?>('inactivityTimeoutMinutes');
    this.instanceType = registerOutput<String>('instanceType');
    this.persistentStorage =
        registerOutput<DevEnvironmentPersistentStorage>('persistentStorage');
    this.projectName = registerOutput<String>('projectName');
    this.region = registerOutput<String>('region');
    this.repositories =
        registerOutput<List<DevEnvironmentRepository>?>('repositories');
    this.spaceName = registerOutput<String>('spaceName');
  }
}

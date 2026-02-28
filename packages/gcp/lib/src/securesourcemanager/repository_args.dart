// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'repository_initial_config.dart';

/// {@template pulumi_securesourcemanager_repository_repository_args_doc}
/// The set of arguments for Repository.
/// {@endtemplate}
/// {@macro pulumi_securesourcemanager_repository_repository_args_doc}
class RepositoryArgs {
  /// The deletion policy for the repository. Setting `ABANDON` allows the resource
  /// to be abandoned, rather than deleted. Setting `DELETE` deletes the resource
  /// and all its contents. Setting `PREVENT` prevents the resource from accidental deletion
  /// by erroring out during plan.
  /// Default is `PREVENT`.  Possible values are:
  /// * DELETE
  /// * PREVENT
  /// * ABANDON
  final pulumi.Input<String>? deletionPolicy;
  /// Description of the repository, which cannot exceed 500 characters.
  final pulumi.Input<String>? description;
  /// Initial configurations for the repository.
  /// Structure is documented below.
  final pulumi.Input<RepositoryInitialConfig>? initialConfig;
  /// The name of the instance in which the repository is hosted.
  final pulumi.Input<String> instance;
  /// The location for the Repository.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The ID for the Repository.
  final pulumi.Input<String> repositoryId;

  /// Creates a new [RepositoryArgs].
  /// [deletionPolicy] The deletion policy for the repository. Setting `ABANDON` allows the resource
  /// [description] Description of the repository, which cannot exceed 500 characters.
  /// [initialConfig] Initial configurations for the repository.
  /// [instance] The name of the instance in which the repository is hosted.
  /// [location] The location for the Repository.
  /// [project] The ID of the project in which the resource belongs.
  /// [repositoryId] The ID for the Repository.
  RepositoryArgs({
    String? deletionPolicy,
    String? description,
    RepositoryInitialConfig? initialConfig,
    required String instance,
    required String location,
    String? project,
    required String repositoryId,
  }) :
      deletionPolicy = pulumi.Input.asOptionalInput<String>(deletionPolicy),
      description = pulumi.Input.asOptionalInput<String>(description),
      initialConfig = pulumi.Input.asOptionalInput<RepositoryInitialConfig>(initialConfig),
      instance = pulumi.Input.asInput<String>(instance),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      repositoryId = pulumi.Input.asInput<String>(repositoryId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'initialConfig': ?pulumi.Input.mapOptionalInputValue<RepositoryInitialConfig, Map<String, dynamic>>(initialConfig, (value) => value.toMap()),
      'instance': instance,
      'location': location,
      'project': ?project,
      'repositoryId': repositoryId,
    };
  }

  factory RepositoryArgs.fromMap(Map<String, dynamic> map) {
    return RepositoryArgs(
      deletionPolicy: map['deletionPolicy'] == null ? null : map['deletionPolicy'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      initialConfig: map['initialConfig'] == null ? null : RepositoryInitialConfig.fromMap((map['initialConfig'] as Map).cast<String, dynamic>()),
      instance: map['instance'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      repositoryId: map['repositoryId'] as String,
    );
  }
}


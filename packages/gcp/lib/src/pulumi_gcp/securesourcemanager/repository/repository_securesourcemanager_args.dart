// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../repository_initial_config/repository_initial_config.dart';

/// The set of arguments for Repository.
class RepositorySecuresourcemanagerArgs {
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

  RepositorySecuresourcemanagerArgs({
    this.deletionPolicy,
    this.description,
    this.initialConfig,
    required this.instance,
    required this.location,
    this.project,
    required this.repositoryId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final deletionPolicyValue = deletionPolicy;
    if (deletionPolicyValue != null) {
      map['deletionPolicy'] = deletionPolicyValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final initialConfigValue = initialConfig;
    if (initialConfigValue != null) {
      map['initialConfig'] = pulumi.Input.mapOptionalInputValue<
          RepositoryInitialConfig,
          Map<String, dynamic>>(initialConfigValue, (value) => value.toMap());
    }
    map['instance'] = instance;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['repositoryId'] = repositoryId;
    return map;
  }

  factory RepositorySecuresourcemanagerArgs.fromMap(Map<String, dynamic> map) {
    return RepositorySecuresourcemanagerArgs(
      deletionPolicy:
          pulumi.Input.asOptionalInput<String>(map['deletionPolicy']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      initialConfig: pulumi.Input.asOptionalInput<RepositoryInitialConfig>(
          map['initialConfig']),
      instance: pulumi.Input.asInput<String>(map['instance']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      repositoryId: pulumi.Input.asInput<String>(map['repositoryId']),
    );
  }
}

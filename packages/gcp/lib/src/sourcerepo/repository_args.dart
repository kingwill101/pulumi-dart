// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'repository_pubsub_config.dart';

/// {@template pulumi_sourcerepo_repository_repository_args_doc}
/// The set of arguments for Repository.
/// {@endtemplate}
/// {@macro pulumi_sourcerepo_repository_repository_args_doc}
class RepositoryArgs {
  /// If set to true, skip repository creation if a repository with the same name already exists.
  final pulumi.Input<bool>? createIgnoreAlreadyExists;

  /// Resource name of the repository, of the form `{{repo}}`.
  /// The repo name may contain slashes. eg, `name/with/slash`
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// How this repository publishes a change in the repository through Cloud Pub/Sub.
  /// Keyed by the topic names.
  /// Structure is documented below.
  final pulumi.Input<List<RepositoryPubsubConfig>>? pubsubConfigs;

  /// Creates a new [RepositoryArgs].
  /// [createIgnoreAlreadyExists] If set to true, skip repository creation if a repository with the same name already exists.
  /// [name] Resource name of the repository, of the form `{{repo}}`.
  /// [project] The ID of the project in which the resource belongs.
  /// [pubsubConfigs] How this repository publishes a change in the repository through Cloud Pub/Sub.
  RepositoryArgs({
    bool? createIgnoreAlreadyExists,
    String? name,
    String? project,
    List<RepositoryPubsubConfig>? pubsubConfigs,
  })  : createIgnoreAlreadyExists =
            pulumi.Input.asOptionalInput<bool>(createIgnoreAlreadyExists),
        name = pulumi.Input.asOptionalInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project),
        pubsubConfigs =
            pulumi.Input.asOptionalInput<List<RepositoryPubsubConfig>>(
                pubsubConfigs);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final createIgnoreAlreadyExistsValue = createIgnoreAlreadyExists;
    if (createIgnoreAlreadyExistsValue != null) {
      map['createIgnoreAlreadyExists'] = createIgnoreAlreadyExistsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final pubsubConfigsValue = pubsubConfigs;
    if (pubsubConfigsValue != null) {
      map['pubsubConfigs'] = pulumi.Input.mapOptionalInputValue<
              List<RepositoryPubsubConfig>, List<Map<String, dynamic>>>(
          pubsubConfigsValue,
          (value) => pulumi.Input.encodeList<RepositoryPubsubConfig,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    return map;
  }

  factory RepositoryArgs.fromMap(Map<String, dynamic> map) {
    return RepositoryArgs(
      createIgnoreAlreadyExists: map['createIgnoreAlreadyExists'] == null
          ? null
          : map['createIgnoreAlreadyExists'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      pubsubConfigs: map['pubsubConfigs'] == null
          ? null
          : pulumi.Input.decodeList<RepositoryPubsubConfig>(
              map['pubsubConfigs'],
              (value) => RepositoryPubsubConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}

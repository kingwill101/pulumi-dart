// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../repository_pubsub_config/repository_pubsub_config.dart';

/// The set of arguments for Repository.
class RepositoryArgs5 {
  /// If set to true, skip repository creation if a repository with the same name already exists.
  final Input<bool>? createIgnoreAlreadyExists;

  /// Resource name of the repository, of the form `{{repo}}`.
  /// The repo name may contain slashes. eg, `name/with/slash`
  final Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// How this repository publishes a change in the repository through Cloud Pub/Sub.
  /// Keyed by the topic names.
  /// Structure is documented below.
  final Input<List<RepositoryPubsubConfig>>? pubsubConfigs;

  RepositoryArgs5({
    this.createIgnoreAlreadyExists,
    this.name,
    this.project,
    this.pubsubConfigs,
  });

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
      map['pubsubConfigs'] = Input.mapOptionalInputValue<
              List<RepositoryPubsubConfig>, List<Map<String, dynamic>>>(
          pubsubConfigsValue,
          (value) =>
              Input.encodeList<RepositoryPubsubConfig, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    return map;
  }

  factory RepositoryArgs5.fromMap(Map<String, dynamic> map) {
    return RepositoryArgs5(
      createIgnoreAlreadyExists:
          Input.asOptionalInput<bool>(map['createIgnoreAlreadyExists']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      pubsubConfigs: Input.asOptionalInput<List<RepositoryPubsubConfig>>(
          map['pubsubConfigs']),
    );
  }
}

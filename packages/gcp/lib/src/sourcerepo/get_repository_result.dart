// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_repository_pubsub_config.dart';

/// Result data returned by getRepository.
class GetRepositoryResult {
  final bool createIgnoreAlreadyExists;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String? project;
  final List<GetRepositoryPubsubConfig> pubsubConfigs;
  final int size;
  final String url;

  /// Creates a new [GetRepositoryResult].
  /// [createIgnoreAlreadyExists] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [project] Optional.
  /// [pubsubConfigs] Required.
  /// [size] Required.
  /// [url] Required.
  GetRepositoryResult({
    required this.createIgnoreAlreadyExists,
    required this.id,
    required this.name,
    this.project,
    required this.pubsubConfigs,
    required this.size,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createIgnoreAlreadyExists': createIgnoreAlreadyExists,
      'id': id,
      'name': name,
      'project': ?project,
      'pubsubConfigs':
          pulumi.Input.encodeList<
            GetRepositoryPubsubConfig,
            Map<String, dynamic>
          >(pubsubConfigs, (value) => value.toMap()),
      'size': size,
      'url': url,
    };
  }

  factory GetRepositoryResult.fromMap(Map<String, dynamic> map) {
    return GetRepositoryResult(
      createIgnoreAlreadyExists: map['createIgnoreAlreadyExists'] as bool,
      id: map['id'] as String,
      name: map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      pubsubConfigs: pulumi.Input.decodeList<GetRepositoryPubsubConfig>(
        map['pubsubConfigs'],
        (value) => GetRepositoryPubsubConfig.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      size: map['size'] as int,
      url: map['url'] as String,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_repository_pubsub_config/get_repository_pubsub_config.dart';

/// Result data returned by getRepository.
class GetRepositoryResult2 {
  final bool createIgnoreAlreadyExists;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String? project;
  final List<GetRepositoryPubsubConfig> pubsubConfigs;
  final int size;
  final String url;

  GetRepositoryResult2({
    required this.createIgnoreAlreadyExists,
    required this.id,
    required this.name,
    this.project,
    required this.pubsubConfigs,
    required this.size,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createIgnoreAlreadyExists'] = createIgnoreAlreadyExists;
    map['id'] = id;
    map['name'] = name;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['pubsubConfigs'] =
        Input.encodeList<GetRepositoryPubsubConfig, Map<String, dynamic>>(
            pubsubConfigs, (value) => value.toMap());
    map['size'] = size;
    map['url'] = url;
    return map;
  }

  factory GetRepositoryResult2.fromMap(Map<String, dynamic> map) {
    return GetRepositoryResult2(
      createIgnoreAlreadyExists: map['createIgnoreAlreadyExists'] as bool,
      id: map['id'] as String,
      name: map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      pubsubConfigs: Input.decodeList<GetRepositoryPubsubConfig>(
          map['pubsubConfigs'],
          (value) => GetRepositoryPubsubConfig.fromMap(
              (value as Map).cast<String, dynamic>())),
      size: map['size'] as int,
      url: map['url'] as String,
    );
  }
}

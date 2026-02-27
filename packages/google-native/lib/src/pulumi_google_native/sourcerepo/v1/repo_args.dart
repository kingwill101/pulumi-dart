// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'mirror_config.dart';

/// The set of arguments for Repo.
class RepoArgs {
  /// How this repository mirrors a repository managed by another service. Read-only field.
  final Input<MirrorConfig>? mirrorConfig;

  /// Resource name of the repository, of the form `projects//repos/`. The repo name may contain slashes. eg, `projects/myproject/repos/name/with/slash`
  final Input<String>? name;
  final Input<String>? project;

  /// How this repository publishes a change in the repository through Cloud Pub/Sub. Keyed by the topic names.
  final Input<Map<String, String>>? pubsubConfigs;

  /// The disk usage of the repo, in bytes. Read-only field. Size is only returned by GetRepo.
  final Input<String>? size;

  /// URL to clone the repository from Google Cloud Source Repositories. Read-only field.
  final Input<String>? url;

  RepoArgs({
    this.mirrorConfig,
    this.name,
    this.project,
    this.pubsubConfigs,
    this.size,
    this.url,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final mirrorConfigValue = mirrorConfig;
    if (mirrorConfigValue != null) {
      map['mirrorConfig'] =
          Input.mapOptionalInputValue<MirrorConfig, Map<String, dynamic>>(
              mirrorConfigValue, (value) => value.toMap());
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
      map['pubsubConfigs'] = pubsubConfigsValue;
    }
    final sizeValue = size;
    if (sizeValue != null) {
      map['size'] = sizeValue;
    }
    final urlValue = url;
    if (urlValue != null) {
      map['url'] = urlValue;
    }
    return map;
  }

  factory RepoArgs.fromMap(Map<String, dynamic> map) {
    return RepoArgs(
      mirrorConfig: Input.asOptionalInput<MirrorConfig>(map['mirrorConfig']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      pubsubConfigs:
          Input.asOptionalInput<Map<String, String>>(map['pubsubConfigs']),
      size: Input.asOptionalInput<String>(map['size']),
      url: Input.asOptionalInput<String>(map['url']),
    );
  }
}

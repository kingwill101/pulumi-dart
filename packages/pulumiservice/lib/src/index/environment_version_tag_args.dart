// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_environment_version_tag_args_doc}
/// The set of arguments for EnvironmentVersionTag.
/// {@endtemplate}
/// {@macro pulumi_index_environment_version_tag_args_doc}
class EnvironmentVersionTagArgs {
  /// Environment name.
  final pulumi.Input<String> environment;
  /// Organization name.
  final pulumi.Input<String> organization;
  /// Project name.
  final pulumi.Input<String>? project;
  /// Revision number.
  final pulumi.Input<int> revision;
  /// Tag name.
  final pulumi.Input<String> tagName;

  /// Creates a new [EnvironmentVersionTagArgs].
  /// [environment] Environment name.
  /// [organization] Organization name.
  /// [project] Project name.
  /// [revision] Revision number.
  /// [tagName] Tag name.
  EnvironmentVersionTagArgs({
    required String environment,
    required String organization,
    String? project,
    required int revision,
    required String tagName,
  }) :
      environment = pulumi.Input.asInput<String>(environment),
      organization = pulumi.Input.asInput<String>(organization),
      project = pulumi.Input.asOptionalInput<String>(project),
      revision = pulumi.Input.asInput<int>(revision),
      tagName = pulumi.Input.asInput<String>(tagName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environment': environment,
      'organization': organization,
      'project': ?project,
      'revision': revision,
      'tagName': tagName,
    };
  }

  factory EnvironmentVersionTagArgs.fromMap(Map<String, dynamic> map) {
    return EnvironmentVersionTagArgs(
      environment: map['environment'] as String,
      organization: map['organization'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      revision: map['revision'] as int,
      tagName: map['tagName'] as String,
    );
  }
}


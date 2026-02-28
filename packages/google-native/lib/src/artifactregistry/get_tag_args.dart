// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_artifactregistry_v1_get_tag_args_doc}
/// Arguments for getTag.
/// {@endtemplate}
/// {@macro pulumi_artifactregistry_v1_get_tag_args_doc}
class GetTagArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> packageId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> repositoryId;
  final pulumi.Input<String> tagId;

  /// Creates a new [GetTagArgs].
  /// [location] Required.
  /// [packageId] Required.
  /// [project] Optional.
  /// [repositoryId] Required.
  /// [tagId] Required.
  GetTagArgs({
    required String location,
    required String packageId,
    String? project,
    required String repositoryId,
    required String tagId,
  })  : location = pulumi.Input.asInput<String>(location),
        packageId = pulumi.Input.asInput<String>(packageId),
        project = pulumi.Input.asOptionalInput<String>(project),
        repositoryId = pulumi.Input.asInput<String>(repositoryId),
        tagId = pulumi.Input.asInput<String>(tagId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['packageId'] = packageId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['repositoryId'] = repositoryId;
    map['tagId'] = tagId;
    return map;
  }

  factory GetTagArgs.fromMap(Map<String, dynamic> map) {
    return GetTagArgs(
      location: map['location'] as String,
      packageId: map['packageId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      repositoryId: map['repositoryId'] as String,
      tagId: map['tagId'] as String,
    );
  }
}

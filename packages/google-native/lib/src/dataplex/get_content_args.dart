// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataplex_v1_get_content_args_doc}
/// Arguments for getContent.
/// {@endtemplate}
/// {@macro pulumi_dataplex_v1_get_content_args_doc}
class GetContentArgs {
  final pulumi.Input<String> contentId;
  final pulumi.Input<String> lakeId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? view;

  /// Creates a new [GetContentArgs].
  /// [contentId] Required.
  /// [lakeId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [view] Optional.
  GetContentArgs({
    required String contentId,
    required String lakeId,
    required String location,
    String? project,
    String? view,
  }) :
      contentId = pulumi.Input.asInput<String>(contentId),
      lakeId = pulumi.Input.asInput<String>(lakeId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      view = pulumi.Input.asOptionalInput<String>(view);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentId': contentId,
      'lakeId': lakeId,
      'location': location,
      'project': ?project,
      'view': ?view,
    };
  }

  factory GetContentArgs.fromMap(Map<String, dynamic> map) {
    return GetContentArgs(
      contentId: map['contentId'] as String,
      lakeId: map['lakeId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      view: map['view'] == null ? null : map['view'] as String,
    );
  }
}


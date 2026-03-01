// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataplex_v1_get_contentitem_args_doc}
/// Arguments for getContentitem.
/// {@endtemplate}
/// {@macro pulumi_dataplex_v1_get_contentitem_args_doc}
class GetContentitemArgs {
  final pulumi.Input<String> contentitemId;
  final pulumi.Input<String> lakeId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? view;

  /// Creates a new [GetContentitemArgs].
  /// [contentitemId] Required.
  /// [lakeId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [view] Optional.
  GetContentitemArgs({
    required String contentitemId,
    required String lakeId,
    required String location,
    String? project,
    String? view,
  }) : contentitemId = pulumi.Input.asInput<String>(contentitemId),
       lakeId = pulumi.Input.asInput<String>(lakeId),
       location = pulumi.Input.asInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project),
       view = pulumi.Input.asOptionalInput<String>(view);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentitemId': contentitemId,
      'lakeId': lakeId,
      'location': location,
      'project': ?project,
      'view': ?view,
    };
  }

  factory GetContentitemArgs.fromMap(Map<String, dynamic> map) {
    return GetContentitemArgs(
      contentitemId: map['contentitemId'] as String,
      lakeId: map['lakeId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      view: map['view'] == null ? null : map['view'] as String,
    );
  }
}

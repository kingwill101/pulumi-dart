// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataflow_v1b3_get_template_args_doc}
/// Arguments for getTemplate.
/// {@endtemplate}
/// {@macro pulumi_dataflow_v1b3_get_template_args_doc}
class GetTemplateArgs {
  final pulumi.Input<String> gcsPath;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? view;

  /// Creates a new [GetTemplateArgs].
  /// [gcsPath] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [view] Optional.
  GetTemplateArgs({
    required String gcsPath,
    required String location,
    String? project,
    String? view,
  })  : gcsPath = pulumi.Input.asInput<String>(gcsPath),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        view = pulumi.Input.asOptionalInput<String>(view);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['gcsPath'] = gcsPath;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final viewValue = view;
    if (viewValue != null) {
      map['view'] = viewValue;
    }
    return map;
  }

  factory GetTemplateArgs.fromMap(Map<String, dynamic> map) {
    return GetTemplateArgs(
      gcsPath: map['gcsPath'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      view: map['view'] == null ? null : map['view'] as String,
    );
  }
}

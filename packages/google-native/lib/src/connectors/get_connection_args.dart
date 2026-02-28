// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_connectors_v1_get_connection_args_doc}
/// Arguments for getConnection.
/// {@endtemplate}
/// {@macro pulumi_connectors_v1_get_connection_args_doc}
class GetConnectionArgs {
  final pulumi.Input<String> connectionId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? view;

  /// Creates a new [GetConnectionArgs].
  /// [connectionId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [view] Optional.
  GetConnectionArgs({
    required String connectionId,
    required String location,
    String? project,
    String? view,
  })  : connectionId = pulumi.Input.asInput<String>(connectionId),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        view = pulumi.Input.asOptionalInput<String>(view);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['connectionId'] = connectionId;
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

  factory GetConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetConnectionArgs(
      connectionId: map['connectionId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      view: map['view'] == null ? null : map['view'] as String,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataproc_v1_get_session_args_doc}
/// Arguments for getSession.
/// {@endtemplate}
/// {@macro pulumi_dataproc_v1_get_session_args_doc}
class GetSessionArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> sessionId;

  /// Creates a new [GetSessionArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [sessionId] Required.
  GetSessionArgs({
    required String location,
    String? project,
    required String sessionId,
  })  : location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        sessionId = pulumi.Input.asInput<String>(sessionId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['sessionId'] = sessionId;
    return map;
  }

  factory GetSessionArgs.fromMap(Map<String, dynamic> map) {
    return GetSessionArgs(
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      sessionId: map['sessionId'] as String,
    );
  }
}

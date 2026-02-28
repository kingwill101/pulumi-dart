// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logging_v2_get_sink_args_doc}
/// Arguments for getSink.
/// {@endtemplate}
/// {@macro pulumi_logging_v2_get_sink_args_doc}
class GetSinkArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> sinkId;

  /// Creates a new [GetSinkArgs].
  /// [project] Optional.
  /// [sinkId] Required.
  GetSinkArgs({
    String? project,
    required String sinkId,
  })  : project = pulumi.Input.asOptionalInput<String>(project),
        sinkId = pulumi.Input.asInput<String>(sinkId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['sinkId'] = sinkId;
    return map;
  }

  factory GetSinkArgs.fromMap(Map<String, dynamic> map) {
    return GetSinkArgs(
      project: map['project'] == null ? null : map['project'] as String,
      sinkId: map['sinkId'] as String,
    );
  }
}

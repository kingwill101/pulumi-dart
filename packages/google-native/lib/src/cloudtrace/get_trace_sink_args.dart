// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudtrace_v2beta1_get_trace_sink_args_doc}
/// Arguments for getTraceSink.
/// {@endtemplate}
/// {@macro pulumi_cloudtrace_v2beta1_get_trace_sink_args_doc}
class GetTraceSinkArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> traceSinkId;

  /// Creates a new [GetTraceSinkArgs].
  /// [project] Optional.
  /// [traceSinkId] Required.
  GetTraceSinkArgs({String? project, required String traceSinkId})
    : project = pulumi.Input.asOptionalInput<String>(project),
      traceSinkId = pulumi.Input.asInput<String>(traceSinkId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'project': ?project, 'traceSinkId': traceSinkId};
  }

  factory GetTraceSinkArgs.fromMap(Map<String, dynamic> map) {
    return GetTraceSinkArgs(
      project: map['project'] == null ? null : map['project'] as String,
      traceSinkId: map['traceSinkId'] as String,
    );
  }
}

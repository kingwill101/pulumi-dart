// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudfirewall_ai_traffic_analysis_status_ai_traffic_analysis_status_args_doc}
/// The set of arguments for AiTrafficAnalysisStatus.
/// {@endtemplate}
/// {@macro pulumi_cloudfirewall_ai_traffic_analysis_status_ai_traffic_analysis_status_args_doc}
class AiTrafficAnalysisStatusArgs {
  /// Status
  final pulumi.Input<String>? status;

  /// Creates a new [AiTrafficAnalysisStatusArgs].
  /// [status] Status
  AiTrafficAnalysisStatusArgs({this.status});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'status': ?status};
  }

  factory AiTrafficAnalysisStatusArgs.fromMap(Map<String, dynamic> map) {
    return AiTrafficAnalysisStatusArgs(
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cdn_get_real_time_log_deliveries_get_real_time_log_deliveries_args_doc}
/// Arguments for getRealTimeLogDeliveries.
/// {@endtemplate}
/// {@macro pulumi_cdn_get_real_time_log_deliveries_get_real_time_log_deliveries_args_doc}
class GetRealTimeLogDeliveriesArgs {
  final pulumi.Input<String> domain;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The status of the real-time log delivery feature. Valid Values: `online` and `offline`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetRealTimeLogDeliveriesArgs].
  /// [domain] Required.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of the real-time log delivery feature. Valid Values: `online` and `offline`.
  const GetRealTimeLogDeliveriesArgs({
    required this.domain,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': domain,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetRealTimeLogDeliveriesArgs.fromMap(Map<String, dynamic> map) {
    return GetRealTimeLogDeliveriesArgs(
      domain: pulumi.Input.fromValue(map['domain'] as String),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


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
  GetRealTimeLogDeliveriesArgs({
    required pulumi.Output<String> domain,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? status,
  }) :
      domain = pulumi.Input.asInput<String>(domain),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': domain,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetRealTimeLogDeliveriesArgs.fromMap(Map<String, dynamic> map) {
    return GetRealTimeLogDeliveriesArgs(
      domain: pulumi.Output.create<String>(map['domain'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}


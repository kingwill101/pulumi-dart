// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cdn_real_time_log_delivery_real_time_log_delivery_args_doc}
/// The set of arguments for RealTimeLogDelivery.
/// {@endtemplate}
/// {@macro pulumi_cdn_real_time_log_delivery_real_time_log_delivery_args_doc}
class RealTimeLogDeliveryArgs {
  /// The accelerated domain name for which you want to disable real-time log delivery. You can specify multiple domain names and separate them with commas (,).
  final pulumi.Input<String> domain;
  /// The ID of the region where the Log Service project is deployed. You can specify multiple region IDs and separate them with commas (,).
  ///
  /// For more information about regions, see [Regions that support real-time log delivery](https://www.alibabacloud.com/help/en/doc-detail/144883.html).
  final pulumi.Input<String> logstore;
  /// The name of the Logstore that collects log data from Alibaba Cloud CDN in real time. You can specify multiple Logstore names and separate them with commas (,).
  final pulumi.Input<String> project;
  /// The ID of the region where the Log Service project is deployed. For more information, see [Regions that support real-time log delivery](https://www.alibabacloud.com/help/en/doc-detail/144883.html).
  final pulumi.Input<String> slsRegion;
  /// Resource attribute fields that represent the status of the resource.
  ///
  /// Value:
  /// - offline
  /// - online
  final pulumi.Input<String>? status;

  /// Creates a new [RealTimeLogDeliveryArgs].
  /// [domain] The accelerated domain name for which you want to disable real-time log delivery. You can specify multiple domain names and separate them with commas (,).
  /// [logstore] The ID of the region where the Log Service project is deployed. You can specify multiple region IDs and separate them with commas (,).
  /// [project] The name of the Logstore that collects log data from Alibaba Cloud CDN in real time. You can specify multiple Logstore names and separate them with commas (,).
  /// [slsRegion] The ID of the region where the Log Service project is deployed. For more information, see [Regions that support real-time log delivery](https://www.alibabacloud.com/help/en/doc-detail/144883.html).
  /// [status] Resource attribute fields that represent the status of the resource.
  const RealTimeLogDeliveryArgs({
    required this.domain,
    required this.logstore,
    required this.project,
    required this.slsRegion,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': domain,
      'logstore': logstore,
      'project': project,
      'slsRegion': slsRegion,
      'status': ?status,
    };
  }

  factory RealTimeLogDeliveryArgs.fromMap(Map<String, dynamic> map) {
    return RealTimeLogDeliveryArgs(
      domain: pulumi.Input.fromValue(map['domain'] as String),
      logstore: pulumi.Input.fromValue(map['logstore'] as String),
      project: pulumi.Input.fromValue(map['project'] as String),
      slsRegion: pulumi.Input.fromValue(map['slsRegion'] as String),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


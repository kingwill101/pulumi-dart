// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RealTimeLogDelivery resources.
class RealTimeLogDeliveryState {
  /// The accelerated domain name for which you want to disable real-time log delivery. You can specify multiple domain names and separate them with commas (,).
  final pulumi.Input<String>? domain;
  /// The ID of the region where the Log Service project is deployed. You can specify multiple region IDs and separate them with commas (,).
  ///
  /// For more information about regions, see [Regions that support real-time log delivery](https://www.alibabacloud.com/help/en/doc-detail/144883.html).
  final pulumi.Input<String>? logstore;
  /// The name of the Logstore that collects log data from Alibaba Cloud CDN in real time. You can specify multiple Logstore names and separate them with commas (,).
  final pulumi.Input<String>? project;
  /// The ID of the region where the Log Service project is deployed. For more information, see [Regions that support real-time log delivery](https://www.alibabacloud.com/help/en/doc-detail/144883.html).
  final pulumi.Input<String>? slsRegion;
  /// Resource attribute fields that represent the status of the resource.
  ///
  /// Value:
  /// - offline
  /// - online
  final pulumi.Input<String>? status;

  /// Creates a new [RealTimeLogDeliveryState].
  /// [domain] The accelerated domain name for which you want to disable real-time log delivery. You can specify multiple domain names and separate them with commas (,).
  /// [logstore] The ID of the region where the Log Service project is deployed. You can specify multiple region IDs and separate them with commas (,).
  /// [project] The name of the Logstore that collects log data from Alibaba Cloud CDN in real time. You can specify multiple Logstore names and separate them with commas (,).
  /// [slsRegion] The ID of the region where the Log Service project is deployed. For more information, see [Regions that support real-time log delivery](https://www.alibabacloud.com/help/en/doc-detail/144883.html).
  /// [status] Resource attribute fields that represent the status of the resource.
  RealTimeLogDeliveryState({
    this.domain,
    this.logstore,
    this.project,
    this.slsRegion,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': ?domain,
      'logstore': ?logstore,
      'project': ?project,
      'slsRegion': ?slsRegion,
      'status': ?status,
    };
  }

  factory RealTimeLogDeliveryState.fromMap(Map<String, dynamic> map) {
    return RealTimeLogDeliveryState(
      domain: map['domain'] == null ? null : (map['domain']! as String).input(),
      logstore: map['logstore'] == null ? null : (map['logstore']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      slsRegion: map['slsRegion'] == null ? null : (map['slsRegion']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}


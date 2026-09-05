// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceIntegrationLogsAnomalyDetection {
  /// Specifies if DevOps Guru is configured to perform log anomaly detection on CloudWatch log groups. Valid values are `DISABLED` and `ENABLED`.
  final pulumi.Input<String?>? optInStatus;

  /// Creates a new [ServiceIntegrationLogsAnomalyDetection].
  /// [optInStatus] Specifies if DevOps Guru is configured to perform log anomaly detection on CloudWatch log groups. Valid values are `DISABLED` and `ENABLED`.
  const ServiceIntegrationLogsAnomalyDetection({
    this.optInStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'optInStatus': ?optInStatus,
    };
  }

  factory ServiceIntegrationLogsAnomalyDetection.fromMap(Map<String, dynamic> map) {
    return ServiceIntegrationLogsAnomalyDetection(
      optInStatus: (() { final guardedValue = map['optInStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

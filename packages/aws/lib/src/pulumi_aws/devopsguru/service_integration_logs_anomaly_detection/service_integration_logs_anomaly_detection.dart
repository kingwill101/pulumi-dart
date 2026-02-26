// ignore_for_file: unused_element, unnecessary_cast

class ServiceIntegrationLogsAnomalyDetection {
  /// Specifies if DevOps Guru is configured to perform log anomaly detection on CloudWatch log groups. Valid values are `DISABLED` and `ENABLED`.
  final String? optInStatus;

  ServiceIntegrationLogsAnomalyDetection({
    this.optInStatus,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final optInStatusValue = optInStatus;
    if (optInStatusValue != null) {
      map['optInStatus'] = optInStatusValue;
    }
    return map;
  }

  factory ServiceIntegrationLogsAnomalyDetection.fromMap(
      Map<String, dynamic> map) {
    return ServiceIntegrationLogsAnomalyDetection(
      optInStatus:
          map['optInStatus'] == null ? null : map['optInStatus'] as String,
    );
  }
}

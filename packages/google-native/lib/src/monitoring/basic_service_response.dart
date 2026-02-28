// ignore_for_file: unused_element, unnecessary_cast

/// A well-known service type, defined by its service type and service labels. Documentation and examples here (https://cloud.google.com/stackdriver/docs/solutions/slo-monitoring/api/api-structures#basic-svc-w-basic-sli).
class BasicServiceResponse {
  /// Labels that specify the resource that emits the monitoring data which is used for SLO reporting of this Service. Documentation and valid values for given service types here (https://cloud.google.com/stackdriver/docs/solutions/slo-monitoring/api/api-structures#basic-svc-w-basic-sli).
  final Map<String, String> serviceLabels;

  /// The type of service that this basic service defines, e.g. APP_ENGINE service type. Documentation and valid values here (https://cloud.google.com/stackdriver/docs/solutions/slo-monitoring/api/api-structures#basic-svc-w-basic-sli).
  final String serviceType;

  /// Creates a new [BasicServiceResponse].
  /// [serviceLabels] Labels that specify the resource that emits the monitoring data which is used for SLO reporting of this Service. Documentation and valid values for given service types here (https://cloud.google.com/stackdriver/docs/solutions/slo-monitoring/api/api-structures#basic-svc-w-basic-sli).
  /// [serviceType] The type of service that this basic service defines, e.g. APP_ENGINE service type. Documentation and valid values here (https://cloud.google.com/stackdriver/docs/solutions/slo-monitoring/api/api-structures#basic-svc-w-basic-sli).
  BasicServiceResponse({
    required this.serviceLabels,
    required this.serviceType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['serviceLabels'] = serviceLabels;
    map['serviceType'] = serviceType;
    return map;
  }

  factory BasicServiceResponse.fromMap(Map<String, dynamic> map) {
    return BasicServiceResponse(
      serviceLabels: (map['serviceLabels'] as Map).cast<String, String>(),
      serviceType: map['serviceType'] as String,
    );
  }
}

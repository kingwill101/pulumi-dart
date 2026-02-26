// ignore_for_file: unused_element, unnecessary_cast

class GenericServiceBasicService {
  /// Labels that specify the resource that emits the monitoring data
  /// which is used for SLO reporting of this `Service`.
  final Map<String, String>? serviceLabels;

  /// The type of service that this basic service defines, e.g.
  /// APP_ENGINE service type
  final String? serviceType;

  GenericServiceBasicService({
    this.serviceLabels,
    this.serviceType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final serviceLabelsValue = serviceLabels;
    if (serviceLabelsValue != null) {
      map['serviceLabels'] = serviceLabelsValue;
    }
    final serviceTypeValue = serviceType;
    if (serviceTypeValue != null) {
      map['serviceType'] = serviceTypeValue;
    }
    return map;
  }

  factory GenericServiceBasicService.fromMap(Map<String, dynamic> map) {
    return GenericServiceBasicService(
      serviceLabels: map['serviceLabels'] == null
          ? null
          : (map['serviceLabels'] as Map).cast<String, String>(),
      serviceType:
          map['serviceType'] == null ? null : map['serviceType'] as String,
    );
  }
}

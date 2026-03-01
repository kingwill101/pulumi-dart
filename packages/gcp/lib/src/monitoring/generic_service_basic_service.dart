// ignore_for_file: unused_element, unnecessary_cast

class GenericServiceBasicService {
  /// Labels that specify the resource that emits the monitoring data
  /// which is used for SLO reporting of this `Service`.
  final Map<String, String>? serviceLabels;

  /// The type of service that this basic service defines, e.g.
  /// APP_ENGINE service type
  final String? serviceType;

  /// Creates a new [GenericServiceBasicService].
  /// [serviceLabels] Labels that specify the resource that emits the monitoring data
  /// [serviceType] The type of service that this basic service defines, e.g.
  GenericServiceBasicService({this.serviceLabels, this.serviceType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceLabels': ?serviceLabels,
      'serviceType': ?serviceType,
    };
  }

  factory GenericServiceBasicService.fromMap(Map<String, dynamic> map) {
    return GenericServiceBasicService(
      serviceLabels: map['serviceLabels'] == null
          ? null
          : (map['serviceLabels'] as Map).cast<String, String>(),
      serviceType: map['serviceType'] == null
          ? null
          : map['serviceType'] as String,
    );
  }
}

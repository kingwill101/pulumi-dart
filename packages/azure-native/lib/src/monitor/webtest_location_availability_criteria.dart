// ignore_for_file: unused_element, unnecessary_cast


/// Specifies the metric alert rule criteria for a web test resource.
class WebtestLocationAvailabilityCriteria {
  /// The Application Insights resource Id.
  final String componentId;
  /// The number of failed locations.
  final double failedLocationCount;
  /// specifies the type of the alert criteria.
  /// Expected value is 'Microsoft.Azure.Monitor.WebtestLocationAvailabilityCriteria'.
  final String odataType;
  /// The Application Insights web test Id.
  final String webTestId;

  /// Creates a new [WebtestLocationAvailabilityCriteria].
  /// [componentId] The Application Insights resource Id.
  /// [failedLocationCount] The number of failed locations.
  /// [odataType] specifies the type of the alert criteria.
  /// [webTestId] The Application Insights web test Id.
  WebtestLocationAvailabilityCriteria({
    required this.componentId,
    required this.failedLocationCount,
    required this.odataType,
    required this.webTestId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'componentId': componentId,
      'failedLocationCount': failedLocationCount,
      'odataType': odataType,
      'webTestId': webTestId,
    };
  }

  factory WebtestLocationAvailabilityCriteria.fromMap(Map<String, dynamic> map) {
    return WebtestLocationAvailabilityCriteria(
      componentId: map['componentId'] as String,
      failedLocationCount: map['failedLocationCount'] as double,
      odataType: map['odataType'] as String,
      webTestId: map['webTestId'] as String,
    );
  }
}


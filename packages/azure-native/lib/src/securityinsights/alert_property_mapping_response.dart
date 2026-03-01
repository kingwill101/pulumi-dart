// ignore_for_file: unused_element, unnecessary_cast


/// A single alert property mapping to override
class AlertPropertyMappingResponse {
  /// The V3 alert property
  final String? alertProperty;
  /// the column name to use to override this property
  final String? value;

  /// Creates a new [AlertPropertyMappingResponse].
  /// [alertProperty] The V3 alert property
  /// [value] the column name to use to override this property
  AlertPropertyMappingResponse({
    this.alertProperty,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertProperty': ?alertProperty,
      'value': ?value,
    };
  }

  factory AlertPropertyMappingResponse.fromMap(Map<String, dynamic> map) {
    return AlertPropertyMappingResponse(
      alertProperty: map['alertProperty'] == null ? null : map['alertProperty'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}


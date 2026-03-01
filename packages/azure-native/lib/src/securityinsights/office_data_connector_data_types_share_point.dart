// ignore_for_file: unused_element, unnecessary_cast


/// SharePoint data type connection.
class OfficeDataConnectorDataTypesSharePoint {
  /// Describe whether this data type connection is enabled or not.
  final String state;

  /// Creates a new [OfficeDataConnectorDataTypesSharePoint].
  /// [state] Describe whether this data type connection is enabled or not.
  OfficeDataConnectorDataTypesSharePoint({
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': state,
    };
  }

  factory OfficeDataConnectorDataTypesSharePoint.fromMap(Map<String, dynamic> map) {
    return OfficeDataConnectorDataTypesSharePoint(
      state: map['state'] as String,
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast


/// Exchange data type connection.
class OfficeDataConnectorDataTypesResponseExchange {
  /// Describe whether this data type connection is enabled or not.
  final String state;

  /// Creates a new [OfficeDataConnectorDataTypesResponseExchange].
  /// [state] Describe whether this data type connection is enabled or not.
  OfficeDataConnectorDataTypesResponseExchange({
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': state,
    };
  }

  factory OfficeDataConnectorDataTypesResponseExchange.fromMap(Map<String, dynamic> map) {
    return OfficeDataConnectorDataTypesResponseExchange(
      state: map['state'] as String,
    );
  }
}


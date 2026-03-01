// ignore_for_file: unused_element, unnecessary_cast


/// Common field for data type in data connectors.
class DataConnectorDataTypeCommon {
  /// Describe whether this data type connection is enabled or not.
  final String state;

  /// Creates a new [DataConnectorDataTypeCommon].
  /// [state] Describe whether this data type connection is enabled or not.
  DataConnectorDataTypeCommon({
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': state,
    };
  }

  factory DataConnectorDataTypeCommon.fromMap(Map<String, dynamic> map) {
    return DataConnectorDataTypeCommon(
      state: map['state'] as String,
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast


/// Data type for indicators connection.
class TIDataConnectorDataTypesResponseIndicators {
  /// Describe whether this data type connection is enabled or not.
  final String state;

  /// Creates a new [TIDataConnectorDataTypesResponseIndicators].
  /// [state] Describe whether this data type connection is enabled or not.
  TIDataConnectorDataTypesResponseIndicators({
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': state,
    };
  }

  factory TIDataConnectorDataTypesResponseIndicators.fromMap(Map<String, dynamic> map) {
    return TIDataConnectorDataTypesResponseIndicators(
      state: map['state'] as String,
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast


/// Teams data type connection.
class OfficeDataConnectorDataTypesResponseTeams {
  /// Describe whether this data type connection is enabled or not.
  final String state;

  /// Creates a new [OfficeDataConnectorDataTypesResponseTeams].
  /// [state] Describe whether this data type connection is enabled or not.
  OfficeDataConnectorDataTypesResponseTeams({
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': state,
    };
  }

  factory OfficeDataConnectorDataTypesResponseTeams.fromMap(Map<String, dynamic> map) {
    return OfficeDataConnectorDataTypesResponseTeams(
      state: map['state'] as String,
    );
  }
}


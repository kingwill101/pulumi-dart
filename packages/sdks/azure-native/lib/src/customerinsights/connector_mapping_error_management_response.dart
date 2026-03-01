// ignore_for_file: unused_element, unnecessary_cast


/// The error management.
class ConnectorMappingErrorManagementResponse {
  /// The error limit allowed while importing data.
  final int? errorLimit;
  /// The type of error management to use for the mapping.
  final String errorManagementType;

  /// Creates a new [ConnectorMappingErrorManagementResponse].
  /// [errorLimit] The error limit allowed while importing data.
  /// [errorManagementType] The type of error management to use for the mapping.
  ConnectorMappingErrorManagementResponse({
    this.errorLimit,
    required this.errorManagementType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorLimit': ?errorLimit,
      'errorManagementType': errorManagementType,
    };
  }

  factory ConnectorMappingErrorManagementResponse.fromMap(Map<String, dynamic> map) {
    return ConnectorMappingErrorManagementResponse(
      errorLimit: map['errorLimit'] == null ? null : map['errorLimit'] as int,
      errorManagementType: map['errorManagementType'] as String,
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'error_management_types.dart';

/// The error management.
class ConnectorMappingErrorManagement {
  /// The error limit allowed while importing data.
  final int? errorLimit;
  /// The type of error management to use for the mapping.
  final ErrorManagementTypes errorManagementType;

  /// Creates a new [ConnectorMappingErrorManagement].
  /// [errorLimit] The error limit allowed while importing data.
  /// [errorManagementType] The type of error management to use for the mapping.
  ConnectorMappingErrorManagement({
    this.errorLimit,
    required this.errorManagementType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorLimit': ?errorLimit,
      'errorManagementType': errorManagementType.value,
    };
  }

  factory ConnectorMappingErrorManagement.fromMap(Map<String, dynamic> map) {
    return ConnectorMappingErrorManagement(
      errorLimit: map['errorLimit'] == null ? null : map['errorLimit'] as int,
      errorManagementType: ErrorManagementTypes.fromValue(map['errorManagementType'] as String),
    );
  }
}


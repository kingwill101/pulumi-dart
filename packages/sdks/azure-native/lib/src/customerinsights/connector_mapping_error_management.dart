// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'error_management_types.dart';

/// The error management.
class ConnectorMappingErrorManagement {
  /// The error limit allowed while importing data.
  final pulumi.Input<int?>? errorLimit;
  /// The type of error management to use for the mapping.
  final pulumi.Input<ErrorManagementTypes> errorManagementType;

  /// Creates a new [ConnectorMappingErrorManagement].
  /// [errorLimit] The error limit allowed while importing data.
  /// [errorManagementType] The type of error management to use for the mapping.
  const ConnectorMappingErrorManagement({
    this.errorLimit,
    required this.errorManagementType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorLimit': ?errorLimit,
      'errorManagementType': pulumi.Input.mapInputValue<ErrorManagementTypes, String>(errorManagementType, (value) => value.wireValue),
    };
  }

  factory ConnectorMappingErrorManagement.fromMap(Map<String, dynamic> map) {
    return ConnectorMappingErrorManagement(
      errorLimit: (() { final guardedValue = map['errorLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      errorManagementType: pulumi.Input.fromValue(ErrorManagementTypes.fromValue(map['errorManagementType']! as String)),
    );
  }
}

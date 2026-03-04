// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The error management.
class ConnectorMappingErrorManagementResponse {
  /// The error limit allowed while importing data.
  final pulumi.Input<int>? errorLimit;

  /// The type of error management to use for the mapping.
  final pulumi.Input<String> errorManagementType;

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

  factory ConnectorMappingErrorManagementResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return ConnectorMappingErrorManagementResponse(
      errorLimit: (() {
        final guardedValue = map['errorLimit'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      errorManagementType: pulumi.Input.fromValue(
        map['errorManagementType'] as String,
      ),
    );
  }
}

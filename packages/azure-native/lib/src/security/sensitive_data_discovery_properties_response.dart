// ignore_for_file: unused_element, unnecessary_cast

import 'operation_status_response.dart';

/// Properties of Sensitive Data Discovery.
class SensitiveDataDiscoveryPropertiesResponse {
  /// Indicates whether Sensitive Data Discovery should be enabled.
  final bool? isEnabled;
  /// Upon failure or partial success. Additional data describing Sensitive Data Discovery enable/disable operation.
  final OperationStatusResponse operationStatus;

  /// Creates a new [SensitiveDataDiscoveryPropertiesResponse].
  /// [isEnabled] Indicates whether Sensitive Data Discovery should be enabled.
  /// [operationStatus] Upon failure or partial success. Additional data describing Sensitive Data Discovery enable/disable operation.
  SensitiveDataDiscoveryPropertiesResponse({
    this.isEnabled,
    required this.operationStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isEnabled': ?isEnabled,
      'operationStatus': operationStatus.toMap(),
    };
  }

  factory SensitiveDataDiscoveryPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SensitiveDataDiscoveryPropertiesResponse(
      isEnabled: map['isEnabled'] == null ? null : map['isEnabled'] as bool,
      operationStatus: OperationStatusResponse.fromMap((map['operationStatus'] as Map).cast<String, dynamic>()),
    );
  }
}


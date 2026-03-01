// ignore_for_file: unused_element, unnecessary_cast

import 'error_detail_response.dart';

/// Status information for the fleet managed namespace.
class FleetManagedNamespaceStatusResponse {
  /// The last operation error of the fleet managed namespace
  final ErrorDetailResponse lastOperationError;
  /// The last operation ID for the fleet managed namespace
  final String lastOperationId;

  /// Creates a new [FleetManagedNamespaceStatusResponse].
  /// [lastOperationError] The last operation error of the fleet managed namespace
  /// [lastOperationId] The last operation ID for the fleet managed namespace
  FleetManagedNamespaceStatusResponse({
    required this.lastOperationError,
    required this.lastOperationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastOperationError': lastOperationError.toMap(),
      'lastOperationId': lastOperationId,
    };
  }

  factory FleetManagedNamespaceStatusResponse.fromMap(Map<String, dynamic> map) {
    return FleetManagedNamespaceStatusResponse(
      lastOperationError: ErrorDetailResponse.fromMap((map['lastOperationError'] as Map).cast<String, dynamic>()),
      lastOperationId: map['lastOperationId'] as String,
    );
  }
}


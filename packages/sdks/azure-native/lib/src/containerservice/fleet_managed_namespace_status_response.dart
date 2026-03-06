// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'error_detail_response.dart';

/// Status information for the fleet managed namespace.
class FleetManagedNamespaceStatusResponse {
  /// The last operation error of the fleet managed namespace
  final pulumi.Input<ErrorDetailResponse> lastOperationError;
  /// The last operation ID for the fleet managed namespace
  final pulumi.Input<String> lastOperationId;

  /// Creates a new [FleetManagedNamespaceStatusResponse].
  /// [lastOperationError] The last operation error of the fleet managed namespace
  /// [lastOperationId] The last operation ID for the fleet managed namespace
  const FleetManagedNamespaceStatusResponse({
    required this.lastOperationError,
    required this.lastOperationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastOperationError': pulumi.Input.mapInputValue<ErrorDetailResponse, Map<String, dynamic>>(lastOperationError, (value) => value.toMap()),
      'lastOperationId': lastOperationId,
    };
  }

  factory FleetManagedNamespaceStatusResponse.fromMap(Map<String, dynamic> map) {
    return FleetManagedNamespaceStatusResponse(
      lastOperationError: pulumi.Input.fromValue(ErrorDetailResponse.fromMap((map['lastOperationError']! as Map).cast<String, dynamic>())),
      lastOperationId: pulumi.Input.fromValue(map['lastOperationId'] as String),
    );
  }
}


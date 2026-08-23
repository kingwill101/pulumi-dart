// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'akri_service_status_response.dart';

/// AkriService properties.
class AkriServicePropertiesResponse {
  /// The status of the last operation.
  final pulumi.Input<String> provisioningState;
  /// The status for the service.
  final pulumi.Input<AkriServiceStatusResponse> status;

  /// Creates a new [AkriServicePropertiesResponse].
  /// [provisioningState] The status of the last operation.
  /// [status] The status for the service.
  const AkriServicePropertiesResponse({
    required this.provisioningState,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'provisioningState': provisioningState,
      'status': pulumi.Input.mapInputValue<AkriServiceStatusResponse, Map<String, dynamic>>(status, (value) => value.toMap()),
    };
  }

  factory AkriServicePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AkriServicePropertiesResponse(
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      status: pulumi.Input.fromValue(AkriServiceStatusResponse.fromMap((map['status']! as Map).cast<String, dynamic>())),
    );
  }
}

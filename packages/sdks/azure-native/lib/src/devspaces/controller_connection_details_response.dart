// ignore_for_file: unused_element, unnecessary_cast

import 'kubernetes_connection_details_response.dart';

class ControllerConnectionDetailsResponse {
  /// Base class for types that supply values used to connect to container orchestrators
  final KubernetesConnectionDetailsResponse? orchestratorSpecificConnectionDetails;

  /// Creates a new [ControllerConnectionDetailsResponse].
  /// [orchestratorSpecificConnectionDetails] Base class for types that supply values used to connect to container orchestrators
  ControllerConnectionDetailsResponse({
    this.orchestratorSpecificConnectionDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'orchestratorSpecificConnectionDetails': ?orchestratorSpecificConnectionDetails == null ? null : orchestratorSpecificConnectionDetails!.toMap(),
    };
  }

  factory ControllerConnectionDetailsResponse.fromMap(Map<String, dynamic> map) {
    return ControllerConnectionDetailsResponse(
      orchestratorSpecificConnectionDetails: map['orchestratorSpecificConnectionDetails'] == null ? null : KubernetesConnectionDetailsResponse.fromMap((map['orchestratorSpecificConnectionDetails'] as Map).cast<String, dynamic>()),
    );
  }
}


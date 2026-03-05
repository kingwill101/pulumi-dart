// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kubernetes_connection_details_response.dart';

class ControllerConnectionDetailsResponse {
  /// Base class for types that supply values used to connect to container orchestrators
  final pulumi.Input<KubernetesConnectionDetailsResponse>? orchestratorSpecificConnectionDetails;

  /// Creates a new [ControllerConnectionDetailsResponse].
  /// [orchestratorSpecificConnectionDetails] Base class for types that supply values used to connect to container orchestrators
  ControllerConnectionDetailsResponse({
    this.orchestratorSpecificConnectionDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'orchestratorSpecificConnectionDetails': ?pulumi.Input.mapOptionalInputValue<KubernetesConnectionDetailsResponse, Map<String, dynamic>>(orchestratorSpecificConnectionDetails, (value) => value.toMap()),
    };
  }

  factory ControllerConnectionDetailsResponse.fromMap(Map<String, dynamic> map) {
    return ControllerConnectionDetailsResponse(
      orchestratorSpecificConnectionDetails: (() { final guardedValue = map['orchestratorSpecificConnectionDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KubernetesConnectionDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'associated_identity_response.dart';

/// Health Model properties.
class HealthModelPropertiesOfDrillResponse {
  /// Full ARM Id of the Health Model.
  final pulumi.Input<String> healthModelId;
  /// Identity to use for Health Model operations.
  final pulumi.Input<AssociatedIdentityResponse> identity;

  /// Creates a new [HealthModelPropertiesOfDrillResponse].
  /// [healthModelId] Full ARM Id of the Health Model.
  /// [identity] Identity to use for Health Model operations.
  const HealthModelPropertiesOfDrillResponse({
    required this.healthModelId,
    required this.identity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'healthModelId': healthModelId,
      'identity': pulumi.Input.mapInputValue<AssociatedIdentityResponse, Map<String, dynamic>>(identity, (value) => value.toMap()),
    };
  }

  factory HealthModelPropertiesOfDrillResponse.fromMap(Map<String, dynamic> map) {
    return HealthModelPropertiesOfDrillResponse(
      healthModelId: pulumi.Input.fromValue(map['healthModelId'] as String),
      identity: pulumi.Input.fromValue(AssociatedIdentityResponse.fromMap((map['identity']! as Map).cast<String, dynamic>())),
    );
  }
}

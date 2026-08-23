// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'associated_identity.dart';

/// Health Model properties.
class HealthModelPropertiesOfDrill {
  /// Full ARM Id of the Health Model.
  final pulumi.Input<String> healthModelId;
  /// Identity to use for Health Model operations.
  final pulumi.Input<AssociatedIdentity> identity;

  /// Creates a new [HealthModelPropertiesOfDrill].
  /// [healthModelId] Full ARM Id of the Health Model.
  /// [identity] Identity to use for Health Model operations.
  const HealthModelPropertiesOfDrill({
    required this.healthModelId,
    required this.identity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'healthModelId': healthModelId,
      'identity': pulumi.Input.mapInputValue<AssociatedIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
    };
  }

  factory HealthModelPropertiesOfDrill.fromMap(Map<String, dynamic> map) {
    return HealthModelPropertiesOfDrill(
      healthModelId: pulumi.Input.fromValue(map['healthModelId'] as String),
      identity: pulumi.Input.fromValue(AssociatedIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())),
    );
  }
}

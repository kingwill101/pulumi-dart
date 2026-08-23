// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'associated_identity.dart';

/// RecoveryPlan properties.
class RecoveryPlanPropertiesOfDrill {
  /// Identity to use for RecoveryPlan operations.
  final pulumi.Input<AssociatedIdentity> identity;

  /// Creates a new [RecoveryPlanPropertiesOfDrill].
  /// [identity] Identity to use for RecoveryPlan operations.
  const RecoveryPlanPropertiesOfDrill({
    required this.identity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': pulumi.Input.mapInputValue<AssociatedIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
    };
  }

  factory RecoveryPlanPropertiesOfDrill.fromMap(Map<String, dynamic> map) {
    return RecoveryPlanPropertiesOfDrill(
      identity: pulumi.Input.fromValue(AssociatedIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())),
    );
  }
}

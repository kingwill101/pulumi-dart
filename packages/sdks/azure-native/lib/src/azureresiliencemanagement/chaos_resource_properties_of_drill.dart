// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'associated_identity.dart';

/// Chaos Resource properties.
class ChaosResourcePropertiesOfDrill {
  /// Identity to be used by the Chaos Resource for invoking faults on resources.
  final pulumi.Input<AssociatedIdentity> chaosResourceIdentityForFaults;
  /// Identity to use for Chaos Resource operations.
  final pulumi.Input<AssociatedIdentity> identity;

  /// Creates a new [ChaosResourcePropertiesOfDrill].
  /// [chaosResourceIdentityForFaults] Identity to be used by the Chaos Resource for invoking faults on resources.
  /// [identity] Identity to use for Chaos Resource operations.
  const ChaosResourcePropertiesOfDrill({
    required this.chaosResourceIdentityForFaults,
    required this.identity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chaosResourceIdentityForFaults': pulumi.Input.mapInputValue<AssociatedIdentity, Map<String, dynamic>>(chaosResourceIdentityForFaults, (value) => value.toMap()),
      'identity': pulumi.Input.mapInputValue<AssociatedIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
    };
  }

  factory ChaosResourcePropertiesOfDrill.fromMap(Map<String, dynamic> map) {
    return ChaosResourcePropertiesOfDrill(
      chaosResourceIdentityForFaults: pulumi.Input.fromValue(AssociatedIdentity.fromMap((map['chaosResourceIdentityForFaults']! as Map).cast<String, dynamic>())),
      identity: pulumi.Input.fromValue(AssociatedIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())),
    );
  }
}

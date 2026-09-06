// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'associated_identity.dart';

/// Chaos Experiment properties.
class ChaosExperimentPropertiesOfDrill {
  /// Identity to be used by the Chaos Experiment for invoking faults on resources.
  final pulumi.Input<AssociatedIdentity?>? chaosExperimentIdentityForFaults;
  /// Identity to use for Chaos Experiment operations.
  final pulumi.Input<AssociatedIdentity?>? identity;
  /// Region for chaosExperiment resource.
  final pulumi.Input<String?>? region;
  /// Subscription for chaosExperiment resource.
  final pulumi.Input<String?>? subscription;

  /// Creates a new [ChaosExperimentPropertiesOfDrill].
  /// [chaosExperimentIdentityForFaults] Identity to be used by the Chaos Experiment for invoking faults on resources.
  /// [identity] Identity to use for Chaos Experiment operations.
  /// [region] Region for chaosExperiment resource.
  /// [subscription] Subscription for chaosExperiment resource.
  const ChaosExperimentPropertiesOfDrill({
    this.chaosExperimentIdentityForFaults,
    this.identity,
    this.region,
    this.subscription,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chaosExperimentIdentityForFaults': ?pulumi.Input.mapOptionalInputValue<AssociatedIdentity, Map<String, dynamic>>(chaosExperimentIdentityForFaults, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<AssociatedIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'region': ?region,
      'subscription': ?subscription,
    };
  }

  factory ChaosExperimentPropertiesOfDrill.fromMap(Map<String, dynamic> map) {
    return ChaosExperimentPropertiesOfDrill(
      chaosExperimentIdentityForFaults: (() { final guardedValue = map['chaosExperimentIdentityForFaults']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AssociatedIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AssociatedIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subscription: (() { final guardedValue = map['subscription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

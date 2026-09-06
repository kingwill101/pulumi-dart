// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'associated_identity_response.dart';

/// Chaos Experiment properties.
class ChaosExperimentPropertiesOfDrillResponse {
  /// Chaos Experiment resource created for this Drill
  final pulumi.Input<String> chaosExperimentId;
  /// Identity to be used by the Chaos Experiment for invoking faults on resources.
  final pulumi.Input<AssociatedIdentityResponse?>? chaosExperimentIdentityForFaults;
  /// Duration of faults.
  final pulumi.Input<int> faultDurationInMin;
  /// Identity to use for Chaos Experiment operations.
  final pulumi.Input<AssociatedIdentityResponse?>? identity;
  /// Region for chaosExperiment resource.
  final pulumi.Input<String?>? region;
  /// Subscription for chaosExperiment resource.
  final pulumi.Input<String?>? subscription;

  /// Creates a new [ChaosExperimentPropertiesOfDrillResponse].
  /// [chaosExperimentId] Chaos Experiment resource created for this Drill
  /// [chaosExperimentIdentityForFaults] Identity to be used by the Chaos Experiment for invoking faults on resources.
  /// [faultDurationInMin] Duration of faults.
  /// [identity] Identity to use for Chaos Experiment operations.
  /// [region] Region for chaosExperiment resource.
  /// [subscription] Subscription for chaosExperiment resource.
  const ChaosExperimentPropertiesOfDrillResponse({
    required this.chaosExperimentId,
    this.chaosExperimentIdentityForFaults,
    required this.faultDurationInMin,
    this.identity,
    this.region,
    this.subscription,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chaosExperimentId': chaosExperimentId,
      'chaosExperimentIdentityForFaults': ?pulumi.Input.mapOptionalInputValue<AssociatedIdentityResponse, Map<String, dynamic>>(chaosExperimentIdentityForFaults, (value) => value.toMap()),
      'faultDurationInMin': faultDurationInMin,
      'identity': ?pulumi.Input.mapOptionalInputValue<AssociatedIdentityResponse, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'region': ?region,
      'subscription': ?subscription,
    };
  }

  factory ChaosExperimentPropertiesOfDrillResponse.fromMap(Map<String, dynamic> map) {
    return ChaosExperimentPropertiesOfDrillResponse(
      chaosExperimentId: pulumi.Input.fromValue(map['chaosExperimentId'] as String),
      chaosExperimentIdentityForFaults: (() { final guardedValue = map['chaosExperimentIdentityForFaults']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AssociatedIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      faultDurationInMin: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['faultDurationInMin'])),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AssociatedIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subscription: (() { final guardedValue = map['subscription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

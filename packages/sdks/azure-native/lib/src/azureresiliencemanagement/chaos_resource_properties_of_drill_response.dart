// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'associated_identity_response.dart';

/// Chaos Resource properties.
class ChaosResourcePropertiesOfDrillResponse {
  /// Chaos Resource created for this Drill
  final pulumi.Input<String> chaosResourceId;
  /// Identity to be used by the Chaos Resource for invoking faults on resources.
  final pulumi.Input<AssociatedIdentityResponse> chaosResourceIdentityForFaults;
  /// Duration of faults.
  final pulumi.Input<int> faultDurationInMin;
  /// Identity to use for Chaos Resource operations.
  final pulumi.Input<AssociatedIdentityResponse> identity;

  /// Creates a new [ChaosResourcePropertiesOfDrillResponse].
  /// [chaosResourceId] Chaos Resource created for this Drill
  /// [chaosResourceIdentityForFaults] Identity to be used by the Chaos Resource for invoking faults on resources.
  /// [faultDurationInMin] Duration of faults.
  /// [identity] Identity to use for Chaos Resource operations.
  const ChaosResourcePropertiesOfDrillResponse({
    required this.chaosResourceId,
    required this.chaosResourceIdentityForFaults,
    required this.faultDurationInMin,
    required this.identity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chaosResourceId': chaosResourceId,
      'chaosResourceIdentityForFaults': pulumi.Input.mapInputValue<AssociatedIdentityResponse, Map<String, dynamic>>(chaosResourceIdentityForFaults, (value) => value.toMap()),
      'faultDurationInMin': faultDurationInMin,
      'identity': pulumi.Input.mapInputValue<AssociatedIdentityResponse, Map<String, dynamic>>(identity, (value) => value.toMap()),
    };
  }

  factory ChaosResourcePropertiesOfDrillResponse.fromMap(Map<String, dynamic> map) {
    return ChaosResourcePropertiesOfDrillResponse(
      chaosResourceId: pulumi.Input.fromValue(map['chaosResourceId'] as String),
      chaosResourceIdentityForFaults: pulumi.Input.fromValue(AssociatedIdentityResponse.fromMap((map['chaosResourceIdentityForFaults']! as Map).cast<String, dynamic>())),
      faultDurationInMin: pulumi.Input.fromValue(map['faultDurationInMin'] as int),
      identity: pulumi.Input.fromValue(AssociatedIdentityResponse.fromMap((map['identity']! as Map).cast<String, dynamic>())),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'extended_location_response.dart';

/// Recovery plan A2A specific details.
class RecoveryPlanA2ADetailsResponse {
  /// Gets the Instance type.
  /// Expected value is 'A2A'.
  final String instanceType;
  /// The primary extended location.
  final ExtendedLocationResponse? primaryExtendedLocation;
  /// The primary zone.
  final String? primaryZone;
  /// The recovery extended location.
  final ExtendedLocationResponse? recoveryExtendedLocation;
  /// The recovery zone.
  final String? recoveryZone;

  /// Creates a new [RecoveryPlanA2ADetailsResponse].
  /// [instanceType] Gets the Instance type.
  /// [primaryExtendedLocation] The primary extended location.
  /// [primaryZone] The primary zone.
  /// [recoveryExtendedLocation] The recovery extended location.
  /// [recoveryZone] The recovery zone.
  RecoveryPlanA2ADetailsResponse({
    required this.instanceType,
    this.primaryExtendedLocation,
    this.primaryZone,
    this.recoveryExtendedLocation,
    this.recoveryZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceType': instanceType,
      'primaryExtendedLocation': ?primaryExtendedLocation == null ? null : primaryExtendedLocation!.toMap(),
      'primaryZone': ?primaryZone,
      'recoveryExtendedLocation': ?recoveryExtendedLocation == null ? null : recoveryExtendedLocation!.toMap(),
      'recoveryZone': ?recoveryZone,
    };
  }

  factory RecoveryPlanA2ADetailsResponse.fromMap(Map<String, dynamic> map) {
    return RecoveryPlanA2ADetailsResponse(
      instanceType: map['instanceType'] as String,
      primaryExtendedLocation: map['primaryExtendedLocation'] == null ? null : ExtendedLocationResponse.fromMap((map['primaryExtendedLocation'] as Map).cast<String, dynamic>()),
      primaryZone: map['primaryZone'] == null ? null : map['primaryZone'] as String,
      recoveryExtendedLocation: map['recoveryExtendedLocation'] == null ? null : ExtendedLocationResponse.fromMap((map['recoveryExtendedLocation'] as Map).cast<String, dynamic>()),
      recoveryZone: map['recoveryZone'] == null ? null : map['recoveryZone'] as String,
    );
  }
}


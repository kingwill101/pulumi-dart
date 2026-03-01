// ignore_for_file: unused_element, unnecessary_cast

import 'extended_location_response.dart';

/// ExtendedLocation details data.
class A2AExtendedLocationDetailsResponse {
  /// The primary ExtendedLocation.
  final ExtendedLocationResponse? primaryExtendedLocation;
  /// The recovery ExtendedLocation.
  final ExtendedLocationResponse? recoveryExtendedLocation;

  /// Creates a new [A2AExtendedLocationDetailsResponse].
  /// [primaryExtendedLocation] The primary ExtendedLocation.
  /// [recoveryExtendedLocation] The recovery ExtendedLocation.
  A2AExtendedLocationDetailsResponse({
    this.primaryExtendedLocation,
    this.recoveryExtendedLocation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'primaryExtendedLocation': ?primaryExtendedLocation == null ? null : primaryExtendedLocation!.toMap(),
      'recoveryExtendedLocation': ?recoveryExtendedLocation == null ? null : recoveryExtendedLocation!.toMap(),
    };
  }

  factory A2AExtendedLocationDetailsResponse.fromMap(Map<String, dynamic> map) {
    return A2AExtendedLocationDetailsResponse(
      primaryExtendedLocation: map['primaryExtendedLocation'] == null ? null : ExtendedLocationResponse.fromMap((map['primaryExtendedLocation'] as Map).cast<String, dynamic>()),
      recoveryExtendedLocation: map['recoveryExtendedLocation'] == null ? null : ExtendedLocationResponse.fromMap((map['recoveryExtendedLocation'] as Map).cast<String, dynamic>()),
    );
  }
}


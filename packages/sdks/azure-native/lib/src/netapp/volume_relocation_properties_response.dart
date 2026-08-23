// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Volume relocation properties
class VolumeRelocationPropertiesResponse {
  /// Has relocation finished and is ready to be cleaned up
  final pulumi.Input<bool> readyToBeFinalized;
  /// Has relocation been requested for this volume
  final pulumi.Input<bool>? relocationRequested;

  /// Creates a new [VolumeRelocationPropertiesResponse].
  /// [readyToBeFinalized] Has relocation finished and is ready to be cleaned up
  /// [relocationRequested] Has relocation been requested for this volume
  const VolumeRelocationPropertiesResponse({
    required this.readyToBeFinalized,
    this.relocationRequested,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'readyToBeFinalized': readyToBeFinalized,
      'relocationRequested': ?relocationRequested,
    };
  }

  factory VolumeRelocationPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return VolumeRelocationPropertiesResponse(
      readyToBeFinalized: pulumi.Input.fromValue(map['readyToBeFinalized'] as bool),
      relocationRequested: (() { final guardedValue = map['relocationRequested']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

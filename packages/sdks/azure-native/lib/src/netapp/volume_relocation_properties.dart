// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Volume relocation properties
class VolumeRelocationProperties {
  /// Has relocation been requested for this volume
  final pulumi.Input<bool>? relocationRequested;

  /// Creates a new [VolumeRelocationProperties].
  /// [relocationRequested] Has relocation been requested for this volume
  VolumeRelocationProperties({
    this.relocationRequested,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'relocationRequested': ?relocationRequested,
    };
  }

  factory VolumeRelocationProperties.fromMap(Map<String, dynamic> map) {
    return VolumeRelocationProperties(
      relocationRequested: map['relocationRequested'] == null ? null : (map['relocationRequested']! as bool).input(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StorageSpacesPropertiesHciStorageProfile {
  /// Resource group in MOC(Microsoft On-premises Cloud)
  final pulumi.Input<String>? mocGroup;
  /// Location in MOC(Microsoft On-premises Cloud)
  final pulumi.Input<String>? mocLocation;
  /// Name of the storage container in MOC(Microsoft On-premises Cloud)
  final pulumi.Input<String>? mocStorageContainer;

  /// Creates a new [StorageSpacesPropertiesHciStorageProfile].
  /// [mocGroup] Resource group in MOC(Microsoft On-premises Cloud)
  /// [mocLocation] Location in MOC(Microsoft On-premises Cloud)
  /// [mocStorageContainer] Name of the storage container in MOC(Microsoft On-premises Cloud)
  const StorageSpacesPropertiesHciStorageProfile({
    this.mocGroup,
    this.mocLocation,
    this.mocStorageContainer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mocGroup': ?mocGroup,
      'mocLocation': ?mocLocation,
      'mocStorageContainer': ?mocStorageContainer,
    };
  }

  factory StorageSpacesPropertiesHciStorageProfile.fromMap(Map<String, dynamic> map) {
    return StorageSpacesPropertiesHciStorageProfile(
      mocGroup: (() { final guardedValue = map['mocGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mocLocation: (() { final guardedValue = map['mocLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mocStorageContainer: (() { final guardedValue = map['mocStorageContainer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


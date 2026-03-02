// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StorageSpacesPropertiesResponseHciStorageProfile {
  /// Resource group in MOC(Microsoft On-premises Cloud)
  final pulumi.Input<String>? mocGroup;
  /// Location in MOC(Microsoft On-premises Cloud)
  final pulumi.Input<String>? mocLocation;
  /// Name of the storage container in MOC(Microsoft On-premises Cloud)
  final pulumi.Input<String>? mocStorageContainer;

  /// Creates a new [StorageSpacesPropertiesResponseHciStorageProfile].
  /// [mocGroup] Resource group in MOC(Microsoft On-premises Cloud)
  /// [mocLocation] Location in MOC(Microsoft On-premises Cloud)
  /// [mocStorageContainer] Name of the storage container in MOC(Microsoft On-premises Cloud)
  StorageSpacesPropertiesResponseHciStorageProfile({
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

  factory StorageSpacesPropertiesResponseHciStorageProfile.fromMap(Map<String, dynamic> map) {
    return StorageSpacesPropertiesResponseHciStorageProfile(
      mocGroup: map['mocGroup'] == null ? null : (map['mocGroup'] as String).input(),
      mocLocation: map['mocLocation'] == null ? null : (map['mocLocation'] as String).input(),
      mocStorageContainer: map['mocStorageContainer'] == null ? null : (map['mocStorageContainer'] as String).input(),
    );
  }
}


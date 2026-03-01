// ignore_for_file: unused_element, unnecessary_cast

import 'disk_exclusion_properties.dart';

/// Extended Properties for Azure IaasVM Backup.
class ExtendedProperties {
  /// Extended Properties for Disk Exclusion.
  final DiskExclusionProperties? diskExclusionProperties;
  /// Linux VM name
  final String? linuxVmApplicationName;

  /// Creates a new [ExtendedProperties].
  /// [diskExclusionProperties] Extended Properties for Disk Exclusion.
  /// [linuxVmApplicationName] Linux VM name
  ExtendedProperties({
    this.diskExclusionProperties,
    this.linuxVmApplicationName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskExclusionProperties': ?diskExclusionProperties == null ? null : diskExclusionProperties!.toMap(),
      'linuxVmApplicationName': ?linuxVmApplicationName,
    };
  }

  factory ExtendedProperties.fromMap(Map<String, dynamic> map) {
    return ExtendedProperties(
      diskExclusionProperties: map['diskExclusionProperties'] == null ? null : DiskExclusionProperties.fromMap((map['diskExclusionProperties'] as Map).cast<String, dynamic>()),
      linuxVmApplicationName: map['linuxVmApplicationName'] == null ? null : map['linuxVmApplicationName'] as String,
    );
  }
}


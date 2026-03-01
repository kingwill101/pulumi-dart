// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk_volume_configuration.dart';

/// The Disk Configuration Details.
class DiskConfiguration {
  /// The disk configuration for the db volume. For HANA, Required volumes are: ['hana/data', 'hana/log', hana/shared', 'usr/sap', 'os'], Optional volume : ['backup'].
  final Map<String, DiskVolumeConfiguration>? diskVolumeConfigurations;

  /// Creates a new [DiskConfiguration].
  /// [diskVolumeConfigurations] The disk configuration for the db volume. For HANA, Required volumes are: ['hana/data', 'hana/log', hana/shared', 'usr/sap', 'os'], Optional volume : ['backup'].
  DiskConfiguration({
    this.diskVolumeConfigurations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskVolumeConfigurations': ?diskVolumeConfigurations == null ? null : pulumi.Input.encodeMapValues<DiskVolumeConfiguration, Map<String, dynamic>>(diskVolumeConfigurations!, (value) => value.toMap()),
    };
  }

  factory DiskConfiguration.fromMap(Map<String, dynamic> map) {
    return DiskConfiguration(
      diskVolumeConfigurations: map['diskVolumeConfigurations'] == null ? null : pulumi.Input.decodeMapValues<DiskVolumeConfiguration>(map['diskVolumeConfigurations'], (value) => DiskVolumeConfiguration.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}


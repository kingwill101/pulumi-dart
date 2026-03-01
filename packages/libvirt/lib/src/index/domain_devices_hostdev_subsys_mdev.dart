// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_hostdev_subsys_mdev_source.dart';

class DomainDevicesHostdevSubsysMDev {
  /// Sets the display attributes for the multimedia subsystem device.
  final String? display;
  /// Specifies the model of the multimedia subsystem device being used by the host device.
  final String? model;
  /// Configures the video memory settings for the multimedia subsystem device.
  final String? ramFb;
  /// Defines the source attributes for the multimedia subsystem device.
  final DomainDevicesHostdevSubsysMDevSource? source;

  /// Creates a new [DomainDevicesHostdevSubsysMDev].
  /// [display] Sets the display attributes for the multimedia subsystem device.
  /// [model] Specifies the model of the multimedia subsystem device being used by the host device.
  /// [ramFb] Configures the video memory settings for the multimedia subsystem device.
  /// [source] Defines the source attributes for the multimedia subsystem device.
  DomainDevicesHostdevSubsysMDev({
    this.display,
    this.model,
    this.ramFb,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'display': ?display,
      'model': ?model,
      'ramFb': ?ramFb,
      'source': ?source == null ? null : source!.toMap(),
    };
  }

  factory DomainDevicesHostdevSubsysMDev.fromMap(Map<String, dynamic> map) {
    return DomainDevicesHostdevSubsysMDev(
      display: map['display'] == null ? null : map['display'] as String,
      model: map['model'] == null ? null : map['model'] as String,
      ramFb: map['ramFb'] == null ? null : map['ramFb'] as String,
      source: map['source'] == null ? null : DomainDevicesHostdevSubsysMDevSource.fromMap((map['source'] as Map).cast<String, dynamic>()),
    );
  }
}


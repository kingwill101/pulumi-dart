// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_console_source_dev_sec_label.dart';

class DomainDevicesConsoleSourceDev {
  /// Specifies the path to the device file for the EGD backend.
  final String path;
  /// Configures the security label settings for the device source in the EGD backend.
  final List<DomainDevicesConsoleSourceDevSecLabel>? secLabels;

  /// Creates a new [DomainDevicesConsoleSourceDev].
  /// [path] Specifies the path to the device file for the EGD backend.
  /// [secLabels] Configures the security label settings for the device source in the EGD backend.
  DomainDevicesConsoleSourceDev({
    required this.path,
    this.secLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
      'secLabels': ?secLabels == null ? null : pulumi.Input.encodeList<DomainDevicesConsoleSourceDevSecLabel, Map<String, dynamic>>(secLabels!, (value) => value.toMap()),
    };
  }

  factory DomainDevicesConsoleSourceDev.fromMap(Map<String, dynamic> map) {
    return DomainDevicesConsoleSourceDev(
      path: map['path'] as String,
      secLabels: map['secLabels'] == null ? null : pulumi.Input.decodeList<DomainDevicesConsoleSourceDevSecLabel>(map['secLabels'], (value) => DomainDevicesConsoleSourceDevSecLabel.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}


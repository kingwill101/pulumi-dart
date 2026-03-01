// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_smartcard_passthrough_dev_sec_label.dart';

class DomainDevicesSmartcardPassthroughDev {
  /// Specifies the path to the device file for the EGD backend.
  final String path;
  /// Configures the security label settings for the device source in the EGD backend.
  final List<DomainDevicesSmartcardPassthroughDevSecLabel>? secLabels;

  /// Creates a new [DomainDevicesSmartcardPassthroughDev].
  /// [path] Specifies the path to the device file for the EGD backend.
  /// [secLabels] Configures the security label settings for the device source in the EGD backend.
  DomainDevicesSmartcardPassthroughDev({
    required this.path,
    this.secLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
      'secLabels': ?secLabels == null ? null : pulumi.Input.encodeList<DomainDevicesSmartcardPassthroughDevSecLabel, Map<String, dynamic>>(secLabels!, (value) => value.toMap()),
    };
  }

  factory DomainDevicesSmartcardPassthroughDev.fromMap(Map<String, dynamic> map) {
    return DomainDevicesSmartcardPassthroughDev(
      path: map['path'] as String,
      secLabels: map['secLabels'] == null ? null : pulumi.Input.decodeList<DomainDevicesSmartcardPassthroughDevSecLabel>(map['secLabels'], (value) => DomainDevicesSmartcardPassthroughDevSecLabel.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}


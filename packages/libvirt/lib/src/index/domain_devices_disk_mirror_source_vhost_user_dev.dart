// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_mirror_source_vhost_user_dev_sec_label.dart';

class DomainDevicesDiskMirrorSourceVhostUserDev {
  /// Specifies the path to the device file for the EGD backend.
  final String path;
  /// Configures the security label settings for the device source in the EGD backend.
  final List<DomainDevicesDiskMirrorSourceVhostUserDevSecLabel>? secLabels;

  /// Creates a new [DomainDevicesDiskMirrorSourceVhostUserDev].
  /// [path] Specifies the path to the device file for the EGD backend.
  /// [secLabels] Configures the security label settings for the device source in the EGD backend.
  DomainDevicesDiskMirrorSourceVhostUserDev({
    required this.path,
    this.secLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
      'secLabels': ?secLabels == null ? null : pulumi.Input.encodeList<DomainDevicesDiskMirrorSourceVhostUserDevSecLabel, Map<String, dynamic>>(secLabels!, (value) => value.toMap()),
    };
  }

  factory DomainDevicesDiskMirrorSourceVhostUserDev.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorSourceVhostUserDev(
      path: map['path'] as String,
      secLabels: map['secLabels'] == null ? null : pulumi.Input.decodeList<DomainDevicesDiskMirrorSourceVhostUserDevSecLabel>(map['secLabels'], (value) => DomainDevicesDiskMirrorSourceVhostUserDevSecLabel.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}


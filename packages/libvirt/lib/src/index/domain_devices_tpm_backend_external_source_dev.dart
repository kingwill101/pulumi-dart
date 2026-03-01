// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_tpm_backend_external_source_dev_sec_label.dart';

class DomainDevicesTpmBackendExternalSourceDev {
  /// Specifies the path to the device file for the EGD backend.
  final String path;
  /// Configures the security label settings for the device source in the EGD backend.
  final List<DomainDevicesTpmBackendExternalSourceDevSecLabel>? secLabels;

  /// Creates a new [DomainDevicesTpmBackendExternalSourceDev].
  /// [path] Specifies the path to the device file for the EGD backend.
  /// [secLabels] Configures the security label settings for the device source in the EGD backend.
  DomainDevicesTpmBackendExternalSourceDev({
    required this.path,
    this.secLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
      'secLabels': ?secLabels == null ? null : pulumi.Input.encodeList<DomainDevicesTpmBackendExternalSourceDevSecLabel, Map<String, dynamic>>(secLabels!, (value) => value.toMap()),
    };
  }

  factory DomainDevicesTpmBackendExternalSourceDev.fromMap(Map<String, dynamic> map) {
    return DomainDevicesTpmBackendExternalSourceDev(
      path: map['path'] as String,
      secLabels: map['secLabels'] == null ? null : pulumi.Input.decodeList<DomainDevicesTpmBackendExternalSourceDevSecLabel>(map['secLabels'], (value) => DomainDevicesTpmBackendExternalSourceDevSecLabel.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}


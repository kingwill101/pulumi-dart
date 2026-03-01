// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_hostdev_subsys_scsi_source_host.dart';
import 'domain_devices_hostdev_subsys_scsi_source_iscsi.dart';

class DomainDevicesHostdevSubsysScsiSource {
  /// Configures the host settings for the SCSI device source.
  final DomainDevicesHostdevSubsysScsiSourceHost? host;
  /// Defines the iSCSI source parameters for the SCSI device.
  final DomainDevicesHostdevSubsysScsiSourceIscsi? iscsi;

  /// Creates a new [DomainDevicesHostdevSubsysScsiSource].
  /// [host] Configures the host settings for the SCSI device source.
  /// [iscsi] Defines the iSCSI source parameters for the SCSI device.
  DomainDevicesHostdevSubsysScsiSource({
    this.host,
    this.iscsi,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'host': ?host == null ? null : host!.toMap(),
      'iscsi': ?iscsi == null ? null : iscsi!.toMap(),
    };
  }

  factory DomainDevicesHostdevSubsysScsiSource.fromMap(Map<String, dynamic> map) {
    return DomainDevicesHostdevSubsysScsiSource(
      host: map['host'] == null ? null : DomainDevicesHostdevSubsysScsiSourceHost.fromMap((map['host'] as Map).cast<String, dynamic>()),
      iscsi: map['iscsi'] == null ? null : DomainDevicesHostdevSubsysScsiSourceIscsi.fromMap((map['iscsi'] as Map).cast<String, dynamic>()),
    );
  }
}


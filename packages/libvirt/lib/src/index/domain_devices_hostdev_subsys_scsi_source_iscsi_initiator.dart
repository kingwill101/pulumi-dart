// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_hostdev_subsys_scsi_source_iscsi_initiator_iqn.dart';

class DomainDevicesHostdevSubsysScsiSourceIscsiInitiator {
  /// Defines the IQN (iSCSI Qualified Name) for the iSCSI initiator.
  final DomainDevicesHostdevSubsysScsiSourceIscsiInitiatorIqn? iqn;

  /// Creates a new [DomainDevicesHostdevSubsysScsiSourceIscsiInitiator].
  /// [iqn] Defines the IQN (iSCSI Qualified Name) for the iSCSI initiator.
  DomainDevicesHostdevSubsysScsiSourceIscsiInitiator({
    this.iqn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iqn': ?iqn == null ? null : iqn!.toMap(),
    };
  }

  factory DomainDevicesHostdevSubsysScsiSourceIscsiInitiator.fromMap(Map<String, dynamic> map) {
    return DomainDevicesHostdevSubsysScsiSourceIscsiInitiator(
      iqn: map['iqn'] == null ? null : DomainDevicesHostdevSubsysScsiSourceIscsiInitiatorIqn.fromMap((map['iqn'] as Map).cast<String, dynamic>()),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_hostdev_subsys_scsi_source_iscsi_auth.dart';
import 'domain_devices_hostdev_subsys_scsi_source_iscsi_host.dart';
import 'domain_devices_hostdev_subsys_scsi_source_iscsi_initiator.dart';

class DomainDevicesHostdevSubsysScsiSourceIscsi {
  /// Configures authentication settings for the iSCSI source.
  final DomainDevicesHostdevSubsysScsiSourceIscsiAuth? auth;
  /// Configures the iSCSI host settings for the device source.
  final List<DomainDevicesHostdevSubsysScsiSourceIscsiHost>? hosts;
  /// Configures the iSCSI initiator settings for the device source.
  final DomainDevicesHostdevSubsysScsiSourceIscsiInitiator? initiator;
  /// Specifies the name for the iSCSI source configuration.
  final String name;

  /// Creates a new [DomainDevicesHostdevSubsysScsiSourceIscsi].
  /// [auth] Configures authentication settings for the iSCSI source.
  /// [hosts] Configures the iSCSI host settings for the device source.
  /// [initiator] Configures the iSCSI initiator settings for the device source.
  /// [name] Specifies the name for the iSCSI source configuration.
  DomainDevicesHostdevSubsysScsiSourceIscsi({
    this.auth,
    this.hosts,
    this.initiator,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auth': ?auth == null ? null : auth!.toMap(),
      'hosts': ?hosts == null ? null : pulumi.Input.encodeList<DomainDevicesHostdevSubsysScsiSourceIscsiHost, Map<String, dynamic>>(hosts!, (value) => value.toMap()),
      'initiator': ?initiator == null ? null : initiator!.toMap(),
      'name': name,
    };
  }

  factory DomainDevicesHostdevSubsysScsiSourceIscsi.fromMap(Map<String, dynamic> map) {
    return DomainDevicesHostdevSubsysScsiSourceIscsi(
      auth: map['auth'] == null ? null : DomainDevicesHostdevSubsysScsiSourceIscsiAuth.fromMap((map['auth'] as Map).cast<String, dynamic>()),
      hosts: map['hosts'] == null ? null : pulumi.Input.decodeList<DomainDevicesHostdevSubsysScsiSourceIscsiHost>(map['hosts'], (value) => DomainDevicesHostdevSubsysScsiSourceIscsiHost.fromMap((value as Map).cast<String, dynamic>())),
      initiator: map['initiator'] == null ? null : DomainDevicesHostdevSubsysScsiSourceIscsiInitiator.fromMap((map['initiator'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
    );
  }
}


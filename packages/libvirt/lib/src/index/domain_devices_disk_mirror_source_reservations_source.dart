// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_disk_mirror_source_reservations_source_dbus.dart';
import 'domain_devices_disk_mirror_source_reservations_source_dev.dart';
import 'domain_devices_disk_mirror_source_reservations_source_file.dart';
import 'domain_devices_disk_mirror_source_reservations_source_nmdm.dart';
import 'domain_devices_disk_mirror_source_reservations_source_pipe.dart';
import 'domain_devices_disk_mirror_source_reservations_source_pty.dart';
import 'domain_devices_disk_mirror_source_reservations_source_qemuvd_agent.dart';
import 'domain_devices_disk_mirror_source_reservations_source_spice_port.dart';
import 'domain_devices_disk_mirror_source_reservations_source_tcp.dart';
import 'domain_devices_disk_mirror_source_reservations_source_udp.dart';
import 'domain_devices_disk_mirror_source_reservations_source_unix.dart';

class DomainDevicesDiskMirrorSourceReservationsSource {
  /// Configures the DBus source for the EGD backend.
  final DomainDevicesDiskMirrorSourceReservationsSourceDbus? dbus;
  /// Defines the device path for the source of the EGD backend.
  final DomainDevicesDiskMirrorSourceReservationsSourceDev? dev;
  /// Defines a file source for the RNG EGD backend.
  final DomainDevicesDiskMirrorSourceReservationsSourceFile? file;
  /// Configures the NMDM (null modem) device source for the EGD backend.
  final DomainDevicesDiskMirrorSourceReservationsSourceNmdm? nmdm;
  /// Configures settings for a null device used in reservations for storage.
  final bool? null_;
  /// Defines a pipe source for the EGD backend.
  final DomainDevicesDiskMirrorSourceReservationsSourcePipe? pipe;
  /// Defines a pseudo-terminal (PTY) source for the EGD backend.
  final DomainDevicesDiskMirrorSourceReservationsSourcePty? pty;
  /// Configures the QEMU guest agent for the random number generator backend.
  final DomainDevicesDiskMirrorSourceReservationsSourceQemuvdAgent? qemuvdAgent;
  /// Configures the SPICE port settings for the random number generator backend.
  final DomainDevicesDiskMirrorSourceReservationsSourceSpicePort? spicePort;
  /// Configures settings for the SPICE VMC used in reservations related to disk mirroring.
  final bool? spiceVmc;
  /// Manages standard I/O settings for the reservations in disk mirroring.
  final bool? stdIo;
  /// Configures TCP settings for the random number generator backend.
  final DomainDevicesDiskMirrorSourceReservationsSourceTcp? tcp;
  /// Configures UDP settings for the random number generator backend.
  final DomainDevicesDiskMirrorSourceReservationsSourceUdp? udp;
  /// Configures UNIX domain socket settings for the random number generator backend.
  final DomainDevicesDiskMirrorSourceReservationsSourceUnix? unix;
  /// Configures settings for the VC source in the backing store for disk mirroring reservations.
  final bool? vc;

  /// Creates a new [DomainDevicesDiskMirrorSourceReservationsSource].
  /// [dbus] Configures the DBus source for the EGD backend.
  /// [dev] Defines the device path for the source of the EGD backend.
  /// [file] Defines a file source for the RNG EGD backend.
  /// [nmdm] Configures the NMDM (null modem) device source for the EGD backend.
  /// [null_] Configures settings for a null device used in reservations for storage.
  /// [pipe] Defines a pipe source for the EGD backend.
  /// [pty] Defines a pseudo-terminal (PTY) source for the EGD backend.
  /// [qemuvdAgent] Configures the QEMU guest agent for the random number generator backend.
  /// [spicePort] Configures the SPICE port settings for the random number generator backend.
  /// [spiceVmc] Configures settings for the SPICE VMC used in reservations related to disk mirroring.
  /// [stdIo] Manages standard I/O settings for the reservations in disk mirroring.
  /// [tcp] Configures TCP settings for the random number generator backend.
  /// [udp] Configures UDP settings for the random number generator backend.
  /// [unix] Configures UNIX domain socket settings for the random number generator backend.
  /// [vc] Configures settings for the VC source in the backing store for disk mirroring reservations.
  DomainDevicesDiskMirrorSourceReservationsSource({
    this.dbus,
    this.dev,
    this.file,
    this.nmdm,
    this.null_,
    this.pipe,
    this.pty,
    this.qemuvdAgent,
    this.spicePort,
    this.spiceVmc,
    this.stdIo,
    this.tcp,
    this.udp,
    this.unix,
    this.vc,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbus': ?dbus == null ? null : dbus!.toMap(),
      'dev': ?dev == null ? null : dev!.toMap(),
      'file': ?file == null ? null : file!.toMap(),
      'nmdm': ?nmdm == null ? null : nmdm!.toMap(),
      'null': ?null_,
      'pipe': ?pipe == null ? null : pipe!.toMap(),
      'pty': ?pty == null ? null : pty!.toMap(),
      'qemuvdAgent': ?qemuvdAgent == null ? null : qemuvdAgent!.toMap(),
      'spicePort': ?spicePort == null ? null : spicePort!.toMap(),
      'spiceVmc': ?spiceVmc,
      'stdIo': ?stdIo,
      'tcp': ?tcp == null ? null : tcp!.toMap(),
      'udp': ?udp == null ? null : udp!.toMap(),
      'unix': ?unix == null ? null : unix!.toMap(),
      'vc': ?vc,
    };
  }

  factory DomainDevicesDiskMirrorSourceReservationsSource.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorSourceReservationsSource(
      dbus: map['dbus'] == null ? null : DomainDevicesDiskMirrorSourceReservationsSourceDbus.fromMap((map['dbus'] as Map).cast<String, dynamic>()),
      dev: map['dev'] == null ? null : DomainDevicesDiskMirrorSourceReservationsSourceDev.fromMap((map['dev'] as Map).cast<String, dynamic>()),
      file: map['file'] == null ? null : DomainDevicesDiskMirrorSourceReservationsSourceFile.fromMap((map['file'] as Map).cast<String, dynamic>()),
      nmdm: map['nmdm'] == null ? null : DomainDevicesDiskMirrorSourceReservationsSourceNmdm.fromMap((map['nmdm'] as Map).cast<String, dynamic>()),
      null_: map['null'] == null ? null : map['null'] as bool,
      pipe: map['pipe'] == null ? null : DomainDevicesDiskMirrorSourceReservationsSourcePipe.fromMap((map['pipe'] as Map).cast<String, dynamic>()),
      pty: map['pty'] == null ? null : DomainDevicesDiskMirrorSourceReservationsSourcePty.fromMap((map['pty'] as Map).cast<String, dynamic>()),
      qemuvdAgent: map['qemuvdAgent'] == null ? null : DomainDevicesDiskMirrorSourceReservationsSourceQemuvdAgent.fromMap((map['qemuvdAgent'] as Map).cast<String, dynamic>()),
      spicePort: map['spicePort'] == null ? null : DomainDevicesDiskMirrorSourceReservationsSourceSpicePort.fromMap((map['spicePort'] as Map).cast<String, dynamic>()),
      spiceVmc: map['spiceVmc'] == null ? null : map['spiceVmc'] as bool,
      stdIo: map['stdIo'] == null ? null : map['stdIo'] as bool,
      tcp: map['tcp'] == null ? null : DomainDevicesDiskMirrorSourceReservationsSourceTcp.fromMap((map['tcp'] as Map).cast<String, dynamic>()),
      udp: map['udp'] == null ? null : DomainDevicesDiskMirrorSourceReservationsSourceUdp.fromMap((map['udp'] as Map).cast<String, dynamic>()),
      unix: map['unix'] == null ? null : DomainDevicesDiskMirrorSourceReservationsSourceUnix.fromMap((map['unix'] as Map).cast<String, dynamic>()),
      vc: map['vc'] == null ? null : map['vc'] as bool,
    );
  }
}


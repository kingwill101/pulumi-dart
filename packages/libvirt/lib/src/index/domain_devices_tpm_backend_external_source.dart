// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_tpm_backend_external_source_dbus.dart';
import 'domain_devices_tpm_backend_external_source_dev.dart';
import 'domain_devices_tpm_backend_external_source_file.dart';
import 'domain_devices_tpm_backend_external_source_nmdm.dart';
import 'domain_devices_tpm_backend_external_source_pipe.dart';
import 'domain_devices_tpm_backend_external_source_pty.dart';
import 'domain_devices_tpm_backend_external_source_qemuvd_agent.dart';
import 'domain_devices_tpm_backend_external_source_spice_port.dart';
import 'domain_devices_tpm_backend_external_source_tcp.dart';
import 'domain_devices_tpm_backend_external_source_udp.dart';
import 'domain_devices_tpm_backend_external_source_unix.dart';

class DomainDevicesTpmBackendExternalSource {
  /// Configures the DBus source for the EGD backend.
  final DomainDevicesTpmBackendExternalSourceDbus? dbus;
  /// Defines the device path for the source of the EGD backend.
  final DomainDevicesTpmBackendExternalSourceDev? dev;
  /// Defines a file source for the RNG EGD backend.
  final DomainDevicesTpmBackendExternalSourceFile? file;
  /// Configures the NMDM (null modem) device source for the EGD backend.
  final DomainDevicesTpmBackendExternalSourceNmdm? nmdm;
  /// Configures a null device source, which is equivalent to a device that receives no input.
  final bool? null_;
  /// Defines a pipe source for the EGD backend.
  final DomainDevicesTpmBackendExternalSourcePipe? pipe;
  /// Defines a pseudo-terminal (PTY) source for the EGD backend.
  final DomainDevicesTpmBackendExternalSourcePty? pty;
  /// Configures the QEMU guest agent for the random number generator backend.
  final DomainDevicesTpmBackendExternalSourceQemuvdAgent? qemuvdAgent;
  /// Configures the SPICE port settings for the random number generator backend.
  final DomainDevicesTpmBackendExternalSourceSpicePort? spicePort;
  /// Configures a SPICE Virtual Machine Channel as a source for enhanced communication with guests.
  final bool? spiceVmc;
  /// Configures standard input/output for device interactions, allowing typical stdin/stdout handling.
  final bool? stdIo;
  /// Configures TCP settings for the random number generator backend.
  final DomainDevicesTpmBackendExternalSourceTcp? tcp;
  /// Configures UDP settings for the random number generator backend.
  final DomainDevicesTpmBackendExternalSourceUdp? udp;
  /// Configures UNIX domain socket settings for the random number generator backend.
  final DomainDevicesTpmBackendExternalSourceUnix? unix;
  /// Configures a virtual console as a source for communication, enabling interaction with the guest.
  final bool? vc;

  /// Creates a new [DomainDevicesTpmBackendExternalSource].
  /// [dbus] Configures the DBus source for the EGD backend.
  /// [dev] Defines the device path for the source of the EGD backend.
  /// [file] Defines a file source for the RNG EGD backend.
  /// [nmdm] Configures the NMDM (null modem) device source for the EGD backend.
  /// [null_] Configures a null device source, which is equivalent to a device that receives no input.
  /// [pipe] Defines a pipe source for the EGD backend.
  /// [pty] Defines a pseudo-terminal (PTY) source for the EGD backend.
  /// [qemuvdAgent] Configures the QEMU guest agent for the random number generator backend.
  /// [spicePort] Configures the SPICE port settings for the random number generator backend.
  /// [spiceVmc] Configures a SPICE Virtual Machine Channel as a source for enhanced communication with guests.
  /// [stdIo] Configures standard input/output for device interactions, allowing typical stdin/stdout handling.
  /// [tcp] Configures TCP settings for the random number generator backend.
  /// [udp] Configures UDP settings for the random number generator backend.
  /// [unix] Configures UNIX domain socket settings for the random number generator backend.
  /// [vc] Configures a virtual console as a source for communication, enabling interaction with the guest.
  DomainDevicesTpmBackendExternalSource({
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

  factory DomainDevicesTpmBackendExternalSource.fromMap(Map<String, dynamic> map) {
    return DomainDevicesTpmBackendExternalSource(
      dbus: map['dbus'] == null ? null : DomainDevicesTpmBackendExternalSourceDbus.fromMap((map['dbus'] as Map).cast<String, dynamic>()),
      dev: map['dev'] == null ? null : DomainDevicesTpmBackendExternalSourceDev.fromMap((map['dev'] as Map).cast<String, dynamic>()),
      file: map['file'] == null ? null : DomainDevicesTpmBackendExternalSourceFile.fromMap((map['file'] as Map).cast<String, dynamic>()),
      nmdm: map['nmdm'] == null ? null : DomainDevicesTpmBackendExternalSourceNmdm.fromMap((map['nmdm'] as Map).cast<String, dynamic>()),
      null_: map['null'] == null ? null : map['null'] as bool,
      pipe: map['pipe'] == null ? null : DomainDevicesTpmBackendExternalSourcePipe.fromMap((map['pipe'] as Map).cast<String, dynamic>()),
      pty: map['pty'] == null ? null : DomainDevicesTpmBackendExternalSourcePty.fromMap((map['pty'] as Map).cast<String, dynamic>()),
      qemuvdAgent: map['qemuvdAgent'] == null ? null : DomainDevicesTpmBackendExternalSourceQemuvdAgent.fromMap((map['qemuvdAgent'] as Map).cast<String, dynamic>()),
      spicePort: map['spicePort'] == null ? null : DomainDevicesTpmBackendExternalSourceSpicePort.fromMap((map['spicePort'] as Map).cast<String, dynamic>()),
      spiceVmc: map['spiceVmc'] == null ? null : map['spiceVmc'] as bool,
      stdIo: map['stdIo'] == null ? null : map['stdIo'] as bool,
      tcp: map['tcp'] == null ? null : DomainDevicesTpmBackendExternalSourceTcp.fromMap((map['tcp'] as Map).cast<String, dynamic>()),
      udp: map['udp'] == null ? null : DomainDevicesTpmBackendExternalSourceUdp.fromMap((map['udp'] as Map).cast<String, dynamic>()),
      unix: map['unix'] == null ? null : DomainDevicesTpmBackendExternalSourceUnix.fromMap((map['unix'] as Map).cast<String, dynamic>()),
      vc: map['vc'] == null ? null : map['vc'] as bool,
    );
  }
}


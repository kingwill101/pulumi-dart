// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_audio.dart';
import 'domain_devices_channel.dart';
import 'domain_devices_console.dart';
import 'domain_devices_controller.dart';
import 'domain_devices_crypto.dart';
import 'domain_devices_disk.dart';
import 'domain_devices_filesystem.dart';
import 'domain_devices_graphic.dart';
import 'domain_devices_hostdev.dart';
import 'domain_devices_hub.dart';
import 'domain_devices_input.dart';
import 'domain_devices_interface.dart';
import 'domain_devices_iommu.dart';
import 'domain_devices_lease.dart';
import 'domain_devices_mem_balloon.dart';
import 'domain_devices_memorydev.dart';
import 'domain_devices_nvram.dart';
import 'domain_devices_panic.dart';
import 'domain_devices_parallel.dart';
import 'domain_devices_pstore.dart';
import 'domain_devices_redir_dev.dart';
import 'domain_devices_redir_filter.dart';
import 'domain_devices_rng.dart';
import 'domain_devices_serial.dart';
import 'domain_devices_shmem.dart';
import 'domain_devices_smartcard.dart';
import 'domain_devices_sound.dart';
import 'domain_devices_tpm.dart';
import 'domain_devices_video.dart';
import 'domain_devices_vsock.dart';
import 'domain_devices_watchdog.dart';

class DomainDevices {
  /// Specifies the audio devices allocated to the domain, supporting audio input and output functionality within the VM.
  final List<DomainDevicesAudio>? audios;
  /// Private communication channels between host and guest
  final List<DomainDevicesChannel>? channels;
  /// Configures one or more console devices for the guest, defining how serial consoles are exposed and connected.
  ///
  /// See: <https://libvirt.org/formatdomain.html#console>
  final List<DomainDevicesConsole>? consoles;
  /// Declares one or more device controllers (PCI, USB, SCSI, virtio-serial, etc.) attached to the guest, controlling how device buses are exposed.
  ///
  /// See: <https://libvirt.org/formatdomain.html#controllers>
  final List<DomainDevicesController>? controllers;
  /// Configures a virtio-based crypto device that offloads cryptographic operations to the host; the device type and backend parameters are specified in its child attributes.
  ///
  /// See: <https://libvirt.org/formatdomain.html#crypto>
  final List<DomainDevicesCrypto>? cryptos;
  /// Declares one or more block devices (disks, CD-ROMs, etc.) attached to the guest, each with its own source, target, and optional tuning parameters.
  ///
  /// See: <https://libvirt.org/formatdomain.html#hard-drives-floppy-disks-cdroms>
  final List<DomainDevicesDisk>? disks;
  /// Sets the absolute path to the hypervisor emulator binary used to run this domain (for example "/usr/bin/qemu-system-x86_64").
  ///
  /// See: <https://libvirt.org/formatdomain.html#devices>
  final String? emulator;
  /// Declares one or more filesystem devices that expose host directories or block devices into the guest.
  ///
  /// See: <https://libvirt.org/formatdomain.html#filesystems>
  final List<DomainDevicesFilesystem>? filesystems;
  /// Configures one or more graphical framebuffer devices (such as VNC, SPICE, or DBus-based displays) for the guest.
  ///
  /// See: <https://libvirt.org/formatdomain.html#graphical-framebuffers>
  final List<DomainDevicesGraphic>? graphics;
  /// Defines one or more hostdev entries describing host devices (PCI, USB, SCSI, etc.) that are passed through directly to the guest.
  ///
  /// See: <https://libvirt.org/formatdomain.html#host-device-assignment>
  final List<DomainDevicesHostdev>? hostdevs;
  /// Declares one or more virtual hub devices attached to a guest bus, typically to provide additional USB ports to the guest.
  ///
  /// See: <https://libvirt.org/formatdomain.html#hub-devices>
  final List<DomainDevicesHub>? hubs;
  /// Declares one or more guest input devices such as tablets, mice, or keyboards, and configures their type, bus, and optional passthrough settings.
  ///
  /// See: <https://libvirt.org/formatdomain.html#input-devices>
  final List<DomainDevicesInput>? inputs;
  /// Defines one or more network interface devices attached to the guest, including their connection mode, model, addressing, and related options.
  ///
  /// See: <https://libvirt.org/formatdomain.html#network-interfaces>
  final List<DomainDevicesInterface>? interfaces;
  /// Configures an IOMMU device for the guest, enabling emulated or paravirtual IOMMU functionality; requires a model and may include driver and ACPI options.
  final DomainDevicesIommu? iommu;
  /// Configures one or more device leases that must be acquired by the lock manager before the domain can start, each represented as a lease entry.
  ///
  /// See: <https://libvirt.org/formatdomain.html#device-leases>
  final List<DomainDevicesLease>? leases;
  /// Configures the guest memory balloon device, which allows the host to dynamically adjust the guest’s available memory.
  final DomainDevicesMemBalloon? memBalloon;
  /// Defines one or more memory device entries (DIMM, NVDIMM, virtio-mem, etc.) that provide additional, hot-pluggable memory to the guest.
  ///
  /// See: <https://libvirt.org/formatdomain.html#memory-devices>
  final List<DomainDevicesMemorydev>? memorydevs;
  /// Adds an NVRAM device to the domain, allowing firmware or platform-specific non-volatile state to be stored separately from normal disks.
  final DomainDevicesNvram? nvram;
  /// Adds one or more panic devices that report guest panic events to the host, allowing external monitoring or automation on guest crashes.
  ///
  /// See: <https://libvirt.org/formatdomain.html#panic-device>
  final List<DomainDevicesPanic>? panics;
  /// Configures one or more parallel port character devices exposed to the guest, each represented by a parallel element with optional address, backend, and logging settings.
  ///
  /// See: <https://libvirt.org/formatdomain.html#parallel-port>
  final List<DomainDevicesParallel>? parallels;
  /// Adds a pstore device to the guest for persistent storage of kernel oops/panic logs, mapping to a host backend.
  final DomainDevicesPstore? pstore;
  /// Configures one or more redirected USB devices exposed to the guest via redirdev, typically used in conjunction with SPICE or similar frontends.
  ///
  /// See: <https://libvirt.org/formatdomain.html#redirected-devices>
  final List<DomainDevicesRedirDev>? redirDevs;
  /// Configures one or more USB redirection filter rules that determine which redirected USB devices are allowed or denied to the guest.
  ///
  /// See: <https://libvirt.org/formatdomain.html#redirected-devices>
  final List<DomainDevicesRedirFilter>? redirFilters;
  /// Defines one or more virtual random number generator devices attached to the guest.
  ///
  /// See: <https://libvirt.org/formatdomain.html#random-number-generator-device>
  final List<DomainDevicesRng>? rngs;
  /// Configures one or more virtual serial port devices attached to the guest.
  ///
  /// See: <https://libvirt.org/formatdomain.html#serial-port>
  final List<DomainDevicesSerial>? serials;
  /// Defines one or more shared memory (ivshmem/shmem) devices used to share memory regions between this guest, other guests, and/or the host.
  ///
  /// See: <https://libvirt.org/formatdomain.html#shared-memory-device>
  final List<DomainDevicesShmem>? shmems;
  /// Defines one or more virtual smartcard devices attached to the guest.
  ///
  /// See: <https://libvirt.org/formatdomain.html#smartcard-devices>
  final List<DomainDevicesSmartcard>? smartcards;
  /// Configures one or more virtual sound devices attached to the guest.
  ///
  /// See: <https://libvirt.org/formatdomain.html#sound-devices>
  final List<DomainDevicesSound>? sounds;
  /// Configures one or more TPM devices attached to the guest, including their backend implementation, addressing, and optional ACPI integration.
  ///
  /// See: <https://libvirt.org/formatdomain.html#tpm-device>
  final List<DomainDevicesTpm>? tpms;
  /// Defines one or more video devices attached to the guest, each providing a virtual graphics adapter.
  ///
  /// See: <https://libvirt.org/formatdomain.html#video-devices>
  final List<DomainDevicesVideo>? videos;
  /// Configures a virtio vsock device that provides a host/guest communication channel using a CID-based socket interface.
  final DomainDevicesVsock? vsock;
  /// Configures one or more virtual watchdog devices attached to the guest, each controlling timeout behavior and actions on failure.
  ///
  /// See: <https://libvirt.org/formatdomain.html#watchdog-devices>
  final List<DomainDevicesWatchdog>? watchdogs;

  /// Creates a new [DomainDevices].
  /// [audios] Specifies the audio devices allocated to the domain, supporting audio input and output functionality within the VM.
  /// [channels] Private communication channels between host and guest
  /// [consoles] Configures one or more console devices for the guest, defining how serial consoles are exposed and connected.
  /// [controllers] Declares one or more device controllers (PCI, USB, SCSI, virtio-serial, etc.) attached to the guest, controlling how device buses are exposed.
  /// [cryptos] Configures a virtio-based crypto device that offloads cryptographic operations to the host; the device type and backend parameters are specified in its child attributes.
  /// [disks] Declares one or more block devices (disks, CD-ROMs, etc.) attached to the guest, each with its own source, target, and optional tuning parameters.
  /// [emulator] Sets the absolute path to the hypervisor emulator binary used to run this domain (for example "/usr/bin/qemu-system-x86_64").
  /// [filesystems] Declares one or more filesystem devices that expose host directories or block devices into the guest.
  /// [graphics] Configures one or more graphical framebuffer devices (such as VNC, SPICE, or DBus-based displays) for the guest.
  /// [hostdevs] Defines one or more hostdev entries describing host devices (PCI, USB, SCSI, etc.) that are passed through directly to the guest.
  /// [hubs] Declares one or more virtual hub devices attached to a guest bus, typically to provide additional USB ports to the guest.
  /// [inputs] Declares one or more guest input devices such as tablets, mice, or keyboards, and configures their type, bus, and optional passthrough settings.
  /// [interfaces] Defines one or more network interface devices attached to the guest, including their connection mode, model, addressing, and related options.
  /// [iommu] Configures an IOMMU device for the guest, enabling emulated or paravirtual IOMMU functionality; requires a model and may include driver and ACPI options.
  /// [leases] Configures one or more device leases that must be acquired by the lock manager before the domain can start, each represented as a lease entry.
  /// [memBalloon] Configures the guest memory balloon device, which allows the host to dynamically adjust the guest’s available memory.
  /// [memorydevs] Defines one or more memory device entries (DIMM, NVDIMM, virtio-mem, etc.) that provide additional, hot-pluggable memory to the guest.
  /// [nvram] Adds an NVRAM device to the domain, allowing firmware or platform-specific non-volatile state to be stored separately from normal disks.
  /// [panics] Adds one or more panic devices that report guest panic events to the host, allowing external monitoring or automation on guest crashes.
  /// [parallels] Configures one or more parallel port character devices exposed to the guest, each represented by a parallel element with optional address, backend, and logging settings.
  /// [pstore] Adds a pstore device to the guest for persistent storage of kernel oops/panic logs, mapping to a host backend.
  /// [redirDevs] Configures one or more redirected USB devices exposed to the guest via redirdev, typically used in conjunction with SPICE or similar frontends.
  /// [redirFilters] Configures one or more USB redirection filter rules that determine which redirected USB devices are allowed or denied to the guest.
  /// [rngs] Defines one or more virtual random number generator devices attached to the guest.
  /// [serials] Configures one or more virtual serial port devices attached to the guest.
  /// [shmems] Defines one or more shared memory (ivshmem/shmem) devices used to share memory regions between this guest, other guests, and/or the host.
  /// [smartcards] Defines one or more virtual smartcard devices attached to the guest.
  /// [sounds] Configures one or more virtual sound devices attached to the guest.
  /// [tpms] Configures one or more TPM devices attached to the guest, including their backend implementation, addressing, and optional ACPI integration.
  /// [videos] Defines one or more video devices attached to the guest, each providing a virtual graphics adapter.
  /// [vsock] Configures a virtio vsock device that provides a host/guest communication channel using a CID-based socket interface.
  /// [watchdogs] Configures one or more virtual watchdog devices attached to the guest, each controlling timeout behavior and actions on failure.
  DomainDevices({
    this.audios,
    this.channels,
    this.consoles,
    this.controllers,
    this.cryptos,
    this.disks,
    this.emulator,
    this.filesystems,
    this.graphics,
    this.hostdevs,
    this.hubs,
    this.inputs,
    this.interfaces,
    this.iommu,
    this.leases,
    this.memBalloon,
    this.memorydevs,
    this.nvram,
    this.panics,
    this.parallels,
    this.pstore,
    this.redirDevs,
    this.redirFilters,
    this.rngs,
    this.serials,
    this.shmems,
    this.smartcards,
    this.sounds,
    this.tpms,
    this.videos,
    this.vsock,
    this.watchdogs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audios': ?audios == null ? null : pulumi.Input.encodeList<DomainDevicesAudio, Map<String, dynamic>>(audios!, (value) => value.toMap()),
      'channels': ?channels == null ? null : pulumi.Input.encodeList<DomainDevicesChannel, Map<String, dynamic>>(channels!, (value) => value.toMap()),
      'consoles': ?consoles == null ? null : pulumi.Input.encodeList<DomainDevicesConsole, Map<String, dynamic>>(consoles!, (value) => value.toMap()),
      'controllers': ?controllers == null ? null : pulumi.Input.encodeList<DomainDevicesController, Map<String, dynamic>>(controllers!, (value) => value.toMap()),
      'cryptos': ?cryptos == null ? null : pulumi.Input.encodeList<DomainDevicesCrypto, Map<String, dynamic>>(cryptos!, (value) => value.toMap()),
      'disks': ?disks == null ? null : pulumi.Input.encodeList<DomainDevicesDisk, Map<String, dynamic>>(disks!, (value) => value.toMap()),
      'emulator': ?emulator,
      'filesystems': ?filesystems == null ? null : pulumi.Input.encodeList<DomainDevicesFilesystem, Map<String, dynamic>>(filesystems!, (value) => value.toMap()),
      'graphics': ?graphics == null ? null : pulumi.Input.encodeList<DomainDevicesGraphic, Map<String, dynamic>>(graphics!, (value) => value.toMap()),
      'hostdevs': ?hostdevs == null ? null : pulumi.Input.encodeList<DomainDevicesHostdev, Map<String, dynamic>>(hostdevs!, (value) => value.toMap()),
      'hubs': ?hubs == null ? null : pulumi.Input.encodeList<DomainDevicesHub, Map<String, dynamic>>(hubs!, (value) => value.toMap()),
      'inputs': ?inputs == null ? null : pulumi.Input.encodeList<DomainDevicesInput, Map<String, dynamic>>(inputs!, (value) => value.toMap()),
      'interfaces': ?interfaces == null ? null : pulumi.Input.encodeList<DomainDevicesInterface, Map<String, dynamic>>(interfaces!, (value) => value.toMap()),
      'iommu': ?iommu == null ? null : iommu!.toMap(),
      'leases': ?leases == null ? null : pulumi.Input.encodeList<DomainDevicesLease, Map<String, dynamic>>(leases!, (value) => value.toMap()),
      'memBalloon': ?memBalloon == null ? null : memBalloon!.toMap(),
      'memorydevs': ?memorydevs == null ? null : pulumi.Input.encodeList<DomainDevicesMemorydev, Map<String, dynamic>>(memorydevs!, (value) => value.toMap()),
      'nvram': ?nvram == null ? null : nvram!.toMap(),
      'panics': ?panics == null ? null : pulumi.Input.encodeList<DomainDevicesPanic, Map<String, dynamic>>(panics!, (value) => value.toMap()),
      'parallels': ?parallels == null ? null : pulumi.Input.encodeList<DomainDevicesParallel, Map<String, dynamic>>(parallels!, (value) => value.toMap()),
      'pstore': ?pstore == null ? null : pstore!.toMap(),
      'redirDevs': ?redirDevs == null ? null : pulumi.Input.encodeList<DomainDevicesRedirDev, Map<String, dynamic>>(redirDevs!, (value) => value.toMap()),
      'redirFilters': ?redirFilters == null ? null : pulumi.Input.encodeList<DomainDevicesRedirFilter, Map<String, dynamic>>(redirFilters!, (value) => value.toMap()),
      'rngs': ?rngs == null ? null : pulumi.Input.encodeList<DomainDevicesRng, Map<String, dynamic>>(rngs!, (value) => value.toMap()),
      'serials': ?serials == null ? null : pulumi.Input.encodeList<DomainDevicesSerial, Map<String, dynamic>>(serials!, (value) => value.toMap()),
      'shmems': ?shmems == null ? null : pulumi.Input.encodeList<DomainDevicesShmem, Map<String, dynamic>>(shmems!, (value) => value.toMap()),
      'smartcards': ?smartcards == null ? null : pulumi.Input.encodeList<DomainDevicesSmartcard, Map<String, dynamic>>(smartcards!, (value) => value.toMap()),
      'sounds': ?sounds == null ? null : pulumi.Input.encodeList<DomainDevicesSound, Map<String, dynamic>>(sounds!, (value) => value.toMap()),
      'tpms': ?tpms == null ? null : pulumi.Input.encodeList<DomainDevicesTpm, Map<String, dynamic>>(tpms!, (value) => value.toMap()),
      'videos': ?videos == null ? null : pulumi.Input.encodeList<DomainDevicesVideo, Map<String, dynamic>>(videos!, (value) => value.toMap()),
      'vsock': ?vsock == null ? null : vsock!.toMap(),
      'watchdogs': ?watchdogs == null ? null : pulumi.Input.encodeList<DomainDevicesWatchdog, Map<String, dynamic>>(watchdogs!, (value) => value.toMap()),
    };
  }

  factory DomainDevices.fromMap(Map<String, dynamic> map) {
    return DomainDevices(
      audios: map['audios'] == null ? null : pulumi.Input.decodeList<DomainDevicesAudio>(map['audios'], (value) => DomainDevicesAudio.fromMap((value as Map).cast<String, dynamic>())),
      channels: map['channels'] == null ? null : pulumi.Input.decodeList<DomainDevicesChannel>(map['channels'], (value) => DomainDevicesChannel.fromMap((value as Map).cast<String, dynamic>())),
      consoles: map['consoles'] == null ? null : pulumi.Input.decodeList<DomainDevicesConsole>(map['consoles'], (value) => DomainDevicesConsole.fromMap((value as Map).cast<String, dynamic>())),
      controllers: map['controllers'] == null ? null : pulumi.Input.decodeList<DomainDevicesController>(map['controllers'], (value) => DomainDevicesController.fromMap((value as Map).cast<String, dynamic>())),
      cryptos: map['cryptos'] == null ? null : pulumi.Input.decodeList<DomainDevicesCrypto>(map['cryptos'], (value) => DomainDevicesCrypto.fromMap((value as Map).cast<String, dynamic>())),
      disks: map['disks'] == null ? null : pulumi.Input.decodeList<DomainDevicesDisk>(map['disks'], (value) => DomainDevicesDisk.fromMap((value as Map).cast<String, dynamic>())),
      emulator: map['emulator'] == null ? null : map['emulator'] as String,
      filesystems: map['filesystems'] == null ? null : pulumi.Input.decodeList<DomainDevicesFilesystem>(map['filesystems'], (value) => DomainDevicesFilesystem.fromMap((value as Map).cast<String, dynamic>())),
      graphics: map['graphics'] == null ? null : pulumi.Input.decodeList<DomainDevicesGraphic>(map['graphics'], (value) => DomainDevicesGraphic.fromMap((value as Map).cast<String, dynamic>())),
      hostdevs: map['hostdevs'] == null ? null : pulumi.Input.decodeList<DomainDevicesHostdev>(map['hostdevs'], (value) => DomainDevicesHostdev.fromMap((value as Map).cast<String, dynamic>())),
      hubs: map['hubs'] == null ? null : pulumi.Input.decodeList<DomainDevicesHub>(map['hubs'], (value) => DomainDevicesHub.fromMap((value as Map).cast<String, dynamic>())),
      inputs: map['inputs'] == null ? null : pulumi.Input.decodeList<DomainDevicesInput>(map['inputs'], (value) => DomainDevicesInput.fromMap((value as Map).cast<String, dynamic>())),
      interfaces: map['interfaces'] == null ? null : pulumi.Input.decodeList<DomainDevicesInterface>(map['interfaces'], (value) => DomainDevicesInterface.fromMap((value as Map).cast<String, dynamic>())),
      iommu: map['iommu'] == null ? null : DomainDevicesIommu.fromMap((map['iommu'] as Map).cast<String, dynamic>()),
      leases: map['leases'] == null ? null : pulumi.Input.decodeList<DomainDevicesLease>(map['leases'], (value) => DomainDevicesLease.fromMap((value as Map).cast<String, dynamic>())),
      memBalloon: map['memBalloon'] == null ? null : DomainDevicesMemBalloon.fromMap((map['memBalloon'] as Map).cast<String, dynamic>()),
      memorydevs: map['memorydevs'] == null ? null : pulumi.Input.decodeList<DomainDevicesMemorydev>(map['memorydevs'], (value) => DomainDevicesMemorydev.fromMap((value as Map).cast<String, dynamic>())),
      nvram: map['nvram'] == null ? null : DomainDevicesNvram.fromMap((map['nvram'] as Map).cast<String, dynamic>()),
      panics: map['panics'] == null ? null : pulumi.Input.decodeList<DomainDevicesPanic>(map['panics'], (value) => DomainDevicesPanic.fromMap((value as Map).cast<String, dynamic>())),
      parallels: map['parallels'] == null ? null : pulumi.Input.decodeList<DomainDevicesParallel>(map['parallels'], (value) => DomainDevicesParallel.fromMap((value as Map).cast<String, dynamic>())),
      pstore: map['pstore'] == null ? null : DomainDevicesPstore.fromMap((map['pstore'] as Map).cast<String, dynamic>()),
      redirDevs: map['redirDevs'] == null ? null : pulumi.Input.decodeList<DomainDevicesRedirDev>(map['redirDevs'], (value) => DomainDevicesRedirDev.fromMap((value as Map).cast<String, dynamic>())),
      redirFilters: map['redirFilters'] == null ? null : pulumi.Input.decodeList<DomainDevicesRedirFilter>(map['redirFilters'], (value) => DomainDevicesRedirFilter.fromMap((value as Map).cast<String, dynamic>())),
      rngs: map['rngs'] == null ? null : pulumi.Input.decodeList<DomainDevicesRng>(map['rngs'], (value) => DomainDevicesRng.fromMap((value as Map).cast<String, dynamic>())),
      serials: map['serials'] == null ? null : pulumi.Input.decodeList<DomainDevicesSerial>(map['serials'], (value) => DomainDevicesSerial.fromMap((value as Map).cast<String, dynamic>())),
      shmems: map['shmems'] == null ? null : pulumi.Input.decodeList<DomainDevicesShmem>(map['shmems'], (value) => DomainDevicesShmem.fromMap((value as Map).cast<String, dynamic>())),
      smartcards: map['smartcards'] == null ? null : pulumi.Input.decodeList<DomainDevicesSmartcard>(map['smartcards'], (value) => DomainDevicesSmartcard.fromMap((value as Map).cast<String, dynamic>())),
      sounds: map['sounds'] == null ? null : pulumi.Input.decodeList<DomainDevicesSound>(map['sounds'], (value) => DomainDevicesSound.fromMap((value as Map).cast<String, dynamic>())),
      tpms: map['tpms'] == null ? null : pulumi.Input.decodeList<DomainDevicesTpm>(map['tpms'], (value) => DomainDevicesTpm.fromMap((value as Map).cast<String, dynamic>())),
      videos: map['videos'] == null ? null : pulumi.Input.decodeList<DomainDevicesVideo>(map['videos'], (value) => DomainDevicesVideo.fromMap((value as Map).cast<String, dynamic>())),
      vsock: map['vsock'] == null ? null : DomainDevicesVsock.fromMap((map['vsock'] as Map).cast<String, dynamic>()),
      watchdogs: map['watchdogs'] == null ? null : pulumi.Input.decodeList<DomainDevicesWatchdog>(map['watchdogs'], (value) => DomainDevicesWatchdog.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_disk_acpi.dart';
import 'domain_devices_disk_alias.dart';
import 'domain_devices_disk_auth.dart';
import 'domain_devices_disk_backend_domain.dart';
import 'domain_devices_disk_backing_store.dart';
import 'domain_devices_disk_block_io.dart';
import 'domain_devices_disk_boot.dart';
import 'domain_devices_disk_driver.dart';
import 'domain_devices_disk_encryption.dart';
import 'domain_devices_disk_geometry.dart';
import 'domain_devices_disk_io_tune.dart';
import 'domain_devices_disk_mirror.dart';
import 'domain_devices_disk_source.dart';
import 'domain_devices_disk_target.dart';
import 'domain_devices_disk_throttle_filters.dart';
import 'domain_devices_disk_transient.dart';

class DomainDevicesDisk {
  /// Specifies ACPI configuration for the persistent storage device, adapting its behavior in power management scenarios.
  final DomainDevicesDiskAcpi? acpi;
  /// Specifies the memory address for the persistent storage device in the guest's address space.
  final Map<String, dynamic>? address;
  /// Configures the alias for the persistent storage device, allowing for easier identification within the domain.
  final DomainDevicesDiskAlias? alias;
  /// Configures authentication settings for the iSCSI source.
  final DomainDevicesDiskAuth? auth;
  /// Specifies the backend domain associated with the interface, allowing for advanced network configurations.
  final DomainDevicesDiskBackendDomain? backendDomain;
  /// Specifies the backing store settings for the mirrored disk, determining its source and configuration.
  final DomainDevicesDiskBackingStore? backingStore;
  /// Configures block I/O settings for the disk.
  final DomainDevicesDiskBlockIo? blockIo;
  /// Configures the boot settings for the redirected device, controlling its initialization at domain startup.
  final DomainDevicesDiskBoot? boot;
  /// Specifies the device identifier for the disk.
  final String? device;
  /// Configures the driver settings for the disk device.
  final DomainDevicesDiskDriver? driver;
  /// Configures encryption settings for the disk, enhancing data security.
  final DomainDevicesDiskEncryption? encryption;
  /// Configures the geometry of the disk, including parameters that define its layout and structure.
  final DomainDevicesDiskGeometry? geometry;
  /// Provides I/O tuning settings for the disk, allowing various performance optimizations based on workload.
  final DomainDevicesDiskIoTune? ioTune;
  /// Configures the disk as a mirror, providing redundancy and improved data integrity through synchronization.
  final DomainDevicesDiskMirror? mirror;
  /// Configures the model type for the disk device in the VM.
  final String? model;
  /// Specifies the product name of the disk device presented to the guest.
  final String? product;
  /// Enables or disables raw I/O operations for the disk device.
  final String? rawIo;
  /// Configures the read-only state for the disk, preventing write operations.
  final bool? readOnly;
  /// Sets the serial number for the disk device, making it identifiable.
  final String? serial;
  /// Configures SGIO (SCSI Generic I/O) for the disk, affecting how I/O requests are processed.
  final String? sgio;
  /// Specifies whether the disk can be shared among multiple guests.
  final bool? shareable;
  /// Indicates whether the disk is a snapshot of another disk image.
  final String? snapshot;
  /// Specifies the source of the backing store, determining its origin and how it is accessed.
  final DomainDevicesDiskSource? source;
  /// Configures the target settings for the disk device.
  final DomainDevicesDiskTarget? target;
  /// Manages the throttle filters applied to the disk device for I/O regulation.
  final DomainDevicesDiskThrottleFilters? throttleFilters;
  /// Controls whether the disk device is defined as a transient resource.
  final DomainDevicesDiskTransient? transient;
  /// Specifies the vendor name associated with the disk device.
  final String? vendor;
  /// Configures the World Wide Name (WWN) for the disk device to uniquely identify it.
  final String? wwn;

  /// Creates a new [DomainDevicesDisk].
  /// [acpi] Specifies ACPI configuration for the persistent storage device, adapting its behavior in power management scenarios.
  /// [address] Specifies the memory address for the persistent storage device in the guest's address space.
  /// [alias] Configures the alias for the persistent storage device, allowing for easier identification within the domain.
  /// [auth] Configures authentication settings for the iSCSI source.
  /// [backendDomain] Specifies the backend domain associated with the interface, allowing for advanced network configurations.
  /// [backingStore] Specifies the backing store settings for the mirrored disk, determining its source and configuration.
  /// [blockIo] Configures block I/O settings for the disk.
  /// [boot] Configures the boot settings for the redirected device, controlling its initialization at domain startup.
  /// [device] Specifies the device identifier for the disk.
  /// [driver] Configures the driver settings for the disk device.
  /// [encryption] Configures encryption settings for the disk, enhancing data security.
  /// [geometry] Configures the geometry of the disk, including parameters that define its layout and structure.
  /// [ioTune] Provides I/O tuning settings for the disk, allowing various performance optimizations based on workload.
  /// [mirror] Configures the disk as a mirror, providing redundancy and improved data integrity through synchronization.
  /// [model] Configures the model type for the disk device in the VM.
  /// [product] Specifies the product name of the disk device presented to the guest.
  /// [rawIo] Enables or disables raw I/O operations for the disk device.
  /// [readOnly] Configures the read-only state for the disk, preventing write operations.
  /// [serial] Sets the serial number for the disk device, making it identifiable.
  /// [sgio] Configures SGIO (SCSI Generic I/O) for the disk, affecting how I/O requests are processed.
  /// [shareable] Specifies whether the disk can be shared among multiple guests.
  /// [snapshot] Indicates whether the disk is a snapshot of another disk image.
  /// [source] Specifies the source of the backing store, determining its origin and how it is accessed.
  /// [target] Configures the target settings for the disk device.
  /// [throttleFilters] Manages the throttle filters applied to the disk device for I/O regulation.
  /// [transient] Controls whether the disk device is defined as a transient resource.
  /// [vendor] Specifies the vendor name associated with the disk device.
  /// [wwn] Configures the World Wide Name (WWN) for the disk device to uniquely identify it.
  DomainDevicesDisk({
    this.acpi,
    this.address,
    this.alias,
    this.auth,
    this.backendDomain,
    this.backingStore,
    this.blockIo,
    this.boot,
    this.device,
    this.driver,
    this.encryption,
    this.geometry,
    this.ioTune,
    this.mirror,
    this.model,
    this.product,
    this.rawIo,
    this.readOnly,
    this.serial,
    this.sgio,
    this.shareable,
    this.snapshot,
    this.source,
    this.target,
    this.throttleFilters,
    this.transient,
    this.vendor,
    this.wwn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acpi': ?acpi == null ? null : acpi!.toMap(),
      'address': ?address,
      'alias': ?alias == null ? null : alias!.toMap(),
      'auth': ?auth == null ? null : auth!.toMap(),
      'backendDomain': ?backendDomain == null ? null : backendDomain!.toMap(),
      'backingStore': ?backingStore == null ? null : backingStore!.toMap(),
      'blockIo': ?blockIo == null ? null : blockIo!.toMap(),
      'boot': ?boot == null ? null : boot!.toMap(),
      'device': ?device,
      'driver': ?driver == null ? null : driver!.toMap(),
      'encryption': ?encryption == null ? null : encryption!.toMap(),
      'geometry': ?geometry == null ? null : geometry!.toMap(),
      'ioTune': ?ioTune == null ? null : ioTune!.toMap(),
      'mirror': ?mirror == null ? null : mirror!.toMap(),
      'model': ?model,
      'product': ?product,
      'rawIo': ?rawIo,
      'readOnly': ?readOnly,
      'serial': ?serial,
      'sgio': ?sgio,
      'shareable': ?shareable,
      'snapshot': ?snapshot,
      'source': ?source == null ? null : source!.toMap(),
      'target': ?target == null ? null : target!.toMap(),
      'throttleFilters': ?throttleFilters == null ? null : throttleFilters!.toMap(),
      'transient': ?transient == null ? null : transient!.toMap(),
      'vendor': ?vendor,
      'wwn': ?wwn,
    };
  }

  factory DomainDevicesDisk.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDisk(
      acpi: map['acpi'] == null ? null : DomainDevicesDiskAcpi.fromMap((map['acpi'] as Map).cast<String, dynamic>()),
      address: map['address'] == null ? null : (map['address'] as Map).cast<String, dynamic>(),
      alias: map['alias'] == null ? null : DomainDevicesDiskAlias.fromMap((map['alias'] as Map).cast<String, dynamic>()),
      auth: map['auth'] == null ? null : DomainDevicesDiskAuth.fromMap((map['auth'] as Map).cast<String, dynamic>()),
      backendDomain: map['backendDomain'] == null ? null : DomainDevicesDiskBackendDomain.fromMap((map['backendDomain'] as Map).cast<String, dynamic>()),
      backingStore: map['backingStore'] == null ? null : DomainDevicesDiskBackingStore.fromMap((map['backingStore'] as Map).cast<String, dynamic>()),
      blockIo: map['blockIo'] == null ? null : DomainDevicesDiskBlockIo.fromMap((map['blockIo'] as Map).cast<String, dynamic>()),
      boot: map['boot'] == null ? null : DomainDevicesDiskBoot.fromMap((map['boot'] as Map).cast<String, dynamic>()),
      device: map['device'] == null ? null : map['device'] as String,
      driver: map['driver'] == null ? null : DomainDevicesDiskDriver.fromMap((map['driver'] as Map).cast<String, dynamic>()),
      encryption: map['encryption'] == null ? null : DomainDevicesDiskEncryption.fromMap((map['encryption'] as Map).cast<String, dynamic>()),
      geometry: map['geometry'] == null ? null : DomainDevicesDiskGeometry.fromMap((map['geometry'] as Map).cast<String, dynamic>()),
      ioTune: map['ioTune'] == null ? null : DomainDevicesDiskIoTune.fromMap((map['ioTune'] as Map).cast<String, dynamic>()),
      mirror: map['mirror'] == null ? null : DomainDevicesDiskMirror.fromMap((map['mirror'] as Map).cast<String, dynamic>()),
      model: map['model'] == null ? null : map['model'] as String,
      product: map['product'] == null ? null : map['product'] as String,
      rawIo: map['rawIo'] == null ? null : map['rawIo'] as String,
      readOnly: map['readOnly'] == null ? null : map['readOnly'] as bool,
      serial: map['serial'] == null ? null : map['serial'] as String,
      sgio: map['sgio'] == null ? null : map['sgio'] as String,
      shareable: map['shareable'] == null ? null : map['shareable'] as bool,
      snapshot: map['snapshot'] == null ? null : map['snapshot'] as String,
      source: map['source'] == null ? null : DomainDevicesDiskSource.fromMap((map['source'] as Map).cast<String, dynamic>()),
      target: map['target'] == null ? null : DomainDevicesDiskTarget.fromMap((map['target'] as Map).cast<String, dynamic>()),
      throttleFilters: map['throttleFilters'] == null ? null : DomainDevicesDiskThrottleFilters.fromMap((map['throttleFilters'] as Map).cast<String, dynamic>()),
      transient: map['transient'] == null ? null : DomainDevicesDiskTransient.fromMap((map['transient'] as Map).cast<String, dynamic>()),
      vendor: map['vendor'] == null ? null : map['vendor'] as String,
      wwn: map['wwn'] == null ? null : map['wwn'] as String,
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'domain_os_nv_ram_source_block.dart';
import 'domain_os_nv_ram_source_cookies.dart';
import 'domain_os_nv_ram_source_data_store.dart';
import 'domain_os_nv_ram_source_dir.dart';
import 'domain_os_nv_ram_source_encryption.dart';
import 'domain_os_nv_ram_source_file.dart';
import 'domain_os_nv_ram_source_network.dart';
import 'domain_os_nv_ram_source_readahead.dart';
import 'domain_os_nv_ram_source_reservations.dart';
import 'domain_os_nv_ram_source_slices.dart';
import 'domain_os_nv_ram_source_ssl.dart';
import 'domain_os_nv_ram_source_timeout.dart';
import 'domain_os_nv_ram_source_vhost_user.dart';
import 'domain_os_nv_ram_source_vhost_vdpa.dart';
import 'domain_os_nv_ram_source_volume.dart';

class DomainOsNvRamSource {
  /// Configures the source block for the backing store, indicating its role within the mirroring setup.
  final DomainOsNvRamSourceBlock? block;
  /// Configures settings related to cookie management for the backing store source.
  final DomainOsNvRamSourceCookies? cookies;
  /// Configures the data store for the backing store, specifying the storage location.
  final DomainOsNvRamSourceDataStore? dataStore;
  /// Configures the directory for the backing store source, indicating its physical location.
  final DomainOsNvRamSourceDir? dir;
  /// Configures encryption settings for the disk, enhancing data security.
  final DomainOsNvRamSourceEncryption? encryption;
  /// Configures file-specific settings for the backing store source, managing its file access.
  final DomainOsNvRamSourceFile? file;
  /// Configures the index for the backing store source configuration, indicating its order.
  final double? index;
  /// Configures network-specific settings for the backing store source, facilitating network access.
  final DomainOsNvRamSourceNetwork? network;
  /// Configures NVMe settings for accessing network storage, enabling optimized performance.
  final Map<String, dynamic>? nvme;
  /// Sets the readahead configuration, optimizing I/O performance for network block devices.
  final DomainOsNvRamSourceReadahead? readahead;
  /// Defines reservations settings for network storage sources, enabling resource management.
  final DomainOsNvRamSourceReservations? reservations;
  /// Configures slices for the mirror source device.
  final DomainOsNvRamSourceSlices? slices;
  /// Configures SSL settings for the backing store source in disk mirroring.
  final DomainOsNvRamSourceSsl? ssl;
  /// Sets the startup policy for the backing store source in disk mirroring.
  final String? startupPolicy;
  /// Configures the timeout settings for the backing store source in disk mirroring.
  final DomainOsNvRamSourceTimeout? timeout;
  /// Configures VHostUser settings for the backing store source in disk mirroring.
  final DomainOsNvRamSourceVhostUser? vhostUser;
  /// Configures the VHostVDPA settings for the source backing store.
  final DomainOsNvRamSourceVhostVdpa? vhostVdpa;
  /// Configures the source volume settings for the mirror backing store.
  final DomainOsNvRamSourceVolume? volume;

  /// Creates a new [DomainOsNvRamSource].
  /// [block] Configures the source block for the backing store, indicating its role within the mirroring setup.
  /// [cookies] Configures settings related to cookie management for the backing store source.
  /// [dataStore] Configures the data store for the backing store, specifying the storage location.
  /// [dir] Configures the directory for the backing store source, indicating its physical location.
  /// [encryption] Configures encryption settings for the disk, enhancing data security.
  /// [file] Configures file-specific settings for the backing store source, managing its file access.
  /// [index] Configures the index for the backing store source configuration, indicating its order.
  /// [network] Configures network-specific settings for the backing store source, facilitating network access.
  /// [nvme] Configures NVMe settings for accessing network storage, enabling optimized performance.
  /// [readahead] Sets the readahead configuration, optimizing I/O performance for network block devices.
  /// [reservations] Defines reservations settings for network storage sources, enabling resource management.
  /// [slices] Configures slices for the mirror source device.
  /// [ssl] Configures SSL settings for the backing store source in disk mirroring.
  /// [startupPolicy] Sets the startup policy for the backing store source in disk mirroring.
  /// [timeout] Configures the timeout settings for the backing store source in disk mirroring.
  /// [vhostUser] Configures VHostUser settings for the backing store source in disk mirroring.
  /// [vhostVdpa] Configures the VHostVDPA settings for the source backing store.
  /// [volume] Configures the source volume settings for the mirror backing store.
  DomainOsNvRamSource({
    this.block,
    this.cookies,
    this.dataStore,
    this.dir,
    this.encryption,
    this.file,
    this.index,
    this.network,
    this.nvme,
    this.readahead,
    this.reservations,
    this.slices,
    this.ssl,
    this.startupPolicy,
    this.timeout,
    this.vhostUser,
    this.vhostVdpa,
    this.volume,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'block': ?block == null ? null : block!.toMap(),
      'cookies': ?cookies == null ? null : cookies!.toMap(),
      'dataStore': ?dataStore == null ? null : dataStore!.toMap(),
      'dir': ?dir == null ? null : dir!.toMap(),
      'encryption': ?encryption == null ? null : encryption!.toMap(),
      'file': ?file == null ? null : file!.toMap(),
      'index': ?index,
      'network': ?network == null ? null : network!.toMap(),
      'nvme': ?nvme,
      'readahead': ?readahead == null ? null : readahead!.toMap(),
      'reservations': ?reservations == null ? null : reservations!.toMap(),
      'slices': ?slices == null ? null : slices!.toMap(),
      'ssl': ?ssl == null ? null : ssl!.toMap(),
      'startupPolicy': ?startupPolicy,
      'timeout': ?timeout == null ? null : timeout!.toMap(),
      'vhostUser': ?vhostUser == null ? null : vhostUser!.toMap(),
      'vhostVdpa': ?vhostVdpa == null ? null : vhostVdpa!.toMap(),
      'volume': ?volume == null ? null : volume!.toMap(),
    };
  }

  factory DomainOsNvRamSource.fromMap(Map<String, dynamic> map) {
    return DomainOsNvRamSource(
      block: map['block'] == null ? null : DomainOsNvRamSourceBlock.fromMap((map['block'] as Map).cast<String, dynamic>()),
      cookies: map['cookies'] == null ? null : DomainOsNvRamSourceCookies.fromMap((map['cookies'] as Map).cast<String, dynamic>()),
      dataStore: map['dataStore'] == null ? null : DomainOsNvRamSourceDataStore.fromMap((map['dataStore'] as Map).cast<String, dynamic>()),
      dir: map['dir'] == null ? null : DomainOsNvRamSourceDir.fromMap((map['dir'] as Map).cast<String, dynamic>()),
      encryption: map['encryption'] == null ? null : DomainOsNvRamSourceEncryption.fromMap((map['encryption'] as Map).cast<String, dynamic>()),
      file: map['file'] == null ? null : DomainOsNvRamSourceFile.fromMap((map['file'] as Map).cast<String, dynamic>()),
      index: map['index'] == null ? null : map['index'] as double,
      network: map['network'] == null ? null : DomainOsNvRamSourceNetwork.fromMap((map['network'] as Map).cast<String, dynamic>()),
      nvme: map['nvme'] == null ? null : (map['nvme'] as Map).cast<String, dynamic>(),
      readahead: map['readahead'] == null ? null : DomainOsNvRamSourceReadahead.fromMap((map['readahead'] as Map).cast<String, dynamic>()),
      reservations: map['reservations'] == null ? null : DomainOsNvRamSourceReservations.fromMap((map['reservations'] as Map).cast<String, dynamic>()),
      slices: map['slices'] == null ? null : DomainOsNvRamSourceSlices.fromMap((map['slices'] as Map).cast<String, dynamic>()),
      ssl: map['ssl'] == null ? null : DomainOsNvRamSourceSsl.fromMap((map['ssl'] as Map).cast<String, dynamic>()),
      startupPolicy: map['startupPolicy'] == null ? null : map['startupPolicy'] as String,
      timeout: map['timeout'] == null ? null : DomainOsNvRamSourceTimeout.fromMap((map['timeout'] as Map).cast<String, dynamic>()),
      vhostUser: map['vhostUser'] == null ? null : DomainOsNvRamSourceVhostUser.fromMap((map['vhostUser'] as Map).cast<String, dynamic>()),
      vhostVdpa: map['vhostVdpa'] == null ? null : DomainOsNvRamSourceVhostVdpa.fromMap((map['vhostVdpa'] as Map).cast<String, dynamic>()),
      volume: map['volume'] == null ? null : DomainOsNvRamSourceVolume.fromMap((map['volume'] as Map).cast<String, dynamic>()),
    );
  }
}


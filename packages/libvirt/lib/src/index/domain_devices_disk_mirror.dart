// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_disk_mirror_backing_store.dart';
import 'domain_devices_disk_mirror_format.dart';
import 'domain_devices_disk_mirror_source.dart';

class DomainDevicesDiskMirror {
  /// Specifies the backing store settings for the mirrored disk, determining its source and configuration.
  final DomainDevicesDiskMirrorBackingStore? backingStore;
  /// Defines the format of the data store used in the backing store source configuration.
  final DomainDevicesDiskMirrorFormat? format;
  /// Configures the job identifier associated with the disk mirror operation.
  final String? job;
  /// Indicates whether the disk mirror is ready for use.
  final String? ready;
  /// Specifies the source of the backing store, determining its origin and how it is accessed.
  final DomainDevicesDiskMirrorSource? source;

  /// Creates a new [DomainDevicesDiskMirror].
  /// [backingStore] Specifies the backing store settings for the mirrored disk, determining its source and configuration.
  /// [format] Defines the format of the data store used in the backing store source configuration.
  /// [job] Configures the job identifier associated with the disk mirror operation.
  /// [ready] Indicates whether the disk mirror is ready for use.
  /// [source] Specifies the source of the backing store, determining its origin and how it is accessed.
  DomainDevicesDiskMirror({
    this.backingStore,
    this.format,
    this.job,
    this.ready,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backingStore': ?backingStore == null ? null : backingStore!.toMap(),
      'format': ?format == null ? null : format!.toMap(),
      'job': ?job,
      'ready': ?ready,
      'source': ?source == null ? null : source!.toMap(),
    };
  }

  factory DomainDevicesDiskMirror.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirror(
      backingStore: map['backingStore'] == null ? null : DomainDevicesDiskMirrorBackingStore.fromMap((map['backingStore'] as Map).cast<String, dynamic>()),
      format: map['format'] == null ? null : DomainDevicesDiskMirrorFormat.fromMap((map['format'] as Map).cast<String, dynamic>()),
      job: map['job'] == null ? null : map['job'] as String,
      ready: map['ready'] == null ? null : map['ready'] as String,
      source: map['source'] == null ? null : DomainDevicesDiskMirrorSource.fromMap((map['source'] as Map).cast<String, dynamic>()),
    );
  }
}


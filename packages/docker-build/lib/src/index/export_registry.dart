// ignore_for_file: unused_element, unnecessary_cast

import 'compression_type.dart';

class ExportRegistry {
  /// Attach an arbitrary key/value annotation to the image.
  final Map<String, String>? annotations;
  /// The compression type to use.
  final CompressionType? compression;
  /// Compression level from 0 to 22.
  final int? compressionLevel;
  /// Name image with `prefix@<digest>`, used for anonymous images.
  final String? danglingNamePrefix;
  /// Forcefully apply compression.
  final bool? forceCompression;
  /// Allow pushing to an insecure registry.
  final bool? insecure;
  /// Add additional canonical name (`name@<digest>`).
  final bool? nameCanonical;
  /// Specify images names to export. This is overridden if tags are already specified.
  final List<String>? names;
  /// Use OCI media types in exporter manifests.
  final bool? ociMediaTypes;
  /// Push after creating the image. Defaults to `true`.
  final bool? push;
  /// Push image without name.
  final bool? pushByDigest;
  /// Store resulting images to the worker's image store and ensure all of
  /// its blobs are in the content store.
  ///
  /// Defaults to `true`.
  ///
  /// Ignored if the worker doesn't have image store (when using OCI workers,
  /// for example).
  final bool? store;
  /// Unpack image after creation (for use with containerd). Defaults to
  /// `false`.
  final bool? unpack;

  /// Creates a new [ExportRegistry].
  /// [annotations] Attach an arbitrary key/value annotation to the image.
  /// [compression] The compression type to use.
  /// [compressionLevel] Compression level from 0 to 22.
  /// [danglingNamePrefix] Name image with `prefix@<digest>`, used for anonymous images.
  /// [forceCompression] Forcefully apply compression.
  /// [insecure] Allow pushing to an insecure registry.
  /// [nameCanonical] Add additional canonical name (`name@<digest>`).
  /// [names] Specify images names to export. This is overridden if tags are already specified.
  /// [ociMediaTypes] Use OCI media types in exporter manifests.
  /// [push] Push after creating the image. Defaults to `true`.
  /// [pushByDigest] Push image without name.
  /// [store] Store resulting images to the worker's image store and ensure all of
  /// [unpack] Unpack image after creation (for use with containerd). Defaults to
  ExportRegistry({
    this.annotations,
    this.compression,
    this.compressionLevel,
    this.danglingNamePrefix,
    this.forceCompression,
    this.insecure,
    this.nameCanonical,
    this.names,
    this.ociMediaTypes,
    this.push,
    this.pushByDigest,
    this.store,
    this.unpack,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'compression': ?compression == null ? null : compression!.value,
      'compressionLevel': ?compressionLevel,
      'danglingNamePrefix': ?danglingNamePrefix,
      'forceCompression': ?forceCompression,
      'insecure': ?insecure,
      'nameCanonical': ?nameCanonical,
      'names': ?names,
      'ociMediaTypes': ?ociMediaTypes,
      'push': ?push,
      'pushByDigest': ?pushByDigest,
      'store': ?store,
      'unpack': ?unpack,
    };
  }

  factory ExportRegistry.fromMap(Map<String, dynamic> map) {
    return ExportRegistry(
      annotations: map['annotations'] == null ? null : (map['annotations'] as Map).cast<String, String>(),
      compression: map['compression'] == null ? null : CompressionType.fromValue(map['compression'] as String),
      compressionLevel: map['compressionLevel'] == null ? null : map['compressionLevel'] as int,
      danglingNamePrefix: map['danglingNamePrefix'] == null ? null : map['danglingNamePrefix'] as String,
      forceCompression: map['forceCompression'] == null ? null : map['forceCompression'] as bool,
      insecure: map['insecure'] == null ? null : map['insecure'] as bool,
      nameCanonical: map['nameCanonical'] == null ? null : map['nameCanonical'] as bool,
      names: map['names'] == null ? null : (map['names'] as List).cast<String>(),
      ociMediaTypes: map['ociMediaTypes'] == null ? null : map['ociMediaTypes'] as bool,
      push: map['push'] == null ? null : map['push'] as bool,
      pushByDigest: map['pushByDigest'] == null ? null : map['pushByDigest'] as bool,
      store: map['store'] == null ? null : map['store'] as bool,
      unpack: map['unpack'] == null ? null : map['unpack'] as bool,
    );
  }
}


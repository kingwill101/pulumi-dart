// ignore_for_file: unused_element, unnecessary_cast

import 'export_docker.dart';
import 'export_image.dart';
import 'export_local.dart';
import 'export_oci.dart';
import 'export_registry.dart';
import 'export_tar.dart';

class Export {
  /// A no-op export. Helpful for silencing the 'no exports' warning if you
  /// just want to populate caches.
  final Map<String, dynamic>? cacheonly;
  /// When `true` this entry will be excluded. Defaults to `false`.
  final bool? disabled;
  /// Export as a Docker image layout.
  final ExportDocker? docker;
  /// Outputs the build result into a container image format.
  final ExportImage? image;
  /// Export to a local directory as files and directories.
  final ExportLocal? local;
  /// Identical to the Docker exporter but uses OCI media types by default.
  final ExportOCI? oci;
  /// A raw string as you would provide it to the Docker CLI (e.g.,
  /// `type=docker`)
  final String? raw;
  /// Identical to the Image exporter, but pushes by default.
  final ExportRegistry? registry;
  /// Export to a local directory as a tarball.
  final ExportTar? tar;

  /// Creates a new [Export].
  /// [cacheonly] A no-op export. Helpful for silencing the 'no exports' warning if you
  /// [disabled] When `true` this entry will be excluded. Defaults to `false`.
  /// [docker] Export as a Docker image layout.
  /// [image] Outputs the build result into a container image format.
  /// [local] Export to a local directory as files and directories.
  /// [oci] Identical to the Docker exporter but uses OCI media types by default.
  /// [raw] A raw string as you would provide it to the Docker CLI (e.g.,
  /// [registry] Identical to the Image exporter, but pushes by default.
  /// [tar] Export to a local directory as a tarball.
  Export({
    this.cacheonly,
    this.disabled,
    this.docker,
    this.image,
    this.local,
    this.oci,
    this.raw,
    this.registry,
    this.tar,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cacheonly': ?cacheonly,
      'disabled': ?disabled,
      'docker': ?docker == null ? null : docker!.toMap(),
      'image': ?image == null ? null : image!.toMap(),
      'local': ?local == null ? null : local!.toMap(),
      'oci': ?oci == null ? null : oci!.toMap(),
      'raw': ?raw,
      'registry': ?registry == null ? null : registry!.toMap(),
      'tar': ?tar == null ? null : tar!.toMap(),
    };
  }

  factory Export.fromMap(Map<String, dynamic> map) {
    return Export(
      cacheonly: map['cacheonly'] == null ? null : (map['cacheonly'] as Map).cast<String, dynamic>(),
      disabled: map['disabled'] == null ? null : map['disabled'] as bool,
      docker: map['docker'] == null ? null : ExportDocker.fromMap((map['docker'] as Map).cast<String, dynamic>()),
      image: map['image'] == null ? null : ExportImage.fromMap((map['image'] as Map).cast<String, dynamic>()),
      local: map['local'] == null ? null : ExportLocal.fromMap((map['local'] as Map).cast<String, dynamic>()),
      oci: map['oci'] == null ? null : ExportOCI.fromMap((map['oci'] as Map).cast<String, dynamic>()),
      raw: map['raw'] == null ? null : map['raw'] as String,
      registry: map['registry'] == null ? null : ExportRegistry.fromMap((map['registry'] as Map).cast<String, dynamic>()),
      tar: map['tar'] == null ? null : ExportTar.fromMap((map['tar'] as Map).cast<String, dynamic>()),
    );
  }
}


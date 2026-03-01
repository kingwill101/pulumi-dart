// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_filesystem_source_bind.dart';
import 'domain_devices_filesystem_source_block.dart';
import 'domain_devices_filesystem_source_file.dart';
import 'domain_devices_filesystem_source_mount.dart';
import 'domain_devices_filesystem_source_ram.dart';
import 'domain_devices_filesystem_source_template.dart';
import 'domain_devices_filesystem_source_volume.dart';

class DomainDevicesFilesystemSource {
  /// Configures the binding source for the filesystem.
  final DomainDevicesFilesystemSourceBind? bind;
  /// Specifies a block device as the source for the filesystem.
  final DomainDevicesFilesystemSourceBlock? block;
  /// Defines a file as the source for the filesystem.
  final DomainDevicesFilesystemSourceFile? file;
  /// Configures a mount point for the filesystem source.
  final DomainDevicesFilesystemSourceMount? mount;
  /// Configures a RAM source for the filesystem.
  final DomainDevicesFilesystemSourceRam? ram;
  /// Configures the template source for the filesystem.
  final DomainDevicesFilesystemSourceTemplate? template;
  /// Sets the volume element that specifies the source volume for the filesystem.
  final DomainDevicesFilesystemSourceVolume? volume;

  /// Creates a new [DomainDevicesFilesystemSource].
  /// [bind] Configures the binding source for the filesystem.
  /// [block] Specifies a block device as the source for the filesystem.
  /// [file] Defines a file as the source for the filesystem.
  /// [mount] Configures a mount point for the filesystem source.
  /// [ram] Configures a RAM source for the filesystem.
  /// [template] Configures the template source for the filesystem.
  /// [volume] Sets the volume element that specifies the source volume for the filesystem.
  DomainDevicesFilesystemSource({
    this.bind,
    this.block,
    this.file,
    this.mount,
    this.ram,
    this.template,
    this.volume,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bind': ?bind == null ? null : bind!.toMap(),
      'block': ?block == null ? null : block!.toMap(),
      'file': ?file == null ? null : file!.toMap(),
      'mount': ?mount == null ? null : mount!.toMap(),
      'ram': ?ram == null ? null : ram!.toMap(),
      'template': ?template == null ? null : template!.toMap(),
      'volume': ?volume == null ? null : volume!.toMap(),
    };
  }

  factory DomainDevicesFilesystemSource.fromMap(Map<String, dynamic> map) {
    return DomainDevicesFilesystemSource(
      bind: map['bind'] == null ? null : DomainDevicesFilesystemSourceBind.fromMap((map['bind'] as Map).cast<String, dynamic>()),
      block: map['block'] == null ? null : DomainDevicesFilesystemSourceBlock.fromMap((map['block'] as Map).cast<String, dynamic>()),
      file: map['file'] == null ? null : DomainDevicesFilesystemSourceFile.fromMap((map['file'] as Map).cast<String, dynamic>()),
      mount: map['mount'] == null ? null : DomainDevicesFilesystemSourceMount.fromMap((map['mount'] as Map).cast<String, dynamic>()),
      ram: map['ram'] == null ? null : DomainDevicesFilesystemSourceRam.fromMap((map['ram'] as Map).cast<String, dynamic>()),
      template: map['template'] == null ? null : DomainDevicesFilesystemSourceTemplate.fromMap((map['template'] as Map).cast<String, dynamic>()),
      volume: map['volume'] == null ? null : DomainDevicesFilesystemSourceVolume.fromMap((map['volume'] as Map).cast<String, dynamic>()),
    );
  }
}


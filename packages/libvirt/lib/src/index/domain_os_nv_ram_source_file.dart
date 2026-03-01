// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_os_nv_ram_source_file_sec_label.dart';

class DomainOsNvRamSourceFile {
  /// Sets the file descriptor group for the file specified in the backing store source.
  final String? fdGroup;
  /// Specifies the actual file referenced in the backing store source configuration.
  final String? file;
  /// Configures the security label associated with the file in the backing store source.
  final List<DomainOsNvRamSourceFileSecLabel>? secLabels;

  /// Creates a new [DomainOsNvRamSourceFile].
  /// [fdGroup] Sets the file descriptor group for the file specified in the backing store source.
  /// [file] Specifies the actual file referenced in the backing store source configuration.
  /// [secLabels] Configures the security label associated with the file in the backing store source.
  DomainOsNvRamSourceFile({
    this.fdGroup,
    this.file,
    this.secLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fdGroup': ?fdGroup,
      'file': ?file,
      'secLabels': ?secLabels == null ? null : pulumi.Input.encodeList<DomainOsNvRamSourceFileSecLabel, Map<String, dynamic>>(secLabels!, (value) => value.toMap()),
    };
  }

  factory DomainOsNvRamSourceFile.fromMap(Map<String, dynamic> map) {
    return DomainOsNvRamSourceFile(
      fdGroup: map['fdGroup'] == null ? null : map['fdGroup'] as String,
      file: map['file'] == null ? null : map['file'] as String,
      secLabels: map['secLabels'] == null ? null : pulumi.Input.decodeList<DomainOsNvRamSourceFileSecLabel>(map['secLabels'], (value) => DomainOsNvRamSourceFileSecLabel.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'obb_file.dart';
import 'regular_file.dart';

/// A single device file description.
class DeviceFile {
  /// A reference to an opaque binary blob file.
  final ObbFile? obbFile;

  /// A reference to a regular file.
  final RegularFile? regularFile;

  DeviceFile({
    this.obbFile,
    this.regularFile,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final obbFileValue = obbFile;
    if (obbFileValue != null) {
      map['obbFile'] = obbFileValue.toMap();
    }
    final regularFileValue = regularFile;
    if (regularFileValue != null) {
      map['regularFile'] = regularFileValue.toMap();
    }
    return map;
  }

  factory DeviceFile.fromMap(Map<String, dynamic> map) {
    return DeviceFile(
      obbFile: map['obbFile'] == null
          ? null
          : ObbFile.fromMap((map['obbFile'] as Map).cast<String, dynamic>()),
      regularFile: map['regularFile'] == null
          ? null
          : RegularFile.fromMap(
              (map['regularFile'] as Map).cast<String, dynamic>()),
    );
  }
}

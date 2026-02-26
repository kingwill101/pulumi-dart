// ignore_for_file: unused_element, unnecessary_cast

import 'obb_file_response.dart';
import 'regular_file_response.dart';

/// A single device file description.
class DeviceFileResponse {
  /// A reference to an opaque binary blob file.
  final ObbFileResponse obbFile;

  /// A reference to a regular file.
  final RegularFileResponse regularFile;

  DeviceFileResponse({
    required this.obbFile,
    required this.regularFile,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['obbFile'] = obbFile.toMap();
    map['regularFile'] = regularFile.toMap();
    return map;
  }

  factory DeviceFileResponse.fromMap(Map<String, dynamic> map) {
    return DeviceFileResponse(
      obbFile: ObbFileResponse.fromMap(
          (map['obbFile'] as Map).cast<String, dynamic>()),
      regularFile: RegularFileResponse.fromMap(
          (map['regularFile'] as Map).cast<String, dynamic>()),
    );
  }
}

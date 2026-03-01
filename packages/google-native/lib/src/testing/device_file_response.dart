// ignore_for_file: unused_element, unnecessary_cast

import 'obb_file_response.dart';
import 'regular_file_response.dart';

/// A single device file description.
class DeviceFileResponse {
  /// A reference to an opaque binary blob file.
  final ObbFileResponse obbFile;

  /// A reference to a regular file.
  final RegularFileResponse regularFile;

  /// Creates a new [DeviceFileResponse].
  /// [obbFile] A reference to an opaque binary blob file.
  /// [regularFile] A reference to a regular file.
  DeviceFileResponse({required this.obbFile, required this.regularFile});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'obbFile': obbFile.toMap(),
      'regularFile': regularFile.toMap(),
    };
  }

  factory DeviceFileResponse.fromMap(Map<String, dynamic> map) {
    return DeviceFileResponse(
      obbFile: ObbFileResponse.fromMap(
        (map['obbFile'] as Map).cast<String, dynamic>(),
      ),
      regularFile: RegularFileResponse.fromMap(
        (map['regularFile'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}

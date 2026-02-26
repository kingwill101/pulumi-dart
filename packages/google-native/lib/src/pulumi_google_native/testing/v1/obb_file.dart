// ignore_for_file: unused_element, unnecessary_cast

import 'file_reference.dart';

/// An opaque binary blob file to install on the device before the test starts.
class ObbFile {
  /// Opaque Binary Blob (OBB) file(s) to install on the device.
  final FileReference obb;

  /// OBB file name which must conform to the format as specified by Android e.g. [main|patch].0300110.com.example.android.obb which will be installed into \/Android/obb/\/ on the device.
  final String obbFileName;

  ObbFile({
    required this.obb,
    required this.obbFileName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['obb'] = obb.toMap();
    map['obbFileName'] = obbFileName;
    return map;
  }

  factory ObbFile.fromMap(Map<String, dynamic> map) {
    return ObbFile(
      obb: FileReference.fromMap((map['obb'] as Map).cast<String, dynamic>()),
      obbFileName: map['obbFileName'] as String,
    );
  }
}

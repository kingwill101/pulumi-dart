// ignore_for_file: unused_element, unnecessary_cast

import 'file_reference_response.dart';

/// A file or directory to install on the device before the test starts.
class IosDeviceFileResponse {
  /// The bundle id of the app where this file lives. iOS apps sandbox their own filesystem, so app files must specify which app installed on the device.
  final String bundleId;

  /// The source file
  final FileReferenceResponse content;

  /// Location of the file on the device, inside the app's sandboxed filesystem
  final String devicePath;

  /// Creates a new [IosDeviceFileResponse].
  /// [bundleId] The bundle id of the app where this file lives. iOS apps sandbox their own filesystem, so app files must specify which app installed on the device.
  /// [content] The source file
  /// [devicePath] Location of the file on the device, inside the app's sandboxed filesystem
  IosDeviceFileResponse({
    required this.bundleId,
    required this.content,
    required this.devicePath,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bundleId'] = bundleId;
    map['content'] = content.toMap();
    map['devicePath'] = devicePath;
    return map;
  }

  factory IosDeviceFileResponse.fromMap(Map<String, dynamic> map) {
    return IosDeviceFileResponse(
      bundleId: map['bundleId'] as String,
      content: FileReferenceResponse.fromMap(
          (map['content'] as Map).cast<String, dynamic>()),
      devicePath: map['devicePath'] as String,
    );
  }
}

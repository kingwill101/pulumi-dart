// ignore_for_file: unused_element, unnecessary_cast

import 'file_reference.dart';

/// A file or directory to install on the device before the test starts.
class IosDeviceFile {
  /// The bundle id of the app where this file lives. iOS apps sandbox their own filesystem, so app files must specify which app installed on the device.
  final String? bundleId;

  /// The source file
  final FileReference? content;

  /// Location of the file on the device, inside the app's sandboxed filesystem
  final String? devicePath;

  /// Creates a new [IosDeviceFile].
  /// [bundleId] The bundle id of the app where this file lives. iOS apps sandbox their own filesystem, so app files must specify which app installed on the device.
  /// [content] The source file
  /// [devicePath] Location of the file on the device, inside the app's sandboxed filesystem
  IosDeviceFile({this.bundleId, this.content, this.devicePath});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bundleId': ?bundleId,
      'content': ?content == null ? null : content!.toMap(),
      'devicePath': ?devicePath,
    };
  }

  factory IosDeviceFile.fromMap(Map<String, dynamic> map) {
    return IosDeviceFile(
      bundleId: map['bundleId'] == null ? null : map['bundleId'] as String,
      content: map['content'] == null
          ? null
          : FileReference.fromMap(
              (map['content'] as Map).cast<String, dynamic>(),
            ),
      devicePath: map['devicePath'] == null
          ? null
          : map['devicePath'] as String,
    );
  }
}

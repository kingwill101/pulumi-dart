// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_reference.dart';
import 'ios_device_file.dart';

/// A description of how to set up an iOS device prior to running the test.
class IosTestSetup {
  /// iOS apps to install in addition to those being directly tested.
  final List<FileReference>? additionalIpas;

  /// The network traffic profile used for running the test. Available network profiles can be queried by using the NETWORK_CONFIGURATION environment type when calling TestEnvironmentDiscoveryService.GetTestEnvironmentCatalog.
  final String? networkProfile;

  /// List of directories on the device to upload to Cloud Storage at the end of the test. Directories should either be in a shared directory (such as /private/var/mobile/Media) or within an accessible directory inside the app's filesystem (such as /Documents) by specifying the bundle ID.
  final List<IosDeviceFile>? pullDirectories;

  /// List of files to push to the device before starting the test.
  final List<IosDeviceFile>? pushFiles;

  IosTestSetup({
    this.additionalIpas,
    this.networkProfile,
    this.pullDirectories,
    this.pushFiles,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final additionalIpasValue = additionalIpas;
    if (additionalIpasValue != null) {
      map['additionalIpas'] =
          pulumi.Input.encodeList<FileReference, Map<String, dynamic>>(
              additionalIpasValue, (value) => value.toMap());
    }
    final networkProfileValue = networkProfile;
    if (networkProfileValue != null) {
      map['networkProfile'] = networkProfileValue;
    }
    final pullDirectoriesValue = pullDirectories;
    if (pullDirectoriesValue != null) {
      map['pullDirectories'] =
          pulumi.Input.encodeList<IosDeviceFile, Map<String, dynamic>>(
              pullDirectoriesValue, (value) => value.toMap());
    }
    final pushFilesValue = pushFiles;
    if (pushFilesValue != null) {
      map['pushFiles'] =
          pulumi.Input.encodeList<IosDeviceFile, Map<String, dynamic>>(
              pushFilesValue, (value) => value.toMap());
    }
    return map;
  }

  factory IosTestSetup.fromMap(Map<String, dynamic> map) {
    return IosTestSetup(
      additionalIpas: map['additionalIpas'] == null
          ? null
          : pulumi.Input.decodeList<FileReference>(
              map['additionalIpas'],
              (value) => FileReference.fromMap(
                  (value as Map).cast<String, dynamic>())),
      networkProfile: map['networkProfile'] == null
          ? null
          : map['networkProfile'] as String,
      pullDirectories: map['pullDirectories'] == null
          ? null
          : pulumi.Input.decodeList<IosDeviceFile>(
              map['pullDirectories'],
              (value) => IosDeviceFile.fromMap(
                  (value as Map).cast<String, dynamic>())),
      pushFiles: map['pushFiles'] == null
          ? null
          : pulumi.Input.decodeList<IosDeviceFile>(
              map['pushFiles'],
              (value) => IosDeviceFile.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}

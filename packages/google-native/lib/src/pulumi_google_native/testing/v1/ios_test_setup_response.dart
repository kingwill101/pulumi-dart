// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'file_reference_response.dart';
import 'ios_device_file_response.dart';

/// A description of how to set up an iOS device prior to running the test.
class IosTestSetupResponse {
  /// iOS apps to install in addition to those being directly tested.
  final List<FileReferenceResponse> additionalIpas;

  /// The network traffic profile used for running the test. Available network profiles can be queried by using the NETWORK_CONFIGURATION environment type when calling TestEnvironmentDiscoveryService.GetTestEnvironmentCatalog.
  final String networkProfile;

  /// List of directories on the device to upload to Cloud Storage at the end of the test. Directories should either be in a shared directory (such as /private/var/mobile/Media) or within an accessible directory inside the app's filesystem (such as /Documents) by specifying the bundle ID.
  final List<IosDeviceFileResponse> pullDirectories;

  /// List of files to push to the device before starting the test.
  final List<IosDeviceFileResponse> pushFiles;

  IosTestSetupResponse({
    required this.additionalIpas,
    required this.networkProfile,
    required this.pullDirectories,
    required this.pushFiles,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['additionalIpas'] =
        Input.encodeList<FileReferenceResponse, Map<String, dynamic>>(
            additionalIpas, (value) => value.toMap());
    map['networkProfile'] = networkProfile;
    map['pullDirectories'] =
        Input.encodeList<IosDeviceFileResponse, Map<String, dynamic>>(
            pullDirectories, (value) => value.toMap());
    map['pushFiles'] =
        Input.encodeList<IosDeviceFileResponse, Map<String, dynamic>>(
            pushFiles, (value) => value.toMap());
    return map;
  }

  factory IosTestSetupResponse.fromMap(Map<String, dynamic> map) {
    return IosTestSetupResponse(
      additionalIpas: Input.decodeList<FileReferenceResponse>(
          map['additionalIpas'],
          (value) => FileReferenceResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      networkProfile: map['networkProfile'] as String,
      pullDirectories: Input.decodeList<IosDeviceFileResponse>(
          map['pullDirectories'],
          (value) => IosDeviceFileResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      pushFiles: Input.decodeList<IosDeviceFileResponse>(
          map['pushFiles'],
          (value) => IosDeviceFileResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
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

  /// Creates a new [IosTestSetupResponse].
  /// [additionalIpas] iOS apps to install in addition to those being directly tested.
  /// [networkProfile] The network traffic profile used for running the test. Available network profiles can be queried by using the NETWORK_CONFIGURATION environment type when calling TestEnvironmentDiscoveryService.GetTestEnvironmentCatalog.
  /// [pullDirectories] List of directories on the device to upload to Cloud Storage at the end of the test. Directories should either be in a shared directory (such as /private/var/mobile/Media) or within an accessible directory inside the app's filesystem (such as /Documents) by specifying the bundle ID.
  /// [pushFiles] List of files to push to the device before starting the test.
  IosTestSetupResponse({
    required this.additionalIpas,
    required this.networkProfile,
    required this.pullDirectories,
    required this.pushFiles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalIpas':
          pulumi.Input.encodeList<FileReferenceResponse, Map<String, dynamic>>(
            additionalIpas,
            (value) => value.toMap(),
          ),
      'networkProfile': networkProfile,
      'pullDirectories':
          pulumi.Input.encodeList<IosDeviceFileResponse, Map<String, dynamic>>(
            pullDirectories,
            (value) => value.toMap(),
          ),
      'pushFiles':
          pulumi.Input.encodeList<IosDeviceFileResponse, Map<String, dynamic>>(
            pushFiles,
            (value) => value.toMap(),
          ),
    };
  }

  factory IosTestSetupResponse.fromMap(Map<String, dynamic> map) {
    return IosTestSetupResponse(
      additionalIpas: pulumi.Input.decodeList<FileReferenceResponse>(
        map['additionalIpas'],
        (value) => FileReferenceResponse.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      networkProfile: map['networkProfile'] as String,
      pullDirectories: pulumi.Input.decodeList<IosDeviceFileResponse>(
        map['pullDirectories'],
        (value) => IosDeviceFileResponse.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      pushFiles: pulumi.Input.decodeList<IosDeviceFileResponse>(
        map['pushFiles'],
        (value) => IosDeviceFileResponse.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}

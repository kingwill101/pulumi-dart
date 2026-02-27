// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account.dart';
import 'apk.dart';
import 'device_file.dart';
import 'environment_variable.dart';
import 'systrace_setup.dart';

/// A description of how to set up the Android device prior to running the test.
class TestSetup {
  /// The device will be logged in on this account for the duration of the test.
  final Account? account;

  /// APKs to install in addition to those being directly tested. These will be installed after the app under test. Currently capped at 100.
  final List<Apk>? additionalApks;

  /// List of directories on the device to upload to GCS at the end of the test; they must be absolute paths under /sdcard, /storage or /data/local/tmp. Path names are restricted to characters a-z A-Z 0-9 _ - . + and / Note: The paths /sdcard and /data will be made available and treated as implicit path substitutions. E.g. if /sdcard on a particular device does not map to external storage, the system will replace it with the external storage path prefix for that device.
  final List<String>? directoriesToPull;

  /// Whether to prevent all runtime permissions to be granted at app install
  final bool? dontAutograntPermissions;

  /// Environment variables to set for the test (only applicable for instrumentation tests).
  final List<EnvironmentVariable>? environmentVariables;

  /// List of files to push to the device before starting the test.
  final List<DeviceFile>? filesToPush;

  /// Optional. Initial setup APKs to install before the app under test is installed. Currently capped at 100.
  final List<Apk>? initialSetupApks;

  /// The network traffic profile used for running the test. Available network profiles can be queried by using the NETWORK_CONFIGURATION environment type when calling TestEnvironmentDiscoveryService.GetTestEnvironmentCatalog.
  final String? networkProfile;

  /// Systrace configuration for the run. Deprecated: Systrace used Python 2 which was sunsetted on 2020-01-01. Systrace is no longer supported in the Cloud Testing API, and no Systrace file will be provided in the results.
  final SystraceSetup? systrace;

  TestSetup({
    this.account,
    this.additionalApks,
    this.directoriesToPull,
    this.dontAutograntPermissions,
    this.environmentVariables,
    this.filesToPush,
    this.initialSetupApks,
    this.networkProfile,
    this.systrace,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accountValue = account;
    if (accountValue != null) {
      map['account'] = accountValue.toMap();
    }
    final additionalApksValue = additionalApks;
    if (additionalApksValue != null) {
      map['additionalApks'] =
          pulumi.Input.encodeList<Apk, Map<String, dynamic>>(
              additionalApksValue, (value) => value.toMap());
    }
    final directoriesToPullValue = directoriesToPull;
    if (directoriesToPullValue != null) {
      map['directoriesToPull'] = directoriesToPullValue;
    }
    final dontAutograntPermissionsValue = dontAutograntPermissions;
    if (dontAutograntPermissionsValue != null) {
      map['dontAutograntPermissions'] = dontAutograntPermissionsValue;
    }
    final environmentVariablesValue = environmentVariables;
    if (environmentVariablesValue != null) {
      map['environmentVariables'] =
          pulumi.Input.encodeList<EnvironmentVariable, Map<String, dynamic>>(
              environmentVariablesValue, (value) => value.toMap());
    }
    final filesToPushValue = filesToPush;
    if (filesToPushValue != null) {
      map['filesToPush'] =
          pulumi.Input.encodeList<DeviceFile, Map<String, dynamic>>(
              filesToPushValue, (value) => value.toMap());
    }
    final initialSetupApksValue = initialSetupApks;
    if (initialSetupApksValue != null) {
      map['initialSetupApks'] =
          pulumi.Input.encodeList<Apk, Map<String, dynamic>>(
              initialSetupApksValue, (value) => value.toMap());
    }
    final networkProfileValue = networkProfile;
    if (networkProfileValue != null) {
      map['networkProfile'] = networkProfileValue;
    }
    final systraceValue = systrace;
    if (systraceValue != null) {
      map['systrace'] = systraceValue.toMap();
    }
    return map;
  }

  factory TestSetup.fromMap(Map<String, dynamic> map) {
    return TestSetup(
      account: map['account'] == null
          ? null
          : Account.fromMap((map['account'] as Map).cast<String, dynamic>()),
      additionalApks: map['additionalApks'] == null
          ? null
          : pulumi.Input.decodeList<Apk>(map['additionalApks'],
              (value) => Apk.fromMap((value as Map).cast<String, dynamic>())),
      directoriesToPull: map['directoriesToPull'] == null
          ? null
          : (map['directoriesToPull'] as List).cast<String>(),
      dontAutograntPermissions: map['dontAutograntPermissions'] == null
          ? null
          : map['dontAutograntPermissions'] as bool,
      environmentVariables: map['environmentVariables'] == null
          ? null
          : pulumi.Input.decodeList<EnvironmentVariable>(
              map['environmentVariables'],
              (value) => EnvironmentVariable.fromMap(
                  (value as Map).cast<String, dynamic>())),
      filesToPush: map['filesToPush'] == null
          ? null
          : pulumi.Input.decodeList<DeviceFile>(
              map['filesToPush'],
              (value) =>
                  DeviceFile.fromMap((value as Map).cast<String, dynamic>())),
      initialSetupApks: map['initialSetupApks'] == null
          ? null
          : pulumi.Input.decodeList<Apk>(map['initialSetupApks'],
              (value) => Apk.fromMap((value as Map).cast<String, dynamic>())),
      networkProfile: map['networkProfile'] == null
          ? null
          : map['networkProfile'] as String,
      systrace: map['systrace'] == null
          ? null
          : SystraceSetup.fromMap(
              (map['systrace'] as Map).cast<String, dynamic>()),
    );
  }
}

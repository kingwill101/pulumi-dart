// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'upgrade_distribution_response.dart';
import 'version_response.dart';
import 'windows_update_response.dart';

/// An Upgrade Note represents a potential upgrade of a package to a given version. For each package version combination (i.e. bash 4.0, bash 4.1, bash 4.1.2), there will be an Upgrade Note. For Windows, windows_update field represents the information related to the update.
class UpgradeNoteResponse {
  /// Metadata about the upgrade for each specific operating system.
  final List<UpgradeDistributionResponse> distributions;

  /// Required for non-Windows OS. The package this Upgrade is for.
  final String package;

  /// Required for non-Windows OS. The version of the package in machine + human readable form.
  final VersionResponse version;

  /// Required for Windows OS. Represents the metadata about the Windows update.
  final WindowsUpdateResponse windowsUpdate;

  /// Creates a new [UpgradeNoteResponse].
  /// [distributions] Metadata about the upgrade for each specific operating system.
  /// [package] Required for non-Windows OS. The package this Upgrade is for.
  /// [version] Required for non-Windows OS. The version of the package in machine + human readable form.
  /// [windowsUpdate] Required for Windows OS. Represents the metadata about the Windows update.
  UpgradeNoteResponse({
    required this.distributions,
    required this.package,
    required this.version,
    required this.windowsUpdate,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['distributions'] = pulumi.Input.encodeList<UpgradeDistributionResponse,
        Map<String, dynamic>>(distributions, (value) => value.toMap());
    map['package'] = package;
    map['version'] = version.toMap();
    map['windowsUpdate'] = windowsUpdate.toMap();
    return map;
  }

  factory UpgradeNoteResponse.fromMap(Map<String, dynamic> map) {
    return UpgradeNoteResponse(
      distributions: pulumi.Input.decodeList<UpgradeDistributionResponse>(
          map['distributions'],
          (value) => UpgradeDistributionResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      package: map['package'] as String,
      version: VersionResponse.fromMap(
          (map['version'] as Map).cast<String, dynamic>()),
      windowsUpdate: WindowsUpdateResponse.fromMap(
          (map['windowsUpdate'] as Map).cast<String, dynamic>()),
    );
  }
}

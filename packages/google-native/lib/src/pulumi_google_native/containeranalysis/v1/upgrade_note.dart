// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'upgrade_distribution.dart';
import 'version.dart';
import 'windows_update.dart';

/// An Upgrade Note represents a potential upgrade of a package to a given version. For each package version combination (i.e. bash 4.0, bash 4.1, bash 4.1.2), there will be an Upgrade Note. For Windows, windows_update field represents the information related to the update.
class UpgradeNote {
  /// Metadata about the upgrade for each specific operating system.
  final List<UpgradeDistribution>? distributions;

  /// Required for non-Windows OS. The package this Upgrade is for.
  final String? package;

  /// Required for non-Windows OS. The version of the package in machine + human readable form.
  final Version? version;

  /// Required for Windows OS. Represents the metadata about the Windows update.
  final WindowsUpdate? windowsUpdate;

  UpgradeNote({
    this.distributions,
    this.package,
    this.version,
    this.windowsUpdate,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final distributionsValue = distributions;
    if (distributionsValue != null) {
      map['distributions'] =
          pulumi.Input.encodeList<UpgradeDistribution, Map<String, dynamic>>(
              distributionsValue, (value) => value.toMap());
    }
    final packageValue = package;
    if (packageValue != null) {
      map['package'] = packageValue;
    }
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue.toMap();
    }
    final windowsUpdateValue = windowsUpdate;
    if (windowsUpdateValue != null) {
      map['windowsUpdate'] = windowsUpdateValue.toMap();
    }
    return map;
  }

  factory UpgradeNote.fromMap(Map<String, dynamic> map) {
    return UpgradeNote(
      distributions: map['distributions'] == null
          ? null
          : pulumi.Input.decodeList<UpgradeDistribution>(
              map['distributions'],
              (value) => UpgradeDistribution.fromMap(
                  (value as Map).cast<String, dynamic>())),
      package: map['package'] == null ? null : map['package'] as String,
      version: map['version'] == null
          ? null
          : Version.fromMap((map['version'] as Map).cast<String, dynamic>()),
      windowsUpdate: map['windowsUpdate'] == null
          ? null
          : WindowsUpdate.fromMap(
              (map['windowsUpdate'] as Map).cast<String, dynamic>()),
    );
  }
}

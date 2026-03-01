// ignore_for_file: unused_element, unnecessary_cast

import 'upgrade_distribution.dart';
import 'version.dart';
import 'windows_update.dart';

/// An Upgrade Occurrence represents that a specific resource_url could install a specific upgrade. This presence is supplied via local sources (i.e. it is present in the mirror and the running system has noticed its availability). For Windows, both distribution and windows_update contain information for the Windows update.
class UpgradeOccurrence {
  /// Metadata about the upgrade for available for the specific operating system for the resource_url. This allows efficient filtering, as well as making it easier to use the occurrence.
  final UpgradeDistribution? distribution;

  /// Required for non-Windows OS. The package this Upgrade is for.
  final String? package;

  /// Required for non-Windows OS. The version of the package in a machine + human readable form.
  final Version? parsedVersion;

  /// Required for Windows OS. Represents the metadata about the Windows update.
  final WindowsUpdate? windowsUpdate;

  /// Creates a new [UpgradeOccurrence].
  /// [distribution] Metadata about the upgrade for available for the specific operating system for the resource_url. This allows efficient filtering, as well as making it easier to use the occurrence.
  /// [package] Required for non-Windows OS. The package this Upgrade is for.
  /// [parsedVersion] Required for non-Windows OS. The version of the package in a machine + human readable form.
  /// [windowsUpdate] Required for Windows OS. Represents the metadata about the Windows update.
  UpgradeOccurrence({
    this.distribution,
    this.package,
    this.parsedVersion,
    this.windowsUpdate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'distribution': ?distribution == null ? null : distribution!.toMap(),
      'package': ?package,
      'parsedVersion': ?parsedVersion == null ? null : parsedVersion!.toMap(),
      'windowsUpdate': ?windowsUpdate == null ? null : windowsUpdate!.toMap(),
    };
  }

  factory UpgradeOccurrence.fromMap(Map<String, dynamic> map) {
    return UpgradeOccurrence(
      distribution: map['distribution'] == null
          ? null
          : UpgradeDistribution.fromMap(
              (map['distribution'] as Map).cast<String, dynamic>(),
            ),
      package: map['package'] == null ? null : map['package'] as String,
      parsedVersion: map['parsedVersion'] == null
          ? null
          : Version.fromMap(
              (map['parsedVersion'] as Map).cast<String, dynamic>(),
            ),
      windowsUpdate: map['windowsUpdate'] == null
          ? null
          : WindowsUpdate.fromMap(
              (map['windowsUpdate'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}

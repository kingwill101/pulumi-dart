// ignore_for_file: unused_element, unnecessary_cast

import 'upgrade_distribution2.dart';
import 'version2.dart';

/// An Upgrade Occurrence represents that a specific resource_url could install a specific upgrade. This presence is supplied via local sources (i.e. it is present in the mirror and the running system has noticed its availability).
class UpgradeOccurrence2 {
  /// Metadata about the upgrade for available for the specific operating system for the resource_url. This allows efficient filtering, as well as making it easier to use the occurrence.
  final UpgradeDistribution2? distribution;

  /// Required - The package this Upgrade is for.
  final String? package;

  /// Required - The version of the package in a machine + human readable form.
  final Version2? parsedVersion;

  UpgradeOccurrence2({
    this.distribution,
    this.package,
    this.parsedVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final distributionValue = distribution;
    if (distributionValue != null) {
      map['distribution'] = distributionValue.toMap();
    }
    final packageValue = package;
    if (packageValue != null) {
      map['package'] = packageValue;
    }
    final parsedVersionValue = parsedVersion;
    if (parsedVersionValue != null) {
      map['parsedVersion'] = parsedVersionValue.toMap();
    }
    return map;
  }

  factory UpgradeOccurrence2.fromMap(Map<String, dynamic> map) {
    return UpgradeOccurrence2(
      distribution: map['distribution'] == null
          ? null
          : UpgradeDistribution2.fromMap(
              (map['distribution'] as Map).cast<String, dynamic>()),
      package: map['package'] == null ? null : map['package'] as String,
      parsedVersion: map['parsedVersion'] == null
          ? null
          : Version2.fromMap(
              (map['parsedVersion'] as Map).cast<String, dynamic>()),
    );
  }
}

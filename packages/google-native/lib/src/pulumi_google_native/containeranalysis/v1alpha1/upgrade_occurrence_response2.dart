// ignore_for_file: unused_element, unnecessary_cast

import 'upgrade_distribution_response2.dart';
import 'version_response2.dart';

/// An Upgrade Occurrence represents that a specific resource_url could install a specific upgrade. This presence is supplied via local sources (i.e. it is present in the mirror and the running system has noticed its availability).
class UpgradeOccurrenceResponse2 {
  /// Metadata about the upgrade for available for the specific operating system for the resource_url. This allows efficient filtering, as well as making it easier to use the occurrence.
  final UpgradeDistributionResponse2 distribution;

  /// Required - The package this Upgrade is for.
  final String package;

  /// Required - The version of the package in a machine + human readable form.
  final VersionResponse2 parsedVersion;

  UpgradeOccurrenceResponse2({
    required this.distribution,
    required this.package,
    required this.parsedVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['distribution'] = distribution.toMap();
    map['package'] = package;
    map['parsedVersion'] = parsedVersion.toMap();
    return map;
  }

  factory UpgradeOccurrenceResponse2.fromMap(Map<String, dynamic> map) {
    return UpgradeOccurrenceResponse2(
      distribution: UpgradeDistributionResponse2.fromMap(
          (map['distribution'] as Map).cast<String, dynamic>()),
      package: map['package'] as String,
      parsedVersion: VersionResponse2.fromMap(
          (map['parsedVersion'] as Map).cast<String, dynamic>()),
    );
  }
}

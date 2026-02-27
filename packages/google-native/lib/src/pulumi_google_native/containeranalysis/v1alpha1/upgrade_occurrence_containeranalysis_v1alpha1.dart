// ignore_for_file: unused_element, unnecessary_cast

import 'upgrade_distribution_containeranalysis_v1alpha1.dart';
import 'version_containeranalysis_v1alpha1.dart';

/// An Upgrade Occurrence represents that a specific resource_url could install a specific upgrade. This presence is supplied via local sources (i.e. it is present in the mirror and the running system has noticed its availability).
class UpgradeOccurrenceContaineranalysisV1alpha1 {
  /// Metadata about the upgrade for available for the specific operating system for the resource_url. This allows efficient filtering, as well as making it easier to use the occurrence.
  final UpgradeDistributionContaineranalysisV1alpha1? distribution;

  /// Required - The package this Upgrade is for.
  final String? package;

  /// Required - The version of the package in a machine + human readable form.
  final VersionContaineranalysisV1alpha1? parsedVersion;

  UpgradeOccurrenceContaineranalysisV1alpha1({
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

  factory UpgradeOccurrenceContaineranalysisV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return UpgradeOccurrenceContaineranalysisV1alpha1(
      distribution: map['distribution'] == null
          ? null
          : UpgradeDistributionContaineranalysisV1alpha1.fromMap(
              (map['distribution'] as Map).cast<String, dynamic>()),
      package: map['package'] == null ? null : map['package'] as String,
      parsedVersion: map['parsedVersion'] == null
          ? null
          : VersionContaineranalysisV1alpha1.fromMap(
              (map['parsedVersion'] as Map).cast<String, dynamic>()),
    );
  }
}

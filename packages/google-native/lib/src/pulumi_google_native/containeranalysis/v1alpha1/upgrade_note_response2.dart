// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'upgrade_distribution_response2.dart';
import 'version_response2.dart';

/// An Upgrade Note represents a potential upgrade of a package to a given version. For each package version combination (i.e. bash 4.0, bash 4.1, bash 4.1.2), there will be a Upgrade Note.
class UpgradeNoteResponse2 {
  /// Metadata about the upgrade for each specific operating system.
  final List<UpgradeDistributionResponse2> distributions;

  /// Required - The package this Upgrade is for.
  final String package;

  /// Required - The version of the package in machine + human readable form.
  final VersionResponse2 version;

  UpgradeNoteResponse2({
    required this.distributions,
    required this.package,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['distributions'] =
        Input.encodeList<UpgradeDistributionResponse2, Map<String, dynamic>>(
            distributions, (value) => value.toMap());
    map['package'] = package;
    map['version'] = version.toMap();
    return map;
  }

  factory UpgradeNoteResponse2.fromMap(Map<String, dynamic> map) {
    return UpgradeNoteResponse2(
      distributions: Input.decodeList<UpgradeDistributionResponse2>(
          map['distributions'],
          (value) => UpgradeDistributionResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
      package: map['package'] as String,
      version: VersionResponse2.fromMap(
          (map['version'] as Map).cast<String, dynamic>()),
    );
  }
}

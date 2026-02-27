// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'upgrade_distribution2.dart';
import 'version2.dart';

/// An Upgrade Note represents a potential upgrade of a package to a given version. For each package version combination (i.e. bash 4.0, bash 4.1, bash 4.1.2), there will be a Upgrade Note.
class UpgradeNote2 {
  /// Metadata about the upgrade for each specific operating system.
  final List<UpgradeDistribution2>? distributions;

  /// Required - The package this Upgrade is for.
  final String? package;

  /// Required - The version of the package in machine + human readable form.
  final Version2? version;

  UpgradeNote2({
    this.distributions,
    this.package,
    this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final distributionsValue = distributions;
    if (distributionsValue != null) {
      map['distributions'] =
          Input.encodeList<UpgradeDistribution2, Map<String, dynamic>>(
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
    return map;
  }

  factory UpgradeNote2.fromMap(Map<String, dynamic> map) {
    return UpgradeNote2(
      distributions: map['distributions'] == null
          ? null
          : Input.decodeList<UpgradeDistribution2>(
              map['distributions'],
              (value) => UpgradeDistribution2.fromMap(
                  (value as Map).cast<String, dynamic>())),
      package: map['package'] == null ? null : map['package'] as String,
      version: map['version'] == null
          ? null
          : Version2.fromMap((map['version'] as Map).cast<String, dynamic>()),
    );
  }
}

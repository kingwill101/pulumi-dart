// ignore_for_file: unused_element, unnecessary_cast

import 'version_response3.dart';
import 'vulnerability_location_response2.dart';

/// Identifies all appearances of this vulnerability in the package for a specific distro/location. For example: glibc in cpe:/o:debian:debian_linux:8 for versions 2.1 - 2.2
class DetailResponse3 {
  /// The CPE URI in [cpe format](https://cpe.mitre.org/specification/) in which the vulnerability manifests. Examples include distro or storage location for vulnerable jar.
  final String cpeUri;

  /// A vendor-specific description of this note.
  final String description;

  /// The fix for this specific package version.
  final VulnerabilityLocationResponse2 fixedLocation;

  /// Whether this detail is obsolete. Occurrences are expected not to point to obsolete details.
  final bool isObsolete;

  /// The max version of the package in which the vulnerability exists.
  final VersionResponse3 maxAffectedVersion;

  /// The min version of the package in which the vulnerability exists.
  final VersionResponse3 minAffectedVersion;

  /// The name of the package where the vulnerability was found.
  final String package;

  /// The type of package; whether native or non native(ruby gems, node.js packages etc).
  final String packageType;

  /// The severity (eg: distro assigned severity) for this vulnerability.
  final String severityName;

  /// The source from which the information in this Detail was obtained.
  final String source;

  /// The time this information was last changed at the source. This is an upstream timestamp from the underlying information source - e.g. Ubuntu security tracker.
  final String sourceUpdateTime;

  /// The name of the vendor of the product.
  final String vendor;

  DetailResponse3({
    required this.cpeUri,
    required this.description,
    required this.fixedLocation,
    required this.isObsolete,
    required this.maxAffectedVersion,
    required this.minAffectedVersion,
    required this.package,
    required this.packageType,
    required this.severityName,
    required this.source,
    required this.sourceUpdateTime,
    required this.vendor,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cpeUri'] = cpeUri;
    map['description'] = description;
    map['fixedLocation'] = fixedLocation.toMap();
    map['isObsolete'] = isObsolete;
    map['maxAffectedVersion'] = maxAffectedVersion.toMap();
    map['minAffectedVersion'] = minAffectedVersion.toMap();
    map['package'] = package;
    map['packageType'] = packageType;
    map['severityName'] = severityName;
    map['source'] = source;
    map['sourceUpdateTime'] = sourceUpdateTime;
    map['vendor'] = vendor;
    return map;
  }

  factory DetailResponse3.fromMap(Map<String, dynamic> map) {
    return DetailResponse3(
      cpeUri: map['cpeUri'] as String,
      description: map['description'] as String,
      fixedLocation: VulnerabilityLocationResponse2.fromMap(
          (map['fixedLocation'] as Map).cast<String, dynamic>()),
      isObsolete: map['isObsolete'] as bool,
      maxAffectedVersion: VersionResponse3.fromMap(
          (map['maxAffectedVersion'] as Map).cast<String, dynamic>()),
      minAffectedVersion: VersionResponse3.fromMap(
          (map['minAffectedVersion'] as Map).cast<String, dynamic>()),
      package: map['package'] as String,
      packageType: map['packageType'] as String,
      severityName: map['severityName'] as String,
      source: map['source'] as String,
      sourceUpdateTime: map['sourceUpdateTime'] as String,
      vendor: map['vendor'] as String,
    );
  }
}

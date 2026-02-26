// ignore_for_file: unused_element, unnecessary_cast

import 'version_response.dart';

/// A detail for a distro and package affected by this vulnerability and its associated fix (if one is available).
class DetailResponse {
  /// The [CPE URI](https://cpe.mitre.org/specification/) this vulnerability affects.
  final String affectedCpeUri;

  /// The package this vulnerability affects.
  final String affectedPackage;

  /// The version number at the end of an interval in which this vulnerability exists. A vulnerability can affect a package between version numbers that are disjoint sets of intervals (example: [1.0.0-1.1.0], [2.4.6-2.4.8] and [4.5.6-4.6.8]) each of which will be represented in its own Detail. If a specific affected version is provided by a vulnerability database, affected_version_start and affected_version_end will be the same in that Detail.
  final VersionResponse affectedVersionEnd;

  /// The version number at the start of an interval in which this vulnerability exists. A vulnerability can affect a package between version numbers that are disjoint sets of intervals (example: [1.0.0-1.1.0], [2.4.6-2.4.8] and [4.5.6-4.6.8]) each of which will be represented in its own Detail. If a specific affected version is provided by a vulnerability database, affected_version_start and affected_version_end will be the same in that Detail.
  final VersionResponse affectedVersionStart;

  /// A vendor-specific description of this vulnerability.
  final String description;

  /// The distro recommended [CPE URI](https://cpe.mitre.org/specification/) to update to that contains a fix for this vulnerability. It is possible for this to be different from the affected_cpe_uri.
  final String fixedCpeUri;

  /// The distro recommended package to update to that contains a fix for this vulnerability. It is possible for this to be different from the affected_package.
  final String fixedPackage;

  /// The distro recommended version to update to that contains a fix for this vulnerability. Setting this to VersionKind.MAXIMUM means no such version is yet available.
  final VersionResponse fixedVersion;

  /// Whether this detail is obsolete. Occurrences are expected not to point to obsolete details.
  final bool isObsolete;

  /// The type of package; whether native or non native (e.g., ruby gems, node.js packages, etc.).
  final String packageType;

  /// The distro assigned severity of this vulnerability.
  final String severityName;

  /// The source from which the information in this Detail was obtained.
  final String source;

  /// The time this information was last changed at the source. This is an upstream timestamp from the underlying information source - e.g. Ubuntu security tracker.
  final String sourceUpdateTime;

  /// The name of the vendor of the product.
  final String vendor;

  DetailResponse({
    required this.affectedCpeUri,
    required this.affectedPackage,
    required this.affectedVersionEnd,
    required this.affectedVersionStart,
    required this.description,
    required this.fixedCpeUri,
    required this.fixedPackage,
    required this.fixedVersion,
    required this.isObsolete,
    required this.packageType,
    required this.severityName,
    required this.source,
    required this.sourceUpdateTime,
    required this.vendor,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['affectedCpeUri'] = affectedCpeUri;
    map['affectedPackage'] = affectedPackage;
    map['affectedVersionEnd'] = affectedVersionEnd.toMap();
    map['affectedVersionStart'] = affectedVersionStart.toMap();
    map['description'] = description;
    map['fixedCpeUri'] = fixedCpeUri;
    map['fixedPackage'] = fixedPackage;
    map['fixedVersion'] = fixedVersion.toMap();
    map['isObsolete'] = isObsolete;
    map['packageType'] = packageType;
    map['severityName'] = severityName;
    map['source'] = source;
    map['sourceUpdateTime'] = sourceUpdateTime;
    map['vendor'] = vendor;
    return map;
  }

  factory DetailResponse.fromMap(Map<String, dynamic> map) {
    return DetailResponse(
      affectedCpeUri: map['affectedCpeUri'] as String,
      affectedPackage: map['affectedPackage'] as String,
      affectedVersionEnd: VersionResponse.fromMap(
          (map['affectedVersionEnd'] as Map).cast<String, dynamic>()),
      affectedVersionStart: VersionResponse.fromMap(
          (map['affectedVersionStart'] as Map).cast<String, dynamic>()),
      description: map['description'] as String,
      fixedCpeUri: map['fixedCpeUri'] as String,
      fixedPackage: map['fixedPackage'] as String,
      fixedVersion: VersionResponse.fromMap(
          (map['fixedVersion'] as Map).cast<String, dynamic>()),
      isObsolete: map['isObsolete'] as bool,
      packageType: map['packageType'] as String,
      severityName: map['severityName'] as String,
      source: map['source'] as String,
      sourceUpdateTime: map['sourceUpdateTime'] as String,
      vendor: map['vendor'] as String,
    );
  }
}

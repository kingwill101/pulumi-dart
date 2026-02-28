// ignore_for_file: unused_element, unnecessary_cast

import 'version.dart';

/// A detail for a distro and package affected by this vulnerability and its associated fix (if one is available).
class Detail {
  /// The [CPE URI](https://cpe.mitre.org/specification/) this vulnerability affects.
  final String affectedCpeUri;

  /// The package this vulnerability affects.
  final String affectedPackage;

  /// The version number at the end of an interval in which this vulnerability exists. A vulnerability can affect a package between version numbers that are disjoint sets of intervals (example: [1.0.0-1.1.0], [2.4.6-2.4.8] and [4.5.6-4.6.8]) each of which will be represented in its own Detail. If a specific affected version is provided by a vulnerability database, affected_version_start and affected_version_end will be the same in that Detail.
  final Version? affectedVersionEnd;

  /// The version number at the start of an interval in which this vulnerability exists. A vulnerability can affect a package between version numbers that are disjoint sets of intervals (example: [1.0.0-1.1.0], [2.4.6-2.4.8] and [4.5.6-4.6.8]) each of which will be represented in its own Detail. If a specific affected version is provided by a vulnerability database, affected_version_start and affected_version_end will be the same in that Detail.
  final Version? affectedVersionStart;

  /// A vendor-specific description of this vulnerability.
  final String? description;

  /// The distro recommended [CPE URI](https://cpe.mitre.org/specification/) to update to that contains a fix for this vulnerability. It is possible for this to be different from the affected_cpe_uri.
  final String? fixedCpeUri;

  /// The distro recommended package to update to that contains a fix for this vulnerability. It is possible for this to be different from the affected_package.
  final String? fixedPackage;

  /// The distro recommended version to update to that contains a fix for this vulnerability. Setting this to VersionKind.MAXIMUM means no such version is yet available.
  final Version? fixedVersion;

  /// Whether this detail is obsolete. Occurrences are expected not to point to obsolete details.
  final bool? isObsolete;

  /// The type of package; whether native or non native (e.g., ruby gems, node.js packages, etc.).
  final String? packageType;

  /// The distro assigned severity of this vulnerability.
  final String? severityName;

  /// The source from which the information in this Detail was obtained.
  final String? source;

  /// The time this information was last changed at the source. This is an upstream timestamp from the underlying information source - e.g. Ubuntu security tracker.
  final String? sourceUpdateTime;

  /// The name of the vendor of the product.
  final String? vendor;

  /// Creates a new [Detail].
  /// [affectedCpeUri] The [CPE URI](https://cpe.mitre.org/specification/) this vulnerability affects.
  /// [affectedPackage] The package this vulnerability affects.
  /// [affectedVersionEnd] The version number at the end of an interval in which this vulnerability exists. A vulnerability can affect a package between version numbers that are disjoint sets of intervals (example: [1.0.0-1.1.0], [2.4.6-2.4.8] and [4.5.6-4.6.8]) each of which will be represented in its own Detail. If a specific affected version is provided by a vulnerability database, affected_version_start and affected_version_end will be the same in that Detail.
  /// [affectedVersionStart] The version number at the start of an interval in which this vulnerability exists. A vulnerability can affect a package between version numbers that are disjoint sets of intervals (example: [1.0.0-1.1.0], [2.4.6-2.4.8] and [4.5.6-4.6.8]) each of which will be represented in its own Detail. If a specific affected version is provided by a vulnerability database, affected_version_start and affected_version_end will be the same in that Detail.
  /// [description] A vendor-specific description of this vulnerability.
  /// [fixedCpeUri] The distro recommended [CPE URI](https://cpe.mitre.org/specification/) to update to that contains a fix for this vulnerability. It is possible for this to be different from the affected_cpe_uri.
  /// [fixedPackage] The distro recommended package to update to that contains a fix for this vulnerability. It is possible for this to be different from the affected_package.
  /// [fixedVersion] The distro recommended version to update to that contains a fix for this vulnerability. Setting this to VersionKind.MAXIMUM means no such version is yet available.
  /// [isObsolete] Whether this detail is obsolete. Occurrences are expected not to point to obsolete details.
  /// [packageType] The type of package; whether native or non native (e.g., ruby gems, node.js packages, etc.).
  /// [severityName] The distro assigned severity of this vulnerability.
  /// [source] The source from which the information in this Detail was obtained.
  /// [sourceUpdateTime] The time this information was last changed at the source. This is an upstream timestamp from the underlying information source - e.g. Ubuntu security tracker.
  /// [vendor] The name of the vendor of the product.
  Detail({
    required this.affectedCpeUri,
    required this.affectedPackage,
    this.affectedVersionEnd,
    this.affectedVersionStart,
    this.description,
    this.fixedCpeUri,
    this.fixedPackage,
    this.fixedVersion,
    this.isObsolete,
    this.packageType,
    this.severityName,
    this.source,
    this.sourceUpdateTime,
    this.vendor,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['affectedCpeUri'] = affectedCpeUri;
    map['affectedPackage'] = affectedPackage;
    final affectedVersionEndValue = affectedVersionEnd;
    if (affectedVersionEndValue != null) {
      map['affectedVersionEnd'] = affectedVersionEndValue.toMap();
    }
    final affectedVersionStartValue = affectedVersionStart;
    if (affectedVersionStartValue != null) {
      map['affectedVersionStart'] = affectedVersionStartValue.toMap();
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final fixedCpeUriValue = fixedCpeUri;
    if (fixedCpeUriValue != null) {
      map['fixedCpeUri'] = fixedCpeUriValue;
    }
    final fixedPackageValue = fixedPackage;
    if (fixedPackageValue != null) {
      map['fixedPackage'] = fixedPackageValue;
    }
    final fixedVersionValue = fixedVersion;
    if (fixedVersionValue != null) {
      map['fixedVersion'] = fixedVersionValue.toMap();
    }
    final isObsoleteValue = isObsolete;
    if (isObsoleteValue != null) {
      map['isObsolete'] = isObsoleteValue;
    }
    final packageTypeValue = packageType;
    if (packageTypeValue != null) {
      map['packageType'] = packageTypeValue;
    }
    final severityNameValue = severityName;
    if (severityNameValue != null) {
      map['severityName'] = severityNameValue;
    }
    final sourceValue = source;
    if (sourceValue != null) {
      map['source'] = sourceValue;
    }
    final sourceUpdateTimeValue = sourceUpdateTime;
    if (sourceUpdateTimeValue != null) {
      map['sourceUpdateTime'] = sourceUpdateTimeValue;
    }
    final vendorValue = vendor;
    if (vendorValue != null) {
      map['vendor'] = vendorValue;
    }
    return map;
  }

  factory Detail.fromMap(Map<String, dynamic> map) {
    return Detail(
      affectedCpeUri: map['affectedCpeUri'] as String,
      affectedPackage: map['affectedPackage'] as String,
      affectedVersionEnd: map['affectedVersionEnd'] == null
          ? null
          : Version.fromMap(
              (map['affectedVersionEnd'] as Map).cast<String, dynamic>()),
      affectedVersionStart: map['affectedVersionStart'] == null
          ? null
          : Version.fromMap(
              (map['affectedVersionStart'] as Map).cast<String, dynamic>()),
      description:
          map['description'] == null ? null : map['description'] as String,
      fixedCpeUri:
          map['fixedCpeUri'] == null ? null : map['fixedCpeUri'] as String,
      fixedPackage:
          map['fixedPackage'] == null ? null : map['fixedPackage'] as String,
      fixedVersion: map['fixedVersion'] == null
          ? null
          : Version.fromMap(
              (map['fixedVersion'] as Map).cast<String, dynamic>()),
      isObsolete: map['isObsolete'] == null ? null : map['isObsolete'] as bool,
      packageType:
          map['packageType'] == null ? null : map['packageType'] as String,
      severityName:
          map['severityName'] == null ? null : map['severityName'] as String,
      source: map['source'] == null ? null : map['source'] as String,
      sourceUpdateTime: map['sourceUpdateTime'] == null
          ? null
          : map['sourceUpdateTime'] as String,
      vendor: map['vendor'] == null ? null : map['vendor'] as String,
    );
  }
}

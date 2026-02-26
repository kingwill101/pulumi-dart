// ignore_for_file: unused_element, unnecessary_cast

import 'version2.dart';
import 'vulnerability_location.dart';

/// Identifies all occurrences of this vulnerability in the package for a specific distro/location For example: glibc in cpe:/o:debian:debian_linux:8 for versions 2.1 - 2.2
class Detail2 {
  /// The cpe_uri in [cpe format] (https://cpe.mitre.org/specification/) in which the vulnerability manifests. Examples include distro or storage location for vulnerable jar. This field can be used as a filter in list requests.
  final String? cpeUri;

  /// A vendor-specific description of this note.
  final String? description;

  /// The fix for this specific package version.
  final VulnerabilityLocation? fixedLocation;

  /// Whether this Detail is obsolete. Occurrences are expected not to point to obsolete details.
  final bool? isObsolete;

  /// The max version of the package in which the vulnerability exists.
  final Version2? maxAffectedVersion;

  /// The min version of the package in which the vulnerability exists.
  final Version2? minAffectedVersion;

  /// The name of the package where the vulnerability was found. This field can be used as a filter in list requests.
  final String? package;

  /// The type of package; whether native or non native(ruby gems, node.js packages etc)
  final String? packageType;

  /// The severity (eg: distro assigned severity) for this vulnerability.
  final String? severityName;

  /// The source from which the information in this Detail was obtained.
  final String? source;

  /// The vendor of the product. e.g. "google"
  final String? vendor;

  Detail2({
    this.cpeUri,
    this.description,
    this.fixedLocation,
    this.isObsolete,
    this.maxAffectedVersion,
    this.minAffectedVersion,
    this.package,
    this.packageType,
    this.severityName,
    this.source,
    this.vendor,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cpeUriValue = cpeUri;
    if (cpeUriValue != null) {
      map['cpeUri'] = cpeUriValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final fixedLocationValue = fixedLocation;
    if (fixedLocationValue != null) {
      map['fixedLocation'] = fixedLocationValue.toMap();
    }
    final isObsoleteValue = isObsolete;
    if (isObsoleteValue != null) {
      map['isObsolete'] = isObsoleteValue;
    }
    final maxAffectedVersionValue = maxAffectedVersion;
    if (maxAffectedVersionValue != null) {
      map['maxAffectedVersion'] = maxAffectedVersionValue.toMap();
    }
    final minAffectedVersionValue = minAffectedVersion;
    if (minAffectedVersionValue != null) {
      map['minAffectedVersion'] = minAffectedVersionValue.toMap();
    }
    final packageValue = package;
    if (packageValue != null) {
      map['package'] = packageValue;
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
    final vendorValue = vendor;
    if (vendorValue != null) {
      map['vendor'] = vendorValue;
    }
    return map;
  }

  factory Detail2.fromMap(Map<String, dynamic> map) {
    return Detail2(
      cpeUri: map['cpeUri'] == null ? null : map['cpeUri'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      fixedLocation: map['fixedLocation'] == null
          ? null
          : VulnerabilityLocation.fromMap(
              (map['fixedLocation'] as Map).cast<String, dynamic>()),
      isObsolete: map['isObsolete'] == null ? null : map['isObsolete'] as bool,
      maxAffectedVersion: map['maxAffectedVersion'] == null
          ? null
          : Version2.fromMap(
              (map['maxAffectedVersion'] as Map).cast<String, dynamic>()),
      minAffectedVersion: map['minAffectedVersion'] == null
          ? null
          : Version2.fromMap(
              (map['minAffectedVersion'] as Map).cast<String, dynamic>()),
      package: map['package'] == null ? null : map['package'] as String,
      packageType:
          map['packageType'] == null ? null : map['packageType'] as String,
      severityName:
          map['severityName'] == null ? null : map['severityName'] as String,
      source: map['source'] == null ? null : map['source'] as String,
      vendor: map['vendor'] == null ? null : map['vendor'] as String,
    );
  }
}

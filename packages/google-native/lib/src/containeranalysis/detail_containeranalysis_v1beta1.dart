// ignore_for_file: unused_element, unnecessary_cast

import 'version_containeranalysis_v1beta1.dart';
import 'vulnerability_location_containeranalysis_v1beta1.dart';

/// Identifies all appearances of this vulnerability in the package for a specific distro/location. For example: glibc in cpe:/o:debian:debian_linux:8 for versions 2.1 - 2.2
class DetailContaineranalysisV1beta1 {
  /// The CPE URI in [cpe format](https://cpe.mitre.org/specification/) in which the vulnerability manifests. Examples include distro or storage location for vulnerable jar.
  final String cpeUri;
  /// A vendor-specific description of this note.
  final String? description;
  /// The fix for this specific package version.
  final VulnerabilityLocationContaineranalysisV1beta1? fixedLocation;
  /// Whether this detail is obsolete. Occurrences are expected not to point to obsolete details.
  final bool? isObsolete;
  /// The max version of the package in which the vulnerability exists.
  final VersionContaineranalysisV1beta1? maxAffectedVersion;
  /// The min version of the package in which the vulnerability exists.
  final VersionContaineranalysisV1beta1? minAffectedVersion;
  /// The name of the package where the vulnerability was found.
  final String package;
  /// The type of package; whether native or non native(ruby gems, node.js packages etc).
  final String? packageType;
  /// The severity (eg: distro assigned severity) for this vulnerability.
  final String? severityName;
  /// The source from which the information in this Detail was obtained.
  final String? source;
  /// The time this information was last changed at the source. This is an upstream timestamp from the underlying information source - e.g. Ubuntu security tracker.
  final String? sourceUpdateTime;
  /// The name of the vendor of the product.
  final String? vendor;

  /// Creates a new [DetailContaineranalysisV1beta1].
  /// [cpeUri] The CPE URI in [cpe format](https://cpe.mitre.org/specification/) in which the vulnerability manifests. Examples include distro or storage location for vulnerable jar.
  /// [description] A vendor-specific description of this note.
  /// [fixedLocation] The fix for this specific package version.
  /// [isObsolete] Whether this detail is obsolete. Occurrences are expected not to point to obsolete details.
  /// [maxAffectedVersion] The max version of the package in which the vulnerability exists.
  /// [minAffectedVersion] The min version of the package in which the vulnerability exists.
  /// [package] The name of the package where the vulnerability was found.
  /// [packageType] The type of package; whether native or non native(ruby gems, node.js packages etc).
  /// [severityName] The severity (eg: distro assigned severity) for this vulnerability.
  /// [source] The source from which the information in this Detail was obtained.
  /// [sourceUpdateTime] The time this information was last changed at the source. This is an upstream timestamp from the underlying information source - e.g. Ubuntu security tracker.
  /// [vendor] The name of the vendor of the product.
  DetailContaineranalysisV1beta1({
    required this.cpeUri,
    this.description,
    this.fixedLocation,
    this.isObsolete,
    this.maxAffectedVersion,
    this.minAffectedVersion,
    required this.package,
    this.packageType,
    this.severityName,
    this.source,
    this.sourceUpdateTime,
    this.vendor,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpeUri': cpeUri,
      'description': ?description,
      'fixedLocation': ?fixedLocation == null ? null : fixedLocation!.toMap(),
      'isObsolete': ?isObsolete,
      'maxAffectedVersion': ?maxAffectedVersion == null ? null : maxAffectedVersion!.toMap(),
      'minAffectedVersion': ?minAffectedVersion == null ? null : minAffectedVersion!.toMap(),
      'package': package,
      'packageType': ?packageType,
      'severityName': ?severityName,
      'source': ?source,
      'sourceUpdateTime': ?sourceUpdateTime,
      'vendor': ?vendor,
    };
  }

  factory DetailContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return DetailContaineranalysisV1beta1(
      cpeUri: map['cpeUri'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      fixedLocation: map['fixedLocation'] == null ? null : VulnerabilityLocationContaineranalysisV1beta1.fromMap((map['fixedLocation'] as Map).cast<String, dynamic>()),
      isObsolete: map['isObsolete'] == null ? null : map['isObsolete'] as bool,
      maxAffectedVersion: map['maxAffectedVersion'] == null ? null : VersionContaineranalysisV1beta1.fromMap((map['maxAffectedVersion'] as Map).cast<String, dynamic>()),
      minAffectedVersion: map['minAffectedVersion'] == null ? null : VersionContaineranalysisV1beta1.fromMap((map['minAffectedVersion'] as Map).cast<String, dynamic>()),
      package: map['package'] as String,
      packageType: map['packageType'] == null ? null : map['packageType'] as String,
      severityName: map['severityName'] == null ? null : map['severityName'] as String,
      source: map['source'] == null ? null : map['source'] as String,
      sourceUpdateTime: map['sourceUpdateTime'] == null ? null : map['sourceUpdateTime'] as String,
      vendor: map['vendor'] == null ? null : map['vendor'] as String,
    );
  }
}


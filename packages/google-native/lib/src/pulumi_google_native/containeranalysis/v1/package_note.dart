// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'digest.dart';
import 'distribution.dart';
import 'license.dart';
import 'package_note_architecture.dart';
import 'version.dart';

/// PackageNote represents a particular package version.
class PackageNote {
  /// The CPU architecture for which packages in this distribution channel were built. Architecture will be blank for language packages.
  final PackageNoteArchitecture? architecture;

  /// The cpe_uri in [CPE format](https://cpe.mitre.org/specification/) denoting the package manager version distributing a package. The cpe_uri will be blank for language packages.
  final String? cpeUri;

  /// The description of this package.
  final String? description;

  /// Hash value, typically a file digest, that allows unique identification a specific package.
  final List<Digest>? digest;

  /// Deprecated. The various channels by which a package is distributed.
  final List<Distribution>? distribution;

  /// Licenses that have been declared by the authors of the package.
  final License? license;

  /// A freeform text denoting the maintainer of this package.
  final String? maintainer;

  /// Immutable. The name of the package.
  final String name;

  /// The type of package; whether native or non native (e.g., ruby gems, node.js packages, etc.).
  final String? packageType;

  /// The homepage for this package.
  final String? url;

  /// The version of the package.
  final Version? version;

  PackageNote({
    this.architecture,
    this.cpeUri,
    this.description,
    this.digest,
    this.distribution,
    this.license,
    this.maintainer,
    required this.name,
    this.packageType,
    this.url,
    this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final architectureValue = architecture;
    if (architectureValue != null) {
      map['architecture'] = architectureValue.value;
    }
    final cpeUriValue = cpeUri;
    if (cpeUriValue != null) {
      map['cpeUri'] = cpeUriValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final digestValue = digest;
    if (digestValue != null) {
      map['digest'] = Input.encodeList<Digest, Map<String, dynamic>>(
          digestValue, (value) => value.toMap());
    }
    final distributionValue = distribution;
    if (distributionValue != null) {
      map['distribution'] =
          Input.encodeList<Distribution, Map<String, dynamic>>(
              distributionValue, (value) => value.toMap());
    }
    final licenseValue = license;
    if (licenseValue != null) {
      map['license'] = licenseValue.toMap();
    }
    final maintainerValue = maintainer;
    if (maintainerValue != null) {
      map['maintainer'] = maintainerValue;
    }
    map['name'] = name;
    final packageTypeValue = packageType;
    if (packageTypeValue != null) {
      map['packageType'] = packageTypeValue;
    }
    final urlValue = url;
    if (urlValue != null) {
      map['url'] = urlValue;
    }
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue.toMap();
    }
    return map;
  }

  factory PackageNote.fromMap(Map<String, dynamic> map) {
    return PackageNote(
      architecture: map['architecture'] == null
          ? null
          : PackageNoteArchitecture.fromValue(map['architecture'] as String),
      cpeUri: map['cpeUri'] == null ? null : map['cpeUri'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      digest: map['digest'] == null
          ? null
          : Input.decodeList<Digest>(
              map['digest'],
              (value) =>
                  Digest.fromMap((value as Map).cast<String, dynamic>())),
      distribution: map['distribution'] == null
          ? null
          : Input.decodeList<Distribution>(
              map['distribution'],
              (value) =>
                  Distribution.fromMap((value as Map).cast<String, dynamic>())),
      license: map['license'] == null
          ? null
          : License.fromMap((map['license'] as Map).cast<String, dynamic>()),
      maintainer:
          map['maintainer'] == null ? null : map['maintainer'] as String,
      name: map['name'] as String,
      packageType:
          map['packageType'] == null ? null : map['packageType'] as String,
      url: map['url'] == null ? null : map['url'] as String,
      version: map['version'] == null
          ? null
          : Version.fromMap((map['version'] as Map).cast<String, dynamic>()),
    );
  }
}

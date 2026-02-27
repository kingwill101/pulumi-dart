// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'digest2.dart';
import 'distribution2.dart';
import 'license2.dart';
import 'package_architecture.dart';
import 'version2.dart';

/// This represents a particular package that is distributed over various channels. e.g. glibc (aka libc6) is distributed by many, at various versions.
class Package {
  /// The CPU architecture for which packages in this distribution channel were built. Architecture will be blank for language packages.
  final PackageArchitecture? architecture;

  /// The cpe_uri in [CPE format](https://cpe.mitre.org/specification/) denoting the package manager version distributing a package. The cpe_uri will be blank for language packages.
  final String? cpeUri;

  /// The description of this package.
  final String? description;

  /// Hash value, typically a file digest, that allows unique identification a specific package.
  final List<Digest2>? digest;

  /// The various channels by which a package is distributed.
  final List<Distribution2>? distribution;

  /// Licenses that have been declared by the authors of the package.
  final License2? license;

  /// A freeform text denoting the maintainer of this package.
  final String? maintainer;

  /// The name of the package.
  final String? name;

  /// The type of package; whether native or non native (e.g., ruby gems, node.js packages, etc.).
  final String? packageType;

  /// The homepage for this package.
  final String? url;

  /// The version of the package.
  final Version2? version;

  Package({
    this.architecture,
    this.cpeUri,
    this.description,
    this.digest,
    this.distribution,
    this.license,
    this.maintainer,
    this.name,
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
      map['digest'] = Input.encodeList<Digest2, Map<String, dynamic>>(
          digestValue, (value) => value.toMap());
    }
    final distributionValue = distribution;
    if (distributionValue != null) {
      map['distribution'] =
          Input.encodeList<Distribution2, Map<String, dynamic>>(
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
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
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

  factory Package.fromMap(Map<String, dynamic> map) {
    return Package(
      architecture: map['architecture'] == null
          ? null
          : PackageArchitecture.fromValue(map['architecture'] as String),
      cpeUri: map['cpeUri'] == null ? null : map['cpeUri'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      digest: map['digest'] == null
          ? null
          : Input.decodeList<Digest2>(
              map['digest'],
              (value) =>
                  Digest2.fromMap((value as Map).cast<String, dynamic>())),
      distribution: map['distribution'] == null
          ? null
          : Input.decodeList<Distribution2>(
              map['distribution'],
              (value) => Distribution2.fromMap(
                  (value as Map).cast<String, dynamic>())),
      license: map['license'] == null
          ? null
          : License2.fromMap((map['license'] as Map).cast<String, dynamic>()),
      maintainer:
          map['maintainer'] == null ? null : map['maintainer'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      packageType:
          map['packageType'] == null ? null : map['packageType'] as String,
      url: map['url'] == null ? null : map['url'] as String,
      version: map['version'] == null
          ? null
          : Version2.fromMap((map['version'] as Map).cast<String, dynamic>()),
    );
  }
}

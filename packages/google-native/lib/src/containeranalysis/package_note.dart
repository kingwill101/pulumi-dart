// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
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

  /// Creates a new [PackageNote].
  /// [architecture] The CPU architecture for which packages in this distribution channel were built. Architecture will be blank for language packages.
  /// [cpeUri] The cpe_uri in [CPE format](https://cpe.mitre.org/specification/) denoting the package manager version distributing a package. The cpe_uri will be blank for language packages.
  /// [description] The description of this package.
  /// [digest] Hash value, typically a file digest, that allows unique identification a specific package.
  /// [distribution] Deprecated. The various channels by which a package is distributed.
  /// [license] Licenses that have been declared by the authors of the package.
  /// [maintainer] A freeform text denoting the maintainer of this package.
  /// [name] Immutable. The name of the package.
  /// [packageType] The type of package; whether native or non native (e.g., ruby gems, node.js packages, etc.).
  /// [url] The homepage for this package.
  /// [version] The version of the package.
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
    return <String, dynamic>{
      'architecture': ?architecture == null ? null : architecture!.value,
      'cpeUri': ?cpeUri,
      'description': ?description,
      'digest': ?digest == null ? null : pulumi.Input.encodeList<Digest, Map<String, dynamic>>(digest!, (value) => value.toMap()),
      'distribution': ?distribution == null ? null : pulumi.Input.encodeList<Distribution, Map<String, dynamic>>(distribution!, (value) => value.toMap()),
      'license': ?license == null ? null : license!.toMap(),
      'maintainer': ?maintainer,
      'name': name,
      'packageType': ?packageType,
      'url': ?url,
      'version': ?version == null ? null : version!.toMap(),
    };
  }

  factory PackageNote.fromMap(Map<String, dynamic> map) {
    return PackageNote(
      architecture: map['architecture'] == null ? null : PackageNoteArchitecture.fromValue(map['architecture'] as String),
      cpeUri: map['cpeUri'] == null ? null : map['cpeUri'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      digest: map['digest'] == null ? null : pulumi.Input.decodeList<Digest>(map['digest'], (value) => Digest.fromMap((value as Map).cast<String, dynamic>())),
      distribution: map['distribution'] == null ? null : pulumi.Input.decodeList<Distribution>(map['distribution'], (value) => Distribution.fromMap((value as Map).cast<String, dynamic>())),
      license: map['license'] == null ? null : License.fromMap((map['license'] as Map).cast<String, dynamic>()),
      maintainer: map['maintainer'] == null ? null : map['maintainer'] as String,
      name: map['name'] as String,
      packageType: map['packageType'] == null ? null : map['packageType'] as String,
      url: map['url'] == null ? null : map['url'] as String,
      version: map['version'] == null ? null : Version.fromMap((map['version'] as Map).cast<String, dynamic>()),
    );
  }
}


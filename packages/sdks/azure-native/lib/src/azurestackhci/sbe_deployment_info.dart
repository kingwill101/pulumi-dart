// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Solution builder extension (SBE) package and manifest information for the solution builder extension staged for AzureStackHCI cluster deployment.
class SbeDeploymentInfo {
  /// SBE family name.
  final pulumi.Input<String>? family;
  /// SBE manifest publisher.
  final pulumi.Input<String>? publisher;
  /// SBE Manifest Creation Date.
  final pulumi.Input<String>? sbeManifestCreationDate;
  /// SBE Manifest Source.
  final pulumi.Input<String>? sbeManifestSource;
  /// SBE package version.
  final pulumi.Input<String>? version;

  /// Creates a new [SbeDeploymentInfo].
  /// [family] SBE family name.
  /// [publisher] SBE manifest publisher.
  /// [sbeManifestCreationDate] SBE Manifest Creation Date.
  /// [sbeManifestSource] SBE Manifest Source.
  /// [version] SBE package version.
  SbeDeploymentInfo({
    this.family,
    this.publisher,
    this.sbeManifestCreationDate,
    this.sbeManifestSource,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'family': ?family,
      'publisher': ?publisher,
      'sbeManifestCreationDate': ?sbeManifestCreationDate,
      'sbeManifestSource': ?sbeManifestSource,
      'version': ?version,
    };
  }

  factory SbeDeploymentInfo.fromMap(Map<String, dynamic> map) {
    return SbeDeploymentInfo(
      family: (() { final guardedValue = map['family']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publisher: (() { final guardedValue = map['publisher']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sbeManifestCreationDate: (() { final guardedValue = map['sbeManifestCreationDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sbeManifestSource: (() { final guardedValue = map['sbeManifestSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


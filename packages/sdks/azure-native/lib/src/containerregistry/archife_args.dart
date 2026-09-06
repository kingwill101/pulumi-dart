// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'archive_package_source_properties.dart';

/// {@template pulumi_containerregistry_archife_args_doc}
/// The set of arguments for Archife.
/// {@endtemplate}
/// {@macro pulumi_containerregistry_archife_args_doc}
class ArchifeArgs {
  /// The name of the archive resource.
  final pulumi.Input<String?>? archiveName;
  /// The package source of the archive.
  final pulumi.Input<ArchivePackageSourceProperties?>? packageSource;
  /// The type of the package resource.
  final pulumi.Input<String> packageType;
  /// The published version of the archive.
  final pulumi.Input<String?>? publishedVersion;
  /// The name of the container registry.
  final pulumi.Input<String> registryName;
  final pulumi.Input<String?>? repositoryEndpointPrefix;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ArchifeArgs].
  /// [archiveName] The name of the archive resource.
  /// [packageSource] The package source of the archive.
  /// [packageType] The type of the package resource.
  /// [publishedVersion] The published version of the archive.
  /// [registryName] The name of the container registry.
  /// [repositoryEndpointPrefix] Optional.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const ArchifeArgs({
    this.archiveName,
    this.packageSource,
    required this.packageType,
    this.publishedVersion,
    required this.registryName,
    this.repositoryEndpointPrefix,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'archiveName': ?archiveName,
      'packageSource': ?pulumi.Input.mapOptionalInputValue<ArchivePackageSourceProperties, Map<String, dynamic>>(packageSource, (value) => value.toMap()),
      'packageType': packageType,
      'publishedVersion': ?publishedVersion,
      'registryName': registryName,
      'repositoryEndpointPrefix': ?repositoryEndpointPrefix,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ArchifeArgs.fromMap(Map<String, dynamic> map) {
    return ArchifeArgs(
      archiveName: (() { final guardedValue = map['archiveName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      packageSource: (() { final guardedValue = map['packageSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ArchivePackageSourceProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      packageType: pulumi.Input.fromValue(map['packageType'] as String),
      publishedVersion: (() { final guardedValue = map['publishedVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      registryName: pulumi.Input.fromValue(map['registryName'] as String),
      repositoryEndpointPrefix: (() { final guardedValue = map['repositoryEndpointPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

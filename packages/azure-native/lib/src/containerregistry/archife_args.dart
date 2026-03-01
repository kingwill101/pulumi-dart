// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'archive_package_source_properties.dart';

/// {@template pulumi_containerregistry_archife_args_doc}
/// The set of arguments for Archife.
/// {@endtemplate}
/// {@macro pulumi_containerregistry_archife_args_doc}
class ArchifeArgs {
  /// The name of the archive resource.
  final pulumi.Input<String>? archiveName;
  /// The package source of the archive.
  final pulumi.Input<ArchivePackageSourceProperties>? packageSource;
  /// The type of the package resource.
  final pulumi.Input<String> packageType;
  /// The published version of the archive.
  final pulumi.Input<String>? publishedVersion;
  /// The name of the container registry.
  final pulumi.Input<String> registryName;
  final pulumi.Input<String>? repositoryEndpointPrefix;
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
  ArchifeArgs({
    String? archiveName,
    ArchivePackageSourceProperties? packageSource,
    required String packageType,
    String? publishedVersion,
    required String registryName,
    String? repositoryEndpointPrefix,
    required String resourceGroupName,
  }) :
      archiveName = pulumi.Input.asOptionalInput<String>(archiveName),
      packageSource = pulumi.Input.asOptionalInput<ArchivePackageSourceProperties>(packageSource),
      packageType = pulumi.Input.asInput<String>(packageType),
      publishedVersion = pulumi.Input.asOptionalInput<String>(publishedVersion),
      registryName = pulumi.Input.asInput<String>(registryName),
      repositoryEndpointPrefix = pulumi.Input.asOptionalInput<String>(repositoryEndpointPrefix),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      archiveName: map['archiveName'] == null ? null : map['archiveName'] as String,
      packageSource: map['packageSource'] == null ? null : ArchivePackageSourceProperties.fromMap((map['packageSource'] as Map).cast<String, dynamic>()),
      packageType: map['packageType'] as String,
      publishedVersion: map['publishedVersion'] == null ? null : map['publishedVersion'] as String,
      registryName: map['registryName'] as String,
      repositoryEndpointPrefix: map['repositoryEndpointPrefix'] == null ? null : map['repositoryEndpointPrefix'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}


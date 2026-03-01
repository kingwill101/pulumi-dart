// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerregistry_archive_version_args_doc}
/// The set of arguments for ArchiveVersion.
/// {@endtemplate}
/// {@macro pulumi_containerregistry_archive_version_args_doc}
class ArchiveVersionArgs {
  /// The name of the archive resource.
  final pulumi.Input<String> archiveName;
  /// The name of the archive version resource.
  final pulumi.Input<String>? archiveVersionName;
  /// The type of the package resource.
  final pulumi.Input<String> packageType;
  /// The name of the container registry.
  final pulumi.Input<String> registryName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ArchiveVersionArgs].
  /// [archiveName] The name of the archive resource.
  /// [archiveVersionName] The name of the archive version resource.
  /// [packageType] The type of the package resource.
  /// [registryName] The name of the container registry.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  ArchiveVersionArgs({
    required String archiveName,
    String? archiveVersionName,
    required String packageType,
    required String registryName,
    required String resourceGroupName,
  }) :
      archiveName = pulumi.Input.asInput<String>(archiveName),
      archiveVersionName = pulumi.Input.asOptionalInput<String>(archiveVersionName),
      packageType = pulumi.Input.asInput<String>(packageType),
      registryName = pulumi.Input.asInput<String>(registryName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'archiveName': archiveName,
      'archiveVersionName': ?archiveVersionName,
      'packageType': packageType,
      'registryName': registryName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ArchiveVersionArgs.fromMap(Map<String, dynamic> map) {
    return ArchiveVersionArgs(
      archiveName: map['archiveName'] as String,
      archiveVersionName: map['archiveVersionName'] == null ? null : map['archiveVersionName'] as String,
      packageType: map['packageType'] as String,
      registryName: map['registryName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}


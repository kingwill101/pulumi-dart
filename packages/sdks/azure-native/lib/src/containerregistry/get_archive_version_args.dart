// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerregistry_get_archive_version_args_doc}
/// Arguments for getArchiveVersion.
/// {@endtemplate}
/// {@macro pulumi_containerregistry_get_archive_version_args_doc}
class GetArchiveVersionArgs {
  /// The name of the archive resource.
  final pulumi.Input<String> archiveName;
  /// The name of the archive version resource.
  final pulumi.Input<String> archiveVersionName;
  /// The type of the package resource.
  final pulumi.Input<String> packageType;
  /// The name of the container registry.
  final pulumi.Input<String> registryName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetArchiveVersionArgs].
  /// [archiveName] The name of the archive resource.
  /// [archiveVersionName] The name of the archive version resource.
  /// [packageType] The type of the package resource.
  /// [registryName] The name of the container registry.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetArchiveVersionArgs({
    required this.archiveName,
    required this.archiveVersionName,
    required this.packageType,
    required this.registryName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'archiveName': archiveName,
      'archiveVersionName': archiveVersionName,
      'packageType': packageType,
      'registryName': registryName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetArchiveVersionArgs.fromMap(Map<String, dynamic> map) {
    return GetArchiveVersionArgs(
      archiveName: pulumi.Input.fromValue(map['archiveName'] as String),
      archiveVersionName: pulumi.Input.fromValue(map['archiveVersionName'] as String),
      packageType: pulumi.Input.fromValue(map['packageType'] as String),
      registryName: pulumi.Input.fromValue(map['registryName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

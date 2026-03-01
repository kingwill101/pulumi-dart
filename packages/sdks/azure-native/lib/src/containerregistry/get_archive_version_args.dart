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
  GetArchiveVersionArgs({
    required pulumi.Output<String> archiveName,
    required pulumi.Output<String> archiveVersionName,
    required pulumi.Output<String> packageType,
    required pulumi.Output<String> registryName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      archiveName = pulumi.Input.asInput<String>(archiveName),
      archiveVersionName = pulumi.Input.asInput<String>(archiveVersionName),
      packageType = pulumi.Input.asInput<String>(packageType),
      registryName = pulumi.Input.asInput<String>(registryName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      archiveName: pulumi.Output.create<String>(map['archiveName'] as String),
      archiveVersionName: pulumi.Output.create<String>(map['archiveVersionName'] as String),
      packageType: pulumi.Output.create<String>(map['packageType'] as String),
      registryName: pulumi.Output.create<String>(map['registryName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}


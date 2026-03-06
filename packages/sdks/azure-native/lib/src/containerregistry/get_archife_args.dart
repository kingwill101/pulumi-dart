// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerregistry_get_archife_args_doc}
/// Arguments for getArchife.
/// {@endtemplate}
/// {@macro pulumi_containerregistry_get_archife_args_doc}
class GetArchifeArgs {
  /// The name of the archive resource.
  final pulumi.Input<String> archiveName;
  /// The type of the package resource.
  final pulumi.Input<String> packageType;
  /// The name of the container registry.
  final pulumi.Input<String> registryName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetArchifeArgs].
  /// [archiveName] The name of the archive resource.
  /// [packageType] The type of the package resource.
  /// [registryName] The name of the container registry.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetArchifeArgs({
    required this.archiveName,
    required this.packageType,
    required this.registryName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'archiveName': archiveName,
      'packageType': packageType,
      'registryName': registryName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetArchifeArgs.fromMap(Map<String, dynamic> map) {
    return GetArchifeArgs(
      archiveName: pulumi.Input.fromValue(map['archiveName'] as String),
      packageType: pulumi.Input.fromValue(map['packageType'] as String),
      registryName: pulumi.Input.fromValue(map['registryName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}


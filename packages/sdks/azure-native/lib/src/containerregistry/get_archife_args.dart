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
  GetArchifeArgs({
    required pulumi.Output<String> archiveName,
    required pulumi.Output<String> packageType,
    required pulumi.Output<String> registryName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      archiveName = pulumi.Input.asInput<String>(archiveName),
      packageType = pulumi.Input.asInput<String>(packageType),
      registryName = pulumi.Input.asInput<String>(registryName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      archiveName: pulumi.Output.create<String>(map['archiveName'] as String),
      packageType: pulumi.Output.create<String>(map['packageType'] as String),
      registryName: pulumi.Output.create<String>(map['registryName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}


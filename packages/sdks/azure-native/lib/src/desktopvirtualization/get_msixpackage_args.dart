// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_desktopvirtualization_get_msixpackage_args_doc}
/// Arguments for getMSIXPackage.
/// {@endtemplate}
/// {@macro pulumi_desktopvirtualization_get_msixpackage_args_doc}
class GetMSIXPackageArgs {
  /// The name of the host pool within the specified resource group
  final pulumi.Input<String> hostPoolName;
  /// The version specific package full name of the MSIX package within specified hostpool
  final pulumi.Input<String> msixPackageFullName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetMSIXPackageArgs].
  /// [hostPoolName] The name of the host pool within the specified resource group
  /// [msixPackageFullName] The version specific package full name of the MSIX package within specified hostpool
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetMSIXPackageArgs({
    required this.hostPoolName,
    required this.msixPackageFullName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostPoolName': hostPoolName,
      'msixPackageFullName': msixPackageFullName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetMSIXPackageArgs.fromMap(Map<String, dynamic> map) {
    return GetMSIXPackageArgs(
      hostPoolName: pulumi.Input.fromValue(map['hostPoolName'] as String),
      msixPackageFullName: pulumi.Input.fromValue(map['msixPackageFullName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

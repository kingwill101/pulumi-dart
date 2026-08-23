// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_discovery_get_supercomputer_args_doc}
/// Arguments for getSupercomputer.
/// {@endtemplate}
/// {@macro pulumi_discovery_get_supercomputer_args_doc}
class GetSupercomputerArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Supercomputer
  final pulumi.Input<String> supercomputerName;

  /// Creates a new [GetSupercomputerArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [supercomputerName] The name of the Supercomputer
  const GetSupercomputerArgs({
    required this.resourceGroupName,
    required this.supercomputerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'supercomputerName': supercomputerName,
    };
  }

  factory GetSupercomputerArgs.fromMap(Map<String, dynamic> map) {
    return GetSupercomputerArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      supercomputerName: pulumi.Input.fromValue(map['supercomputerName'] as String),
    );
  }
}

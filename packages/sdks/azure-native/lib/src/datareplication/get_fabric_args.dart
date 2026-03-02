// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datareplication_get_fabric_args_doc}
/// Arguments for getFabric.
/// {@endtemplate}
/// {@macro pulumi_datareplication_get_fabric_args_doc}
class GetFabricArgs {
  /// The fabric name.
  final pulumi.Input<String> fabricName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetFabricArgs].
  /// [fabricName] The fabric name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetFabricArgs({
    required this.fabricName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fabricName': fabricName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetFabricArgs.fromMap(Map<String, dynamic> map) {
    return GetFabricArgs(
      fabricName: (map['fabricName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}


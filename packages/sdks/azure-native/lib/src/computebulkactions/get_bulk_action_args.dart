// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_computebulkactions_get_bulk_action_args_doc}
/// Arguments for getBulkAction.
/// {@endtemplate}
/// {@macro pulumi_computebulkactions_get_bulk_action_args_doc}
class GetBulkActionArgs {
  /// The location name.
  final pulumi.Input<String> location;
  /// The name of the LaunchBulkInstancesOperation.
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetBulkActionArgs].
  /// [location] The location name.
  /// [name] The name of the LaunchBulkInstancesOperation.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetBulkActionArgs({
    required this.location,
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetBulkActionArgs.fromMap(Map<String, dynamic> map) {
    return GetBulkActionArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

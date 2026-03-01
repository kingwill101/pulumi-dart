// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_extendedlocation_get_custom_location_args_doc}
/// Arguments for getCustomLocation.
/// {@endtemplate}
/// {@macro pulumi_extendedlocation_get_custom_location_args_doc}
class GetCustomLocationArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Custom Locations name.
  final pulumi.Input<String> resourceName;

  /// Creates a new [GetCustomLocationArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] Custom Locations name.
  GetCustomLocationArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> resourceName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory GetCustomLocationArgs.fromMap(Map<String, dynamic> map) {
    return GetCustomLocationArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceName: pulumi.Output.create<String>(map['resourceName'] as String),
    );
  }
}


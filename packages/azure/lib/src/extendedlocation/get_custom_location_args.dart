// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_extendedlocation_get_custom_location_get_custom_location_args_doc}
/// Arguments for getCustomLocation.
/// {@endtemplate}
/// {@macro pulumi_extendedlocation_get_custom_location_get_custom_location_args_doc}
class GetCustomLocationArgs {
  /// The name of the Custom Location.
  final pulumi.Input<String> name;
  /// The name of the Resource Group where the Custom Location exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetCustomLocationArgs].
  /// [name] The name of the Custom Location.
  /// [resourceGroupName] The name of the Resource Group where the Custom Location exists.
  GetCustomLocationArgs({
    required String name,
    required String resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetCustomLocationArgs.fromMap(Map<String, dynamic> map) {
    return GetCustomLocationArgs(
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_availability_set_args_doc}
/// Arguments for getAvailabilitySet.
/// {@endtemplate}
/// {@macro pulumi_compute_get_availability_set_args_doc}
class GetAvailabilitySetArgs {
  /// The name of the availability set.
  final pulumi.Input<String> availabilitySetName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAvailabilitySetArgs].
  /// [availabilitySetName] The name of the availability set.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetAvailabilitySetArgs({
    required this.availabilitySetName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilitySetName': availabilitySetName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAvailabilitySetArgs.fromMap(Map<String, dynamic> map) {
    return GetAvailabilitySetArgs(
      availabilitySetName: pulumi.Input.fromValue(map['availabilitySetName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

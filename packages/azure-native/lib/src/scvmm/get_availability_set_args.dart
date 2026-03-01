// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_scvmm_get_availability_set_args_doc}
/// Arguments for getAvailabilitySet.
/// {@endtemplate}
/// {@macro pulumi_scvmm_get_availability_set_args_doc}
class GetAvailabilitySetArgs {
  /// Name of the AvailabilitySet.
  final pulumi.Input<String> availabilitySetName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAvailabilitySetArgs].
  /// [availabilitySetName] Name of the AvailabilitySet.
  /// [resourceGroupName] The name of the resource group.
  GetAvailabilitySetArgs({
    required String availabilitySetName,
    required String resourceGroupName,
  }) :
      availabilitySetName = pulumi.Input.asInput<String>(availabilitySetName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilitySetName': availabilitySetName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAvailabilitySetArgs.fromMap(Map<String, dynamic> map) {
    return GetAvailabilitySetArgs(
      availabilitySetName: map['availabilitySetName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}


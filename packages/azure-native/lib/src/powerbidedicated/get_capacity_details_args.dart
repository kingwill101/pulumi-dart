// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_powerbidedicated_get_capacity_details_args_doc}
/// Arguments for getCapacityDetails.
/// {@endtemplate}
/// {@macro pulumi_powerbidedicated_get_capacity_details_args_doc}
class GetCapacityDetailsArgs {
  /// The name of the dedicated capacity. It must be a minimum of 3 characters, and a maximum of 63.
  final pulumi.Input<String> dedicatedCapacityName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetCapacityDetailsArgs].
  /// [dedicatedCapacityName] The name of the dedicated capacity. It must be a minimum of 3 characters, and a maximum of 63.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetCapacityDetailsArgs({
    required String dedicatedCapacityName,
    required String resourceGroupName,
  }) :
      dedicatedCapacityName = pulumi.Input.asInput<String>(dedicatedCapacityName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dedicatedCapacityName': dedicatedCapacityName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetCapacityDetailsArgs.fromMap(Map<String, dynamic> map) {
    return GetCapacityDetailsArgs(
      dedicatedCapacityName: map['dedicatedCapacityName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}


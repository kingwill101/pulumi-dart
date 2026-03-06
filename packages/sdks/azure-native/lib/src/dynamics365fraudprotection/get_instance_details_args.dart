// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dynamics365fraudprotection_get_instance_details_args_doc}
/// Arguments for getInstanceDetails.
/// {@endtemplate}
/// {@macro pulumi_dynamics365fraudprotection_get_instance_details_args_doc}
class GetInstanceDetailsArgs {
  /// The name of the instance. It must be a minimum of 3 characters, and a maximum of 63.
  final pulumi.Input<String> instanceName;
  /// The name of the Azure Resource group of which a given DFP instance is part. This name must be at least 1 character in length, and no more than 90.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetInstanceDetailsArgs].
  /// [instanceName] The name of the instance. It must be a minimum of 3 characters, and a maximum of 63.
  /// [resourceGroupName] The name of the Azure Resource group of which a given DFP instance is part. This name must be at least 1 character in length, and no more than 90.
  const GetInstanceDetailsArgs({
    required this.instanceName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceName': instanceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetInstanceDetailsArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceDetailsArgs(
      instanceName: pulumi.Input.fromValue(map['instanceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}


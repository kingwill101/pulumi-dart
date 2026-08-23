// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_delegatednetwork_get_delegated_subnet_service_details_args_doc}
/// Arguments for getDelegatedSubnetServiceDetails.
/// {@endtemplate}
/// {@macro pulumi_delegatednetwork_get_delegated_subnet_service_details_args_doc}
class GetDelegatedSubnetServiceDetailsArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the resource. It must be a minimum of 3 characters, and a maximum of 63.
  final pulumi.Input<String> resourceName;

  /// Creates a new [GetDelegatedSubnetServiceDetailsArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the resource. It must be a minimum of 3 characters, and a maximum of 63.
  const GetDelegatedSubnetServiceDetailsArgs({
    required this.resourceGroupName,
    required this.resourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory GetDelegatedSubnetServiceDetailsArgs.fromMap(Map<String, dynamic> map) {
    return GetDelegatedSubnetServiceDetailsArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_cloud_trail_trail_args_doc}
/// Arguments for getCloudTrailTrail.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_cloud_trail_trail_args_doc}
class GetCloudTrailTrailArgs {
  /// Name of CloudTrailTrail
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetCloudTrailTrailArgs].
  /// [name] Name of CloudTrailTrail
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetCloudTrailTrailArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetCloudTrailTrailArgs.fromMap(Map<String, dynamic> map) {
    return GetCloudTrailTrailArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}


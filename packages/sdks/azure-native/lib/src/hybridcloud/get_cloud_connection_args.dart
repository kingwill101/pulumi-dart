// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hybridcloud_get_cloud_connection_args_doc}
/// Arguments for getCloudConnection.
/// {@endtemplate}
/// {@macro pulumi_hybridcloud_get_cloud_connection_args_doc}
class GetCloudConnectionArgs {
  /// The name of the cloud connection resource
  final pulumi.Input<String> cloudConnectionName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetCloudConnectionArgs].
  /// [cloudConnectionName] The name of the cloud connection resource
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetCloudConnectionArgs({
    required pulumi.Output<String> cloudConnectionName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      cloudConnectionName = pulumi.Input.asInput<String>(cloudConnectionName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudConnectionName': cloudConnectionName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetCloudConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetCloudConnectionArgs(
      cloudConnectionName: pulumi.Output.create<String>(map['cloudConnectionName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}


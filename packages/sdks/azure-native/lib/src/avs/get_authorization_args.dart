// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_avs_get_authorization_args_doc}
/// Arguments for getAuthorization.
/// {@endtemplate}
/// {@macro pulumi_avs_get_authorization_args_doc}
class GetAuthorizationArgs {
  /// Name of the ExpressRoute Circuit Authorization
  final pulumi.Input<String> authorizationName;
  /// Name of the private cloud
  final pulumi.Input<String> privateCloudName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAuthorizationArgs].
  /// [authorizationName] Name of the ExpressRoute Circuit Authorization
  /// [privateCloudName] Name of the private cloud
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetAuthorizationArgs({
    required pulumi.Output<String> authorizationName,
    required pulumi.Output<String> privateCloudName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      authorizationName = pulumi.Input.asInput<String>(authorizationName),
      privateCloudName = pulumi.Input.asInput<String>(privateCloudName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationName': authorizationName,
      'privateCloudName': privateCloudName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAuthorizationArgs.fromMap(Map<String, dynamic> map) {
    return GetAuthorizationArgs(
      authorizationName: pulumi.Output.create<String>(map['authorizationName'] as String),
      privateCloudName: pulumi.Output.create<String>(map['privateCloudName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}


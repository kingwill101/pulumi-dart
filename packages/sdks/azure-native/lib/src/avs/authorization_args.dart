// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_avs_authorization_args_doc}
/// The set of arguments for Authorization.
/// {@endtemplate}
/// {@macro pulumi_avs_authorization_args_doc}
class AuthorizationArgs {
  /// Name of the ExpressRoute Circuit Authorization
  final pulumi.Input<String?>? authorizationName;
  /// The ID of the ExpressRoute Circuit
  final pulumi.Input<String?>? expressRouteId;
  /// Name of the private cloud
  final pulumi.Input<String> privateCloudName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [AuthorizationArgs].
  /// [authorizationName] Name of the ExpressRoute Circuit Authorization
  /// [expressRouteId] The ID of the ExpressRoute Circuit
  /// [privateCloudName] Name of the private cloud
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const AuthorizationArgs({
    this.authorizationName,
    this.expressRouteId,
    required this.privateCloudName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationName': ?authorizationName,
      'expressRouteId': ?expressRouteId,
      'privateCloudName': privateCloudName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory AuthorizationArgs.fromMap(Map<String, dynamic> map) {
    return AuthorizationArgs(
      authorizationName: (() { final guardedValue = map['authorizationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expressRouteId: (() { final guardedValue = map['expressRouteId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateCloudName: pulumi.Input.fromValue(map['privateCloudName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

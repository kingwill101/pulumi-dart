// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_avs_authorization_args_doc}
/// The set of arguments for Authorization.
/// {@endtemplate}
/// {@macro pulumi_avs_authorization_args_doc}
class AuthorizationArgs {
  /// Name of the ExpressRoute Circuit Authorization
  final pulumi.Input<String>? authorizationName;
  /// The ID of the ExpressRoute Circuit
  final pulumi.Input<String>? expressRouteId;
  /// Name of the private cloud
  final pulumi.Input<String> privateCloudName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [AuthorizationArgs].
  /// [authorizationName] Name of the ExpressRoute Circuit Authorization
  /// [expressRouteId] The ID of the ExpressRoute Circuit
  /// [privateCloudName] Name of the private cloud
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  AuthorizationArgs({
    String? authorizationName,
    String? expressRouteId,
    required String privateCloudName,
    required String resourceGroupName,
  }) :
      authorizationName = pulumi.Input.asOptionalInput<String>(authorizationName),
      expressRouteId = pulumi.Input.asOptionalInput<String>(expressRouteId),
      privateCloudName = pulumi.Input.asInput<String>(privateCloudName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      authorizationName: map['authorizationName'] == null ? null : map['authorizationName'] as String,
      expressRouteId: map['expressRouteId'] == null ? null : map['expressRouteId'] as String,
      privateCloudName: map['privateCloudName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}


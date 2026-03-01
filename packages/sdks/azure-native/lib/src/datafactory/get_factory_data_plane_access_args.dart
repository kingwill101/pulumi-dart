// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datafactory_get_factory_data_plane_access_args_doc}
/// Arguments for getFactoryDataPlaneAccess.
/// {@endtemplate}
/// {@macro pulumi_datafactory_get_factory_data_plane_access_args_doc}
class GetFactoryDataPlaneAccessArgs {
  /// The resource path to get access relative to factory. Currently only empty string is supported which corresponds to the factory resource.
  final pulumi.Input<String>? accessResourcePath;
  /// Expiration time for the token. Maximum duration for the token is eight hours and by default the token will expire in eight hours.
  final pulumi.Input<String>? expireTime;
  /// The factory name.
  final pulumi.Input<String> factoryName;
  /// The string with permissions for Data Plane access. Currently only 'r' is supported which grants read only access.
  final pulumi.Input<String>? permissions;
  /// The name of the profile. Currently only the default is supported. The default value is DefaultProfile.
  final pulumi.Input<String>? profileName;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// Start time for the token. If not specified the current time will be used.
  final pulumi.Input<String>? startTime;

  /// Creates a new [GetFactoryDataPlaneAccessArgs].
  /// [accessResourcePath] The resource path to get access relative to factory. Currently only empty string is supported which corresponds to the factory resource.
  /// [expireTime] Expiration time for the token. Maximum duration for the token is eight hours and by default the token will expire in eight hours.
  /// [factoryName] The factory name.
  /// [permissions] The string with permissions for Data Plane access. Currently only 'r' is supported which grants read only access.
  /// [profileName] The name of the profile. Currently only the default is supported. The default value is DefaultProfile.
  /// [resourceGroupName] The resource group name.
  /// [startTime] Start time for the token. If not specified the current time will be used.
  GetFactoryDataPlaneAccessArgs({
    pulumi.Output<String>? accessResourcePath,
    pulumi.Output<String>? expireTime,
    required pulumi.Output<String> factoryName,
    pulumi.Output<String>? permissions,
    pulumi.Output<String>? profileName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? startTime,
  }) :
      accessResourcePath = pulumi.Input.asOptionalInput<String>(accessResourcePath),
      expireTime = pulumi.Input.asOptionalInput<String>(expireTime),
      factoryName = pulumi.Input.asInput<String>(factoryName),
      permissions = pulumi.Input.asOptionalInput<String>(permissions),
      profileName = pulumi.Input.asOptionalInput<String>(profileName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      startTime = pulumi.Input.asOptionalInput<String>(startTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessResourcePath': ?accessResourcePath,
      'expireTime': ?expireTime,
      'factoryName': factoryName,
      'permissions': ?permissions,
      'profileName': ?profileName,
      'resourceGroupName': resourceGroupName,
      'startTime': ?startTime,
    };
  }

  factory GetFactoryDataPlaneAccessArgs.fromMap(Map<String, dynamic> map) {
    return GetFactoryDataPlaneAccessArgs(
      accessResourcePath: map['accessResourcePath'] == null ? null : pulumi.Output.create<String>(map['accessResourcePath'] as String),
      expireTime: map['expireTime'] == null ? null : pulumi.Output.create<String>(map['expireTime'] as String),
      factoryName: pulumi.Output.create<String>(map['factoryName'] as String),
      permissions: map['permissions'] == null ? null : pulumi.Output.create<String>(map['permissions'] as String),
      profileName: map['profileName'] == null ? null : pulumi.Output.create<String>(map['profileName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      startTime: map['startTime'] == null ? null : pulumi.Output.create<String>(map['startTime'] as String),
    );
  }
}


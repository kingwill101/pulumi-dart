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
    this.accessResourcePath,
    this.expireTime,
    required this.factoryName,
    this.permissions,
    this.profileName,
    required this.resourceGroupName,
    this.startTime,
  });

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
      accessResourcePath: (() {
        final guardedValue = map['accessResourcePath'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      expireTime: (() {
        final guardedValue = map['expireTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      factoryName: pulumi.Input.fromValue(map['factoryName'] as String),
      permissions: (() {
        final guardedValue = map['permissions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      profileName: (() {
        final guardedValue = map['profileName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      startTime: (() {
        final guardedValue = map['startTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

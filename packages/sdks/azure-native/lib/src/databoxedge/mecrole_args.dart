// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'asymmetric_encrypted_secret.dart';

/// {@template pulumi_databoxedge_mecrole_args_doc}
/// The set of arguments for MECRole.
/// {@endtemplate}
/// {@macro pulumi_databoxedge_mecrole_args_doc}
class MECRoleArgs {
  /// Activation key of the MEC.
  final pulumi.Input<AsymmetricEncryptedSecret>? connectionString;

  /// Controller Endpoint.
  final pulumi.Input<String>? controllerEndpoint;

  /// The device name.
  final pulumi.Input<String> deviceName;

  /// Role type.
  /// Expected value is 'MEC'.
  final pulumi.Input<String> kind;

  /// The role name.
  final pulumi.Input<String>? name;

  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;

  /// Unique Id of the Resource.
  final pulumi.Input<String>? resourceUniqueId;

  /// Role status.
  final pulumi.Input<String> roleStatus;

  /// Creates a new [MECRoleArgs].
  /// [connectionString] Activation key of the MEC.
  /// [controllerEndpoint] Controller Endpoint.
  /// [deviceName] The device name.
  /// [kind] Role type.
  /// [name] The role name.
  /// [resourceGroupName] The resource group name.
  /// [resourceUniqueId] Unique Id of the Resource.
  /// [roleStatus] Role status.
  MECRoleArgs({
    this.connectionString,
    this.controllerEndpoint,
    required this.deviceName,
    required this.kind,
    this.name,
    required this.resourceGroupName,
    this.resourceUniqueId,
    required this.roleStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionString':
          ?pulumi.Input.mapOptionalInputValue<
            AsymmetricEncryptedSecret,
            Map<String, dynamic>
          >(connectionString, (value) => value.toMap()),
      'controllerEndpoint': ?controllerEndpoint,
      'deviceName': deviceName,
      'kind': kind,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'resourceUniqueId': ?resourceUniqueId,
      'roleStatus': roleStatus,
    };
  }

  factory MECRoleArgs.fromMap(Map<String, dynamic> map) {
    return MECRoleArgs(
      connectionString: (() {
        final guardedValue = map['connectionString'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AsymmetricEncryptedSecret.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      controllerEndpoint: (() {
        final guardedValue = map['controllerEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      deviceName: pulumi.Input.fromValue(map['deviceName'] as String),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      resourceUniqueId: (() {
        final guardedValue = map['resourceUniqueId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      roleStatus: pulumi.Input.fromValue(map['roleStatus'] as String),
    );
  }
}

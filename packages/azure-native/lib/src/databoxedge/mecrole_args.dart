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
    AsymmetricEncryptedSecret? connectionString,
    String? controllerEndpoint,
    required String deviceName,
    required String kind,
    String? name,
    required String resourceGroupName,
    String? resourceUniqueId,
    required String roleStatus,
  }) :
      connectionString = pulumi.Input.asOptionalInput<AsymmetricEncryptedSecret>(connectionString),
      controllerEndpoint = pulumi.Input.asOptionalInput<String>(controllerEndpoint),
      deviceName = pulumi.Input.asInput<String>(deviceName),
      kind = pulumi.Input.asInput<String>(kind),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceUniqueId = pulumi.Input.asOptionalInput<String>(resourceUniqueId),
      roleStatus = pulumi.Input.asInput<String>(roleStatus);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionString': ?pulumi.Input.mapOptionalInputValue<AsymmetricEncryptedSecret, Map<String, dynamic>>(connectionString, (value) => value.toMap()),
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
      connectionString: map['connectionString'] == null ? null : AsymmetricEncryptedSecret.fromMap((map['connectionString'] as Map).cast<String, dynamic>()),
      controllerEndpoint: map['controllerEndpoint'] == null ? null : map['controllerEndpoint'] as String,
      deviceName: map['deviceName'] as String,
      kind: map['kind'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      resourceUniqueId: map['resourceUniqueId'] == null ? null : map['resourceUniqueId'] as String,
      roleStatus: map['roleStatus'] as String,
    );
  }
}


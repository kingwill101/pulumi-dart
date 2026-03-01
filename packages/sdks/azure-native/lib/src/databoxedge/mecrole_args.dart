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
    pulumi.Output<AsymmetricEncryptedSecret>? connectionString,
    pulumi.Output<String>? controllerEndpoint,
    required pulumi.Output<String> deviceName,
    required pulumi.Output<String> kind,
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? resourceUniqueId,
    required pulumi.Output<String> roleStatus,
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
      connectionString: map['connectionString'] == null ? null : pulumi.Output.create<AsymmetricEncryptedSecret>(AsymmetricEncryptedSecret.fromMap((map['connectionString'] as Map).cast<String, dynamic>())),
      controllerEndpoint: map['controllerEndpoint'] == null ? null : pulumi.Output.create<String>(map['controllerEndpoint'] as String),
      deviceName: pulumi.Output.create<String>(map['deviceName'] as String),
      kind: pulumi.Output.create<String>(map['kind'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceUniqueId: map['resourceUniqueId'] == null ? null : pulumi.Output.create<String>(map['resourceUniqueId'] as String),
      roleStatus: pulumi.Output.create<String>(map['roleStatus'] as String),
    );
  }
}


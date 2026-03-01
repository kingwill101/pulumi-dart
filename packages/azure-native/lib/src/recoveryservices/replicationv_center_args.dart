// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'add_vcenter_request_properties.dart';

/// {@template pulumi_recoveryservices_replicationv_center_args_doc}
/// The set of arguments for ReplicationvCenter.
/// {@endtemplate}
/// {@macro pulumi_recoveryservices_replicationv_center_args_doc}
class ReplicationvCenterArgs {
  /// Fabric name.
  final pulumi.Input<String> fabricName;
  /// The properties of an add vCenter request.
  final pulumi.Input<AddVCenterRequestProperties>? properties;
  /// The name of the resource group where the recovery services vault is present.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the recovery services vault.
  final pulumi.Input<String> resourceName;
  /// vcenter name.
  final pulumi.Input<String>? vcenterName;

  /// Creates a new [ReplicationvCenterArgs].
  /// [fabricName] Fabric name.
  /// [properties] The properties of an add vCenter request.
  /// [resourceGroupName] The name of the resource group where the recovery services vault is present.
  /// [resourceName] The name of the recovery services vault.
  /// [vcenterName] vcenter name.
  ReplicationvCenterArgs({
    required String fabricName,
    AddVCenterRequestProperties? properties,
    required String resourceGroupName,
    required String resourceName,
    String? vcenterName,
  }) :
      fabricName = pulumi.Input.asInput<String>(fabricName),
      properties = pulumi.Input.asOptionalInput<AddVCenterRequestProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName),
      vcenterName = pulumi.Input.asOptionalInput<String>(vcenterName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fabricName': fabricName,
      'properties': ?pulumi.Input.mapOptionalInputValue<AddVCenterRequestProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
      'vcenterName': ?vcenterName,
    };
  }

  factory ReplicationvCenterArgs.fromMap(Map<String, dynamic> map) {
    return ReplicationvCenterArgs(
      fabricName: map['fabricName'] as String,
      properties: map['properties'] == null ? null : AddVCenterRequestProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      resourceName: map['resourceName'] as String,
      vcenterName: map['vcenterName'] == null ? null : map['vcenterName'] as String,
    );
  }
}


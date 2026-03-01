// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iot_get_dps_shared_access_policy_get_dps_shared_access_policy_args_doc}
/// Arguments for getDpsSharedAccessPolicy.
/// {@endtemplate}
/// {@macro pulumi_iot_get_dps_shared_access_policy_get_dps_shared_access_policy_args_doc}
class GetDpsSharedAccessPolicyArgs {
  /// Specifies the name of the IoT Hub Device Provisioning service to which the Shared Access Policy belongs.
  final pulumi.Input<String> iothubDpsName;
  /// Specifies the name of the IotHub Shared Access Policy.
  final pulumi.Input<String> name;
  /// Specifies the name of the resource group under which the IotHub Shared Access Policy resource exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDpsSharedAccessPolicyArgs].
  /// [iothubDpsName] Specifies the name of the IoT Hub Device Provisioning service to which the Shared Access Policy belongs.
  /// [name] Specifies the name of the IotHub Shared Access Policy.
  /// [resourceGroupName] Specifies the name of the resource group under which the IotHub Shared Access Policy resource exists.
  GetDpsSharedAccessPolicyArgs({
    required String iothubDpsName,
    required String name,
    required String resourceGroupName,
  }) :
      iothubDpsName = pulumi.Input.asInput<String>(iothubDpsName),
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iothubDpsName': iothubDpsName,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDpsSharedAccessPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetDpsSharedAccessPolicyArgs(
      iothubDpsName: map['iothubDpsName'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}


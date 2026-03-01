// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iot_get_shared_access_policy_get_shared_access_policy_args_doc}
/// Arguments for getSharedAccessPolicy.
/// {@endtemplate}
/// {@macro pulumi_iot_get_shared_access_policy_get_shared_access_policy_args_doc}
class GetSharedAccessPolicyArgs {
  /// The name of the IoTHub to which this Shared Access Policy belongs.
  final pulumi.Input<String> iothubName;
  /// Specifies the name of the IotHub Shared Access Policy resource.
  final pulumi.Input<String> name;
  /// The name of the resource group under which the IotHub Shared Access Policy resource has to be created.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetSharedAccessPolicyArgs].
  /// [iothubName] The name of the IoTHub to which this Shared Access Policy belongs.
  /// [name] Specifies the name of the IotHub Shared Access Policy resource.
  /// [resourceGroupName] The name of the resource group under which the IotHub Shared Access Policy resource has to be created.
  GetSharedAccessPolicyArgs({
    required String iothubName,
    required String name,
    required String resourceGroupName,
  }) :
      iothubName = pulumi.Input.asInput<String>(iothubName),
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iothubName': iothubName,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetSharedAccessPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetSharedAccessPolicyArgs(
      iothubName: map['iothubName'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}


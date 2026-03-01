// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iot_shared_access_policy_shared_access_policy_args_doc}
/// The set of arguments for SharedAccessPolicy.
/// {@endtemplate}
/// {@macro pulumi_iot_shared_access_policy_shared_access_policy_args_doc}
class SharedAccessPolicyArgs {
  /// Adds `DeviceConnect` permission to this Shared Access Account. It allows sending and receiving on the device-side endpoints.
  ///
  /// > **Note:** At least one of `registry_read`, `registry_write`, `service_connect`, `device_connect` permissions must be set to `true`.
  final pulumi.Input<bool>? deviceConnect;
  /// The name of the IoTHub to which this Shared Access Policy belongs. Changing this forces a new resource to be created.
  final pulumi.Input<String> iothubName;
  /// Specifies the name of the IotHub Shared Access Policy resource. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Adds `RegistryRead` permission to this Shared Access Account. It allows read access to the identity registry.
  final pulumi.Input<bool>? registryRead;
  /// Adds `RegistryWrite` permission to this Shared Access Account. It allows write access to the identity registry.
  ///
  /// > **Note:** When `registry_write` is set to `true`, `registry_read` must also be set to true. This is a limitation of the Azure REST API
  final pulumi.Input<bool>? registryWrite;
  /// The name of the resource group under which the IotHub Shared Access Policy resource has to be created. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// Adds `ServiceConnect` permission to this Shared Access Account. It allows sending and receiving on the cloud-side endpoints.
  final pulumi.Input<bool>? serviceConnect;

  /// Creates a new [SharedAccessPolicyArgs].
  /// [deviceConnect] Adds `DeviceConnect` permission to this Shared Access Account. It allows sending and receiving on the device-side endpoints.
  /// [iothubName] The name of the IoTHub to which this Shared Access Policy belongs. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the IotHub Shared Access Policy resource. Changing this forces a new resource to be created.
  /// [registryRead] Adds `RegistryRead` permission to this Shared Access Account. It allows read access to the identity registry.
  /// [registryWrite] Adds `RegistryWrite` permission to this Shared Access Account. It allows write access to the identity registry.
  /// [resourceGroupName] The name of the resource group under which the IotHub Shared Access Policy resource has to be created. Changing this forces a new resource to be created.
  /// [serviceConnect] Adds `ServiceConnect` permission to this Shared Access Account. It allows sending and receiving on the cloud-side endpoints.
  SharedAccessPolicyArgs({
    bool? deviceConnect,
    required String iothubName,
    String? name,
    bool? registryRead,
    bool? registryWrite,
    required String resourceGroupName,
    bool? serviceConnect,
  }) :
      deviceConnect = pulumi.Input.asOptionalInput<bool>(deviceConnect),
      iothubName = pulumi.Input.asInput<String>(iothubName),
      name = pulumi.Input.asOptionalInput<String>(name),
      registryRead = pulumi.Input.asOptionalInput<bool>(registryRead),
      registryWrite = pulumi.Input.asOptionalInput<bool>(registryWrite),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceConnect = pulumi.Input.asOptionalInput<bool>(serviceConnect);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceConnect': ?deviceConnect,
      'iothubName': iothubName,
      'name': ?name,
      'registryRead': ?registryRead,
      'registryWrite': ?registryWrite,
      'resourceGroupName': resourceGroupName,
      'serviceConnect': ?serviceConnect,
    };
  }

  factory SharedAccessPolicyArgs.fromMap(Map<String, dynamic> map) {
    return SharedAccessPolicyArgs(
      deviceConnect: map['deviceConnect'] == null ? null : map['deviceConnect'] as bool,
      iothubName: map['iothubName'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      registryRead: map['registryRead'] == null ? null : map['registryRead'] as bool,
      registryWrite: map['registryWrite'] == null ? null : map['registryWrite'] as bool,
      resourceGroupName: map['resourceGroupName'] as String,
      serviceConnect: map['serviceConnect'] == null ? null : map['serviceConnect'] as bool,
    );
  }
}


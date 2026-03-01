// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_allocation_configuration_resource_k8s_io_v1beta1.dart';
import 'device_request_allocation_result_resource_k8s_io_v1beta1.dart';

/// DeviceAllocationResult is the result of allocating devices.
class DeviceAllocationResultResourceK8sIoV1beta1 {
  /// This field is a combination of all the claim and class configuration parameters. Drivers can distinguish between those based on a flag.
  ///
  /// This includes configuration parameters for drivers which have no allocated devices in the result because it is up to the drivers which configuration parameters they support. They can silently ignore unknown configuration parameters.
  final List<DeviceAllocationConfigurationResourceK8sIoV1beta1>? config;
  /// Results lists all allocated devices.
  final List<DeviceRequestAllocationResultResourceK8sIoV1beta1>? results;

  /// Creates a new [DeviceAllocationResultResourceK8sIoV1beta1].
  /// [config] This field is a combination of all the claim and class configuration parameters. Drivers can distinguish between those based on a flag.
  /// [results] Results lists all allocated devices.
  DeviceAllocationResultResourceK8sIoV1beta1({
    this.config,
    this.results,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': ?config == null ? null : pulumi.Input.encodeList<DeviceAllocationConfigurationResourceK8sIoV1beta1, Map<String, dynamic>>(config!, (value) => value.toMap()),
      'results': ?results == null ? null : pulumi.Input.encodeList<DeviceRequestAllocationResultResourceK8sIoV1beta1, Map<String, dynamic>>(results!, (value) => value.toMap()),
    };
  }

  factory DeviceAllocationResultResourceK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return DeviceAllocationResultResourceK8sIoV1beta1(
      config: map['config'] == null ? null : pulumi.Input.decodeList<DeviceAllocationConfigurationResourceK8sIoV1beta1>(map['config'], (value) => DeviceAllocationConfigurationResourceK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>())),
      results: map['results'] == null ? null : pulumi.Input.decodeList<DeviceRequestAllocationResultResourceK8sIoV1beta1>(map['results'], (value) => DeviceRequestAllocationResultResourceK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}


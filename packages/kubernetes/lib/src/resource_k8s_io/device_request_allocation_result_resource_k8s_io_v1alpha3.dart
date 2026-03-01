// ignore_for_file: unused_element, unnecessary_cast


/// DeviceRequestAllocationResult contains the allocation result for one request.
class DeviceRequestAllocationResultResourceK8sIoV1alpha3 {
  /// Device references one device instance via its name in the driver's resource pool. It must be a DNS label.
  final String device;
  /// Driver specifies the name of the DRA driver whose kubelet plugin should be invoked to process the allocation once the claim is needed on a node.
  ///
  /// Must be a DNS subdomain and should end with a DNS domain owned by the vendor of the driver.
  final String driver;
  /// This name together with the driver name and the device name field identify which device was allocated (`<driver name>/<pool name>/<device name>`).
  ///
  /// Must not be longer than 253 characters and may contain one or more DNS sub-domains separated by slashes.
  final String pool;
  /// Request is the name of the request in the claim which caused this device to be allocated. Multiple devices may have been allocated per request.
  final String request;

  /// Creates a new [DeviceRequestAllocationResultResourceK8sIoV1alpha3].
  /// [device] Device references one device instance via its name in the driver's resource pool. It must be a DNS label.
  /// [driver] Driver specifies the name of the DRA driver whose kubelet plugin should be invoked to process the allocation once the claim is needed on a node.
  /// [pool] This name together with the driver name and the device name field identify which device was allocated (`<driver name>/<pool name>/<device name>`).
  /// [request] Request is the name of the request in the claim which caused this device to be allocated. Multiple devices may have been allocated per request.
  DeviceRequestAllocationResultResourceK8sIoV1alpha3({
    required this.device,
    required this.driver,
    required this.pool,
    required this.request,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'device': device,
      'driver': driver,
      'pool': pool,
      'request': request,
    };
  }

  factory DeviceRequestAllocationResultResourceK8sIoV1alpha3.fromMap(Map<String, dynamic> map) {
    return DeviceRequestAllocationResultResourceK8sIoV1alpha3(
      device: map['device'] as String,
      driver: map['driver'] as String,
      pool: map['pool'] as String,
      request: map['request'] as String,
    );
  }
}


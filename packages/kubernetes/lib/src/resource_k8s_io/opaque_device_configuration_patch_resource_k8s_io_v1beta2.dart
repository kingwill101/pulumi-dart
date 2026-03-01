// ignore_for_file: unused_element, unnecessary_cast


/// OpaqueDeviceConfiguration contains configuration parameters for a driver in a format defined by the driver vendor.
class OpaqueDeviceConfigurationPatchResourceK8sIoV1beta2 {
  /// Driver is used to determine which kubelet plugin needs to be passed these configuration parameters.
  ///
  /// An admission policy provided by the driver developer could use this to decide whether it needs to validate them.
  ///
  /// Must be a DNS subdomain and should end with a DNS domain owned by the vendor of the driver. It should use only lower case characters.
  final String? driver;
  /// Parameters can contain arbitrary data. It is the responsibility of the driver developer to handle validation and versioning. Typically this includes self-identification and a version ("kind" + "apiVersion" for Kubernetes types), with conversion between different versions.
  ///
  /// The length of the raw data must be smaller or equal to 10 Ki.
  final dynamic parameters;

  /// Creates a new [OpaqueDeviceConfigurationPatchResourceK8sIoV1beta2].
  /// [driver] Driver is used to determine which kubelet plugin needs to be passed these configuration parameters.
  /// [parameters] Parameters can contain arbitrary data. It is the responsibility of the driver developer to handle validation and versioning. Typically this includes self-identification and a version ("kind" + "apiVersion" for Kubernetes types), with conversion between different versions.
  OpaqueDeviceConfigurationPatchResourceK8sIoV1beta2({
    this.driver,
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'driver': ?driver,
      'parameters': ?parameters,
    };
  }

  factory OpaqueDeviceConfigurationPatchResourceK8sIoV1beta2.fromMap(Map<String, dynamic> map) {
    return OpaqueDeviceConfigurationPatchResourceK8sIoV1beta2(
      driver: map['driver'] == null ? null : map['driver'] as String,
      parameters: map['parameters'] == null ? null : map['parameters'],
    );
  }
}


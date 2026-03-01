// ignore_for_file: unused_element, unnecessary_cast


/// Definition of Device
class DeviceResponse {
  /// The path inside the container at which to expose the host device.
  final String? containerPath;
  /// The path for the device on the host container instance.
  final String? hostPath;
  /// The explicit permissions to provide to the container for the device. By default, the container has permissions for ``read``, ``write``, and ``mknod`` for the device.
  final List<String>? permissions;

  /// Creates a new [DeviceResponse].
  /// [containerPath] The path inside the container at which to expose the host device.
  /// [hostPath] The path for the device on the host container instance.
  /// [permissions] The explicit permissions to provide to the container for the device. By default, the container has permissions for ``read``, ``write``, and ``mknod`` for the device.
  DeviceResponse({
    this.containerPath,
    this.hostPath,
    this.permissions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerPath': ?containerPath,
      'hostPath': ?hostPath,
      'permissions': ?permissions,
    };
  }

  factory DeviceResponse.fromMap(Map<String, dynamic> map) {
    return DeviceResponse(
      containerPath: map['containerPath'] == null ? null : map['containerPath'] as String,
      hostPath: map['hostPath'] == null ? null : map['hostPath'] as String,
      permissions: map['permissions'] == null ? null : (map['permissions'] as List).cast<String>(),
    );
  }
}


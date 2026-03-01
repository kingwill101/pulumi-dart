// ignore_for_file: unused_element, unnecessary_cast


/// volumeDevice describes a mapping of a raw block device within a container.
class VolumeDevice {
  /// devicePath is the path inside of the container that the device will be mapped to.
  final String devicePath;
  /// name must match the name of a persistentVolumeClaim in the pod
  final String name;

  /// Creates a new [VolumeDevice].
  /// [devicePath] devicePath is the path inside of the container that the device will be mapped to.
  /// [name] name must match the name of a persistentVolumeClaim in the pod
  VolumeDevice({
    required this.devicePath,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'devicePath': devicePath,
      'name': name,
    };
  }

  factory VolumeDevice.fromMap(Map<String, dynamic> map) {
    return VolumeDevice(
      devicePath: map['devicePath'] as String,
      name: map['name'] as String,
    );
  }
}


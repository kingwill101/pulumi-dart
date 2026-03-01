// ignore_for_file: unused_element, unnecessary_cast


class GetInstancesInstanceSpec {
  /// The number of VPUs this Linode has access to.
  final int acceleratedDevices;
  /// The amount of storage space, in GB. this Linode has access to. A typical Linode will divide this space between a primary disk with an image deployed to it, and a swap disk, usually 512 MB. This is the default configuration created when deploying a Linode with an image through POST /linode/instances.
  final int disk;
  /// The number of GPUs this Linode has access to.
  final int gpus;
  /// The amount of RAM, in MB, this Linode has access to. Typically a Linode will choose to boot with all of its available RAM, but this can be configured in a Config profile.
  final int memory;
  /// The amount of network transfer this Linode is allotted each month.
  final int transfer;
  /// The number of vcpus this Linode has access to. Typically a Linode will choose to boot with all of its available vcpus, but this can be configured in a Config Profile.
  final int vcpus;

  /// Creates a new [GetInstancesInstanceSpec].
  /// [acceleratedDevices] The number of VPUs this Linode has access to.
  /// [disk] The amount of storage space, in GB. this Linode has access to. A typical Linode will divide this space between a primary disk with an image deployed to it, and a swap disk, usually 512 MB. This is the default configuration created when deploying a Linode with an image through POST /linode/instances.
  /// [gpus] The number of GPUs this Linode has access to.
  /// [memory] The amount of RAM, in MB, this Linode has access to. Typically a Linode will choose to boot with all of its available RAM, but this can be configured in a Config profile.
  /// [transfer] The amount of network transfer this Linode is allotted each month.
  /// [vcpus] The number of vcpus this Linode has access to. Typically a Linode will choose to boot with all of its available vcpus, but this can be configured in a Config Profile.
  GetInstancesInstanceSpec({
    required this.acceleratedDevices,
    required this.disk,
    required this.gpus,
    required this.memory,
    required this.transfer,
    required this.vcpus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratedDevices': acceleratedDevices,
      'disk': disk,
      'gpus': gpus,
      'memory': memory,
      'transfer': transfer,
      'vcpus': vcpus,
    };
  }

  factory GetInstancesInstanceSpec.fromMap(Map<String, dynamic> map) {
    return GetInstancesInstanceSpec(
      acceleratedDevices: map['acceleratedDevices'] as int,
      disk: map['disk'] as int,
      gpus: map['gpus'] as int,
      memory: map['memory'] as int,
      transfer: map['transfer'] as int,
      vcpus: map['vcpus'] as int,
    );
  }
}


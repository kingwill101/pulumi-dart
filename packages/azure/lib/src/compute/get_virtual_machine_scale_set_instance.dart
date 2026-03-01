// ignore_for_file: unused_element, unnecessary_cast


class GetVirtualMachineScaleSetInstance {
  /// The Hostname of this Virtual Machine.
  final String computerName;
  /// The Instance ID of this Virtual Machine.
  final String instanceId;
  /// Whether the latest model has been applied to this Virtual Machine.
  final bool latestModelApplied;
  /// The name of this Virtual Machine Scale Set.
  final String name;
  /// The power state of the virtual machine.
  final String powerState;
  /// The Primary Private IP Address assigned to this Virtual Machine.
  final String privateIpAddress;
  /// A list of Private IP Addresses assigned to this Virtual Machine.
  final List<String> privateIpAddresses;
  /// A `public_ip_address` block as defined below.
  final String publicIpAddress;
  /// A list of the Public IP Addresses assigned to this Virtual Machine.
  final List<String> publicIpAddresses;
  /// The unique ID of the virtual machine.
  final String virtualMachineId;
  /// The zones of the virtual machine.
  final String zone;

  /// Creates a new [GetVirtualMachineScaleSetInstance].
  /// [computerName] The Hostname of this Virtual Machine.
  /// [instanceId] The Instance ID of this Virtual Machine.
  /// [latestModelApplied] Whether the latest model has been applied to this Virtual Machine.
  /// [name] The name of this Virtual Machine Scale Set.
  /// [powerState] The power state of the virtual machine.
  /// [privateIpAddress] The Primary Private IP Address assigned to this Virtual Machine.
  /// [privateIpAddresses] A list of Private IP Addresses assigned to this Virtual Machine.
  /// [publicIpAddress] A `public_ip_address` block as defined below.
  /// [publicIpAddresses] A list of the Public IP Addresses assigned to this Virtual Machine.
  /// [virtualMachineId] The unique ID of the virtual machine.
  /// [zone] The zones of the virtual machine.
  GetVirtualMachineScaleSetInstance({
    required this.computerName,
    required this.instanceId,
    required this.latestModelApplied,
    required this.name,
    required this.powerState,
    required this.privateIpAddress,
    required this.privateIpAddresses,
    required this.publicIpAddress,
    required this.publicIpAddresses,
    required this.virtualMachineId,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computerName': computerName,
      'instanceId': instanceId,
      'latestModelApplied': latestModelApplied,
      'name': name,
      'powerState': powerState,
      'privateIpAddress': privateIpAddress,
      'privateIpAddresses': privateIpAddresses,
      'publicIpAddress': publicIpAddress,
      'publicIpAddresses': publicIpAddresses,
      'virtualMachineId': virtualMachineId,
      'zone': zone,
    };
  }

  factory GetVirtualMachineScaleSetInstance.fromMap(Map<String, dynamic> map) {
    return GetVirtualMachineScaleSetInstance(
      computerName: map['computerName'] as String,
      instanceId: map['instanceId'] as String,
      latestModelApplied: map['latestModelApplied'] as bool,
      name: map['name'] as String,
      powerState: map['powerState'] as String,
      privateIpAddress: map['privateIpAddress'] as String,
      privateIpAddresses: (map['privateIpAddresses'] as List).cast<String>(),
      publicIpAddress: map['publicIpAddress'] as String,
      publicIpAddresses: (map['publicIpAddresses'] as List).cast<String>(),
      virtualMachineId: map['virtualMachineId'] as String,
      zone: map['zone'] as String,
    );
  }
}


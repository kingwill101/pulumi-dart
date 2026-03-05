// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResourceMachineTypes {
  /// This property specifies the number of network bindings, which relates to the number of physical or virtual network cards connected to the network through the network interface card (NIC). Multiple network bindings can increase bandwidth and redundancy and improve network reliability.
  final pulumi.Input<int>? bondNum;
  /// Provides CPU details, including the number of cores, number of threads, clock frequency, and architecture type. This information helps to evaluate the processing power and identify whether it can meet the performance requirements of a particular application.
  final pulumi.Input<String> cpuInfo;
  /// Displays information about the storage device, including the disk type (such as SSD or HDD), capacity, and I/O performance. Storage performance is critical in data-intensive applications such as big data processing and databases.
  final pulumi.Input<String>? diskInfo;
  /// Provides detailed information about the GPU, including the number, model, memory size, and computing capability. This information is particularly important for tasks such as deep learning, scientific computing, and graph processing, helping users understand the graph processing capabilities of nodes.
  final pulumi.Input<String> gpuInfo;
  /// This property provides memory details, including total memory, available memory, and usage. This helps users understand the memory processing capabilities of compute nodes, especially when running heavy-duty applications.
  final pulumi.Input<String>? memoryInfo;
  /// Specification Name.
  final pulumi.Input<String>? name;
  /// Contains detailed information about the network interface, such as network bandwidth, latency, protocol types supported by the network, IP addresses, and network topology. Optimizing network information is essential to ensure efficient data transmission and low latency.
  final pulumi.Input<String>? networkInfo;
  /// Specifies the network mode, such as bridge mode, NAT mode, or direct connection mode. Different network modes affect the network configuration and data transmission performance of nodes, and affect the network access methods of computing instances.
  final pulumi.Input<String>? networkMode;
  /// Specifies the total number of compute nodes. This property is particularly important in distributed computing and cluster environments, because the number of nodes often directly affects the computing power and the ability to parallel processing.
  final pulumi.Input<int>? nodeCount;
  /// Usually refers to a specific resource type (such as virtual machine, physical server, container, etc.), which is used to distinguish different computing units or resource categories.
  final pulumi.Input<String>? type;

  /// Creates a new [ResourceMachineTypes].
  /// [bondNum] This property specifies the number of network bindings, which relates to the number of physical or virtual network cards connected to the network through the network interface card (NIC). Multiple network bindings can increase bandwidth and redundancy and improve network reliability.
  /// [cpuInfo] Provides CPU details, including the number of cores, number of threads, clock frequency, and architecture type. This information helps to evaluate the processing power and identify whether it can meet the performance requirements of a particular application.
  /// [diskInfo] Displays information about the storage device, including the disk type (such as SSD or HDD), capacity, and I/O performance. Storage performance is critical in data-intensive applications such as big data processing and databases.
  /// [gpuInfo] Provides detailed information about the GPU, including the number, model, memory size, and computing capability. This information is particularly important for tasks such as deep learning, scientific computing, and graph processing, helping users understand the graph processing capabilities of nodes.
  /// [memoryInfo] This property provides memory details, including total memory, available memory, and usage. This helps users understand the memory processing capabilities of compute nodes, especially when running heavy-duty applications.
  /// [name] Specification Name.
  /// [networkInfo] Contains detailed information about the network interface, such as network bandwidth, latency, protocol types supported by the network, IP addresses, and network topology. Optimizing network information is essential to ensure efficient data transmission and low latency.
  /// [networkMode] Specifies the network mode, such as bridge mode, NAT mode, or direct connection mode. Different network modes affect the network configuration and data transmission performance of nodes, and affect the network access methods of computing instances.
  /// [nodeCount] Specifies the total number of compute nodes. This property is particularly important in distributed computing and cluster environments, because the number of nodes often directly affects the computing power and the ability to parallel processing.
  /// [type] Usually refers to a specific resource type (such as virtual machine, physical server, container, etc.), which is used to distinguish different computing units or resource categories.
  ResourceMachineTypes({
    this.bondNum,
    required this.cpuInfo,
    this.diskInfo,
    required this.gpuInfo,
    this.memoryInfo,
    this.name,
    this.networkInfo,
    this.networkMode,
    this.nodeCount,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bondNum': ?bondNum,
      'cpuInfo': cpuInfo,
      'diskInfo': ?diskInfo,
      'gpuInfo': gpuInfo,
      'memoryInfo': ?memoryInfo,
      'name': ?name,
      'networkInfo': ?networkInfo,
      'networkMode': ?networkMode,
      'nodeCount': ?nodeCount,
      'type': ?type,
    };
  }

  factory ResourceMachineTypes.fromMap(Map<String, dynamic> map) {
    return ResourceMachineTypes(
      bondNum: (() { final guardedValue = map['bondNum']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      cpuInfo: pulumi.Input.fromValue(map['cpuInfo'] as String),
      diskInfo: (() { final guardedValue = map['diskInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gpuInfo: pulumi.Input.fromValue(map['gpuInfo'] as String),
      memoryInfo: (() { final guardedValue = map['memoryInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkInfo: (() { final guardedValue = map['networkInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkMode: (() { final guardedValue = map['networkMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeCount: (() { final guardedValue = map['nodeCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


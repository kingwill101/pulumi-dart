// ignore_for_file: unused_element, unnecessary_cast


class GetDedicatedHostsHostCapacity {
  /// The remaining local disk capacity. Unit: GiB.
  final int availableLocalStorage;
  /// The remaining memory capacity, unit: GiB.
  final double availableMemory;
  /// The number of remaining vCPU cores.
  final int availableVcpus;
  /// The number of available virtual GPUs.
  final int availableVgpus;
  /// Local disk type.
  final String localStorageCategory;
  /// The total capacity of the local disk, in GiB.
  final int totalLocalStorage;
  /// The total memory capacity, unit: GiB.
  final double totalMemory;
  /// The total number of vCPU cores.
  final int totalVcpus;
  /// The total number of virtual GPUs.
  final int totalVgpus;

  /// Creates a new [GetDedicatedHostsHostCapacity].
  /// [availableLocalStorage] The remaining local disk capacity. Unit: GiB.
  /// [availableMemory] The remaining memory capacity, unit: GiB.
  /// [availableVcpus] The number of remaining vCPU cores.
  /// [availableVgpus] The number of available virtual GPUs.
  /// [localStorageCategory] Local disk type.
  /// [totalLocalStorage] The total capacity of the local disk, in GiB.
  /// [totalMemory] The total memory capacity, unit: GiB.
  /// [totalVcpus] The total number of vCPU cores.
  /// [totalVgpus] The total number of virtual GPUs.
  GetDedicatedHostsHostCapacity({
    required this.availableLocalStorage,
    required this.availableMemory,
    required this.availableVcpus,
    required this.availableVgpus,
    required this.localStorageCategory,
    required this.totalLocalStorage,
    required this.totalMemory,
    required this.totalVcpus,
    required this.totalVgpus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availableLocalStorage': availableLocalStorage,
      'availableMemory': availableMemory,
      'availableVcpus': availableVcpus,
      'availableVgpus': availableVgpus,
      'localStorageCategory': localStorageCategory,
      'totalLocalStorage': totalLocalStorage,
      'totalMemory': totalMemory,
      'totalVcpus': totalVcpus,
      'totalVgpus': totalVgpus,
    };
  }

  factory GetDedicatedHostsHostCapacity.fromMap(Map<String, dynamic> map) {
    return GetDedicatedHostsHostCapacity(
      availableLocalStorage: map['availableLocalStorage'] as int,
      availableMemory: map['availableMemory'] as double,
      availableVcpus: map['availableVcpus'] as int,
      availableVgpus: map['availableVgpus'] as int,
      localStorageCategory: map['localStorageCategory'] as String,
      totalLocalStorage: map['totalLocalStorage'] as int,
      totalMemory: map['totalMemory'] as double,
      totalVcpus: map['totalVcpus'] as int,
      totalVgpus: map['totalVgpus'] as int,
    );
  }
}


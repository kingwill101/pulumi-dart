// ignore_for_file: unused_element, unnecessary_cast


class ClusterCapacityResponse {
  /// The remaining appliance-based storage in GB available for workload use. Measured in gibibytes.
  final double? availableApplianceStorageGB;
  /// The remaining number of cores that are available in this cluster for workload use.
  final double? availableCoreCount;
  /// The remaining machine or host-based storage in GB available for workload use. Measured in gibibytes.
  final double? availableHostStorageGB;
  /// The remaining memory in GB that are available in this cluster for workload use. Measured in gibibytes.
  final double? availableMemoryGB;
  /// The total appliance-based storage in GB supported by this cluster for workload use. Measured in gibibytes.
  final double? totalApplianceStorageGB;
  /// The total number of cores that are supported by this cluster for workload use.
  final double? totalCoreCount;
  /// The total machine or host-based storage in GB supported by this cluster for workload use. Measured in gibibytes.
  final double? totalHostStorageGB;
  /// The total memory supported by this cluster for workload use. Measured in gibibytes.
  final double? totalMemoryGB;

  /// Creates a new [ClusterCapacityResponse].
  /// [availableApplianceStorageGB] The remaining appliance-based storage in GB available for workload use. Measured in gibibytes.
  /// [availableCoreCount] The remaining number of cores that are available in this cluster for workload use.
  /// [availableHostStorageGB] The remaining machine or host-based storage in GB available for workload use. Measured in gibibytes.
  /// [availableMemoryGB] The remaining memory in GB that are available in this cluster for workload use. Measured in gibibytes.
  /// [totalApplianceStorageGB] The total appliance-based storage in GB supported by this cluster for workload use. Measured in gibibytes.
  /// [totalCoreCount] The total number of cores that are supported by this cluster for workload use.
  /// [totalHostStorageGB] The total machine or host-based storage in GB supported by this cluster for workload use. Measured in gibibytes.
  /// [totalMemoryGB] The total memory supported by this cluster for workload use. Measured in gibibytes.
  ClusterCapacityResponse({
    this.availableApplianceStorageGB,
    this.availableCoreCount,
    this.availableHostStorageGB,
    this.availableMemoryGB,
    this.totalApplianceStorageGB,
    this.totalCoreCount,
    this.totalHostStorageGB,
    this.totalMemoryGB,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availableApplianceStorageGB': ?availableApplianceStorageGB,
      'availableCoreCount': ?availableCoreCount,
      'availableHostStorageGB': ?availableHostStorageGB,
      'availableMemoryGB': ?availableMemoryGB,
      'totalApplianceStorageGB': ?totalApplianceStorageGB,
      'totalCoreCount': ?totalCoreCount,
      'totalHostStorageGB': ?totalHostStorageGB,
      'totalMemoryGB': ?totalMemoryGB,
    };
  }

  factory ClusterCapacityResponse.fromMap(Map<String, dynamic> map) {
    return ClusterCapacityResponse(
      availableApplianceStorageGB: map['availableApplianceStorageGB'] == null ? null : map['availableApplianceStorageGB'] as double,
      availableCoreCount: map['availableCoreCount'] == null ? null : map['availableCoreCount'] as double,
      availableHostStorageGB: map['availableHostStorageGB'] == null ? null : map['availableHostStorageGB'] as double,
      availableMemoryGB: map['availableMemoryGB'] == null ? null : map['availableMemoryGB'] as double,
      totalApplianceStorageGB: map['totalApplianceStorageGB'] == null ? null : map['totalApplianceStorageGB'] as double,
      totalCoreCount: map['totalCoreCount'] == null ? null : map['totalCoreCount'] as double,
      totalHostStorageGB: map['totalHostStorageGB'] == null ? null : map['totalHostStorageGB'] as double,
      totalMemoryGB: map['totalMemoryGB'] == null ? null : map['totalMemoryGB'] as double,
    );
  }
}


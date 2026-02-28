// ignore_for_file: unused_element, unnecessary_cast

class GetSupportedInstanceTypesSupportedInstanceType {
  /// CPU architecture.
  final String architecture;

  /// Indicates whether the instance type supports Amazon EBS optimization.
  final bool ebsOptimizedAvailable;

  /// Indicates whether the instance type uses Amazon EBS optimization by default.
  final bool ebsOptimizedByDefault;

  /// Indicates whether the instance type only supports Amazon EBS.
  final bool ebsStorageOnly;

  /// The Amazon EC2 family and generation for the instance type.
  final String instanceFamilyId;

  /// Indicates whether the instance type only supports 64-bit architecture.
  final bool is64BitsOnly;

  /// Memory that is available to Amazon EMR from the instance type.
  final double memoryGb;

  /// Number of disks for the instance type.
  final int numberOfDisks;

  /// Storage capacity of the instance type.
  final int storageGb;

  /// Amazon EC2 instance type. For example, `m5.xlarge`.
  final String type;

  /// The number of vCPUs available for the instance type.
  final int vcpu;

  /// Creates a new [GetSupportedInstanceTypesSupportedInstanceType].
  /// [architecture] CPU architecture.
  /// [ebsOptimizedAvailable] Indicates whether the instance type supports Amazon EBS optimization.
  /// [ebsOptimizedByDefault] Indicates whether the instance type uses Amazon EBS optimization by default.
  /// [ebsStorageOnly] Indicates whether the instance type only supports Amazon EBS.
  /// [instanceFamilyId] The Amazon EC2 family and generation for the instance type.
  /// [is64BitsOnly] Indicates whether the instance type only supports 64-bit architecture.
  /// [memoryGb] Memory that is available to Amazon EMR from the instance type.
  /// [numberOfDisks] Number of disks for the instance type.
  /// [storageGb] Storage capacity of the instance type.
  /// [type] Amazon EC2 instance type. For example, `m5.xlarge`.
  /// [vcpu] The number of vCPUs available for the instance type.
  GetSupportedInstanceTypesSupportedInstanceType({
    required this.architecture,
    required this.ebsOptimizedAvailable,
    required this.ebsOptimizedByDefault,
    required this.ebsStorageOnly,
    required this.instanceFamilyId,
    required this.is64BitsOnly,
    required this.memoryGb,
    required this.numberOfDisks,
    required this.storageGb,
    required this.type,
    required this.vcpu,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['architecture'] = architecture;
    map['ebsOptimizedAvailable'] = ebsOptimizedAvailable;
    map['ebsOptimizedByDefault'] = ebsOptimizedByDefault;
    map['ebsStorageOnly'] = ebsStorageOnly;
    map['instanceFamilyId'] = instanceFamilyId;
    map['is64BitsOnly'] = is64BitsOnly;
    map['memoryGb'] = memoryGb;
    map['numberOfDisks'] = numberOfDisks;
    map['storageGb'] = storageGb;
    map['type'] = type;
    map['vcpu'] = vcpu;
    return map;
  }

  factory GetSupportedInstanceTypesSupportedInstanceType.fromMap(
      Map<String, dynamic> map) {
    return GetSupportedInstanceTypesSupportedInstanceType(
      architecture: map['architecture'] as String,
      ebsOptimizedAvailable: map['ebsOptimizedAvailable'] as bool,
      ebsOptimizedByDefault: map['ebsOptimizedByDefault'] as bool,
      ebsStorageOnly: map['ebsStorageOnly'] as bool,
      instanceFamilyId: map['instanceFamilyId'] as String,
      is64BitsOnly: map['is64BitsOnly'] as bool,
      memoryGb: map['memoryGb'] as double,
      numberOfDisks: map['numberOfDisks'] as int,
      storageGb: map['storageGb'] as int,
      type: map['type'] as String,
      vcpu: map['vcpu'] as int,
    );
  }
}

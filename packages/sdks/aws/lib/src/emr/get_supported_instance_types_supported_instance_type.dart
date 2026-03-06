// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSupportedInstanceTypesSupportedInstanceType {
  /// CPU architecture.
  final pulumi.Input<String> architecture;
  /// Indicates whether the instance type supports Amazon EBS optimization.
  final pulumi.Input<bool> ebsOptimizedAvailable;
  /// Indicates whether the instance type uses Amazon EBS optimization by default.
  final pulumi.Input<bool> ebsOptimizedByDefault;
  /// Indicates whether the instance type only supports Amazon EBS.
  final pulumi.Input<bool> ebsStorageOnly;
  /// The Amazon EC2 family and generation for the instance type.
  final pulumi.Input<String> instanceFamilyId;
  /// Indicates whether the instance type only supports 64-bit architecture.
  final pulumi.Input<bool> is64BitsOnly;
  /// Memory that is available to Amazon EMR from the instance type.
  final pulumi.Input<double> memoryGb;
  /// Number of disks for the instance type.
  final pulumi.Input<int> numberOfDisks;
  /// Storage capacity of the instance type.
  final pulumi.Input<int> storageGb;
  /// Amazon EC2 instance type. For example, `m5.xlarge`.
  final pulumi.Input<String> type;
  /// The number of vCPUs available for the instance type.
  final pulumi.Input<int> vcpu;

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
  const GetSupportedInstanceTypesSupportedInstanceType({
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
    return <String, dynamic>{
      'architecture': architecture,
      'ebsOptimizedAvailable': ebsOptimizedAvailable,
      'ebsOptimizedByDefault': ebsOptimizedByDefault,
      'ebsStorageOnly': ebsStorageOnly,
      'instanceFamilyId': instanceFamilyId,
      'is64BitsOnly': is64BitsOnly,
      'memoryGb': memoryGb,
      'numberOfDisks': numberOfDisks,
      'storageGb': storageGb,
      'type': type,
      'vcpu': vcpu,
    };
  }

  factory GetSupportedInstanceTypesSupportedInstanceType.fromMap(Map<String, dynamic> map) {
    return GetSupportedInstanceTypesSupportedInstanceType(
      architecture: pulumi.Input.fromValue(map['architecture'] as String),
      ebsOptimizedAvailable: pulumi.Input.fromValue(map['ebsOptimizedAvailable'] as bool),
      ebsOptimizedByDefault: pulumi.Input.fromValue(map['ebsOptimizedByDefault'] as bool),
      ebsStorageOnly: pulumi.Input.fromValue(map['ebsStorageOnly'] as bool),
      instanceFamilyId: pulumi.Input.fromValue(map['instanceFamilyId'] as String),
      is64BitsOnly: pulumi.Input.fromValue(map['is64BitsOnly'] as bool),
      memoryGb: pulumi.Input.fromValue(map['memoryGb'] as double),
      numberOfDisks: pulumi.Input.fromValue(map['numberOfDisks'] as int),
      storageGb: pulumi.Input.fromValue(map['storageGb'] as int),
      type: pulumi.Input.fromValue(map['type'] as String),
      vcpu: pulumi.Input.fromValue(map['vcpu'] as int),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast


/// Details of the elasticity profile.
class StandbyVirtualMachinePoolElasticityProfileResponse {
  /// Specifies the maximum number of virtual machines in the standby virtual machine pool.
  final double maxReadyCapacity;
  /// Specifies the desired minimum number of virtual machines in the standby virtual machine pool. MinReadyCapacity cannot exceed MaxReadyCapacity.
  final double? minReadyCapacity;

  /// Creates a new [StandbyVirtualMachinePoolElasticityProfileResponse].
  /// [maxReadyCapacity] Specifies the maximum number of virtual machines in the standby virtual machine pool.
  /// [minReadyCapacity] Specifies the desired minimum number of virtual machines in the standby virtual machine pool. MinReadyCapacity cannot exceed MaxReadyCapacity.
  StandbyVirtualMachinePoolElasticityProfileResponse({
    required this.maxReadyCapacity,
    this.minReadyCapacity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxReadyCapacity': maxReadyCapacity,
      'minReadyCapacity': ?minReadyCapacity,
    };
  }

  factory StandbyVirtualMachinePoolElasticityProfileResponse.fromMap(Map<String, dynamic> map) {
    return StandbyVirtualMachinePoolElasticityProfileResponse(
      maxReadyCapacity: map['maxReadyCapacity'] as double,
      minReadyCapacity: map['minReadyCapacity'] == null ? null : map['minReadyCapacity'] as double,
    );
  }
}


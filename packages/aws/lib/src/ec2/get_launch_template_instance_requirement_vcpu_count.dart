// ignore_for_file: unused_element, unnecessary_cast


class GetLaunchTemplateInstanceRequirementVcpuCount {
  final int max;
  final int min;

  /// Creates a new [GetLaunchTemplateInstanceRequirementVcpuCount].
  /// [max] Required.
  /// [min] Required.
  GetLaunchTemplateInstanceRequirementVcpuCount({
    required this.max,
    required this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': max,
      'min': min,
    };
  }

  factory GetLaunchTemplateInstanceRequirementVcpuCount.fromMap(Map<String, dynamic> map) {
    return GetLaunchTemplateInstanceRequirementVcpuCount(
      max: map['max'] as int,
      min: map['min'] as int,
    );
  }
}


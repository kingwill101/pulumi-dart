// ignore_for_file: unused_element, unnecessary_cast


class GetLaunchTemplateInstanceRequirementNetworkInterfaceCount {
  final int max;
  final int min;

  /// Creates a new [GetLaunchTemplateInstanceRequirementNetworkInterfaceCount].
  /// [max] Required.
  /// [min] Required.
  GetLaunchTemplateInstanceRequirementNetworkInterfaceCount({
    required this.max,
    required this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': max,
      'min': min,
    };
  }

  factory GetLaunchTemplateInstanceRequirementNetworkInterfaceCount.fromMap(Map<String, dynamic> map) {
    return GetLaunchTemplateInstanceRequirementNetworkInterfaceCount(
      max: map['max'] as int,
      min: map['min'] as int,
    );
  }
}


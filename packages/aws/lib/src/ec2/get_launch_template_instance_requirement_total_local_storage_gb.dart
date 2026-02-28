// ignore_for_file: unused_element, unnecessary_cast

class GetLaunchTemplateInstanceRequirementTotalLocalStorageGb {
  final double max;
  final double min;

  /// Creates a new [GetLaunchTemplateInstanceRequirementTotalLocalStorageGb].
  /// [max] Required.
  /// [min] Required.
  GetLaunchTemplateInstanceRequirementTotalLocalStorageGb({
    required this.max,
    required this.min,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['max'] = max;
    map['min'] = min;
    return map;
  }

  factory GetLaunchTemplateInstanceRequirementTotalLocalStorageGb.fromMap(
      Map<String, dynamic> map) {
    return GetLaunchTemplateInstanceRequirementTotalLocalStorageGb(
      max: map['max'] as double,
      min: map['min'] as double,
    );
  }
}

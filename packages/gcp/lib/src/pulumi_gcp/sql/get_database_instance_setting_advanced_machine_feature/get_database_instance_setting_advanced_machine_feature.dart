// ignore_for_file: unused_element, unnecessary_cast

class GetDatabaseInstanceSettingAdvancedMachineFeature {
  /// The number of threads per physical core. Can be 1 or 2.
  final int threadsPerCore;

  GetDatabaseInstanceSettingAdvancedMachineFeature({
    required this.threadsPerCore,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['threadsPerCore'] = threadsPerCore;
    return map;
  }

  factory GetDatabaseInstanceSettingAdvancedMachineFeature.fromMap(
      Map<String, dynamic> map) {
    return GetDatabaseInstanceSettingAdvancedMachineFeature(
      threadsPerCore: map['threadsPerCore'] as int,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

class GetDatabaseInstanceSettingAdvancedMachineFeature {
  /// The number of threads per physical core. Can be 1 or 2.
  final int threadsPerCore;

  /// Creates a new [GetDatabaseInstanceSettingAdvancedMachineFeature].
  /// [threadsPerCore] The number of threads per physical core. Can be 1 or 2.
  GetDatabaseInstanceSettingAdvancedMachineFeature({
    required this.threadsPerCore,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'threadsPerCore': threadsPerCore};
  }

  factory GetDatabaseInstanceSettingAdvancedMachineFeature.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetDatabaseInstanceSettingAdvancedMachineFeature(
      threadsPerCore: map['threadsPerCore'] as int,
    );
  }
}

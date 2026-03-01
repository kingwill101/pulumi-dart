// ignore_for_file: unused_element, unnecessary_cast

class PipeTargetParametersEcsTaskParametersOverridesEphemeralStorage {
  /// The total amount, in GiB, of ephemeral storage to set for the task. The minimum supported value is 21 GiB and the maximum supported value is 200 GiB.
  final int sizeInGib;

  /// Creates a new [PipeTargetParametersEcsTaskParametersOverridesEphemeralStorage].
  /// [sizeInGib] The total amount, in GiB, of ephemeral storage to set for the task. The minimum supported value is 21 GiB and the maximum supported value is 200 GiB.
  PipeTargetParametersEcsTaskParametersOverridesEphemeralStorage({
    required this.sizeInGib,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'sizeInGib': sizeInGib};
  }

  factory PipeTargetParametersEcsTaskParametersOverridesEphemeralStorage.fromMap(
    Map<String, dynamic> map,
  ) {
    return PipeTargetParametersEcsTaskParametersOverridesEphemeralStorage(
      sizeInGib: map['sizeInGib'] as int,
    );
  }
}

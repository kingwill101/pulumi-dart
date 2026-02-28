// ignore_for_file: unused_element, unnecessary_cast

class GetPatchBaselinesBaselineIdentity {
  /// Description of the patch baseline.
  final String baselineDescription;

  /// ID of the patch baseline.
  final String baselineId;

  /// Name of the patch baseline.
  final String baselineName;

  /// Indicates whether this is the default baseline. AWS Systems Manager supports creating multiple default patch baselines. For example, you can create a default patch baseline for each operating system.
  final bool defaultBaseline;

  /// Operating system the patch baseline applies to.
  final String operatingSystem;

  /// Creates a new [GetPatchBaselinesBaselineIdentity].
  /// [baselineDescription] Description of the patch baseline.
  /// [baselineId] ID of the patch baseline.
  /// [baselineName] Name of the patch baseline.
  /// [defaultBaseline] Indicates whether this is the default baseline. AWS Systems Manager supports creating multiple default patch baselines. For example, you can create a default patch baseline for each operating system.
  /// [operatingSystem] Operating system the patch baseline applies to.
  GetPatchBaselinesBaselineIdentity({
    required this.baselineDescription,
    required this.baselineId,
    required this.baselineName,
    required this.defaultBaseline,
    required this.operatingSystem,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['baselineDescription'] = baselineDescription;
    map['baselineId'] = baselineId;
    map['baselineName'] = baselineName;
    map['defaultBaseline'] = defaultBaseline;
    map['operatingSystem'] = operatingSystem;
    return map;
  }

  factory GetPatchBaselinesBaselineIdentity.fromMap(Map<String, dynamic> map) {
    return GetPatchBaselinesBaselineIdentity(
      baselineDescription: map['baselineDescription'] as String,
      baselineId: map['baselineId'] as String,
      baselineName: map['baselineName'] as String,
      defaultBaseline: map['defaultBaseline'] as bool,
      operatingSystem: map['operatingSystem'] as String,
    );
  }
}

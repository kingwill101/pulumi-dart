// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPatchBaselinesBaselineIdentity {
  /// Description of the patch baseline.
  final pulumi.Input<String> baselineDescription;
  /// ID of the patch baseline.
  final pulumi.Input<String> baselineId;
  /// Name of the patch baseline.
  final pulumi.Input<String> baselineName;
  /// Indicates whether this is the default baseline. AWS Systems Manager supports creating multiple default patch baselines. For example, you can create a default patch baseline for each operating system.
  final pulumi.Input<bool> defaultBaseline;
  /// Operating system the patch baseline applies to.
  final pulumi.Input<String> operatingSystem;

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
    return <String, dynamic>{
      'baselineDescription': baselineDescription,
      'baselineId': baselineId,
      'baselineName': baselineName,
      'defaultBaseline': defaultBaseline,
      'operatingSystem': operatingSystem,
    };
  }

  factory GetPatchBaselinesBaselineIdentity.fromMap(Map<String, dynamic> map) {
    return GetPatchBaselinesBaselineIdentity(
      baselineDescription: (map['baselineDescription'] as String).input(),
      baselineId: (map['baselineId'] as String).input(),
      baselineName: (map['baselineName'] as String).input(),
      defaultBaseline: (map['defaultBaseline'] as bool).input(),
      operatingSystem: (map['operatingSystem'] as String).input(),
    );
  }
}


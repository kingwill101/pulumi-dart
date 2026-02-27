// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getSavingsPlan.
class GetSavingsPlanArgs {
  /// The ID of the Savings Plan.
  final pulumi.Input<String> savingsPlanId;

  GetSavingsPlanArgs({
    required this.savingsPlanId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['savingsPlanId'] = savingsPlanId;
    return map;
  }

  factory GetSavingsPlanArgs.fromMap(Map<String, dynamic> map) {
    return GetSavingsPlanArgs(
      savingsPlanId: pulumi.Input.asInput<String>(map['savingsPlanId']),
    );
  }
}

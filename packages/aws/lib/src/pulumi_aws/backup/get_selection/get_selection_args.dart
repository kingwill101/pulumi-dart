// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getSelection.
class GetSelectionArgs {
  /// Backup plan ID associated with the selection of resources.
  final pulumi.Input<String> planId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Backup selection ID.
  final pulumi.Input<String> selectionId;

  GetSelectionArgs({
    required this.planId,
    this.region,
    required this.selectionId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['planId'] = planId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['selectionId'] = selectionId;
    return map;
  }

  factory GetSelectionArgs.fromMap(Map<String, dynamic> map) {
    return GetSelectionArgs(
      planId: pulumi.Input.asInput<String>(map['planId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      selectionId: pulumi.Input.asInput<String>(map['selectionId']),
    );
  }
}

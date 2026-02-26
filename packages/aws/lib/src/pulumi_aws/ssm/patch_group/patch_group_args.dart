// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for PatchGroup.
class PatchGroupArgs {
  /// The ID of the patch baseline to register the patch group with.
  final Input<String> baselineId;

  /// The name of the patch group that should be registered with the patch baseline.
  final Input<String> patchGroup;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  PatchGroupArgs({
    required this.baselineId,
    required this.patchGroup,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['baselineId'] = baselineId;
    map['patchGroup'] = patchGroup;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory PatchGroupArgs.fromMap(Map<String, dynamic> map) {
    return PatchGroupArgs(
      baselineId: Input.asInput<String>(map['baselineId']),
      patchGroup: Input.asInput<String>(map['patchGroup']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}

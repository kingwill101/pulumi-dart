// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getDistribution.
class GetDistributionArgs {
  /// Identifier for the distribution. For example: `EDFDVBD632BHDS5`.
  final Input<String> id;
  final Input<Map<String, String>>? tags;

  GetDistributionArgs({
    required this.id,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetDistributionArgs.fromMap(Map<String, dynamic> map) {
    return GetDistributionArgs(
      id: Input.asInput<String>(map['id']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}

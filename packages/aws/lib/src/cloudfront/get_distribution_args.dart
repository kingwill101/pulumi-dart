// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudfront_get_distribution_get_distribution_args_doc}
/// Arguments for getDistribution.
/// {@endtemplate}
/// {@macro pulumi_cloudfront_get_distribution_get_distribution_args_doc}
class GetDistributionArgs {
  /// Identifier for the distribution. For example: `EDFDVBD632BHDS5`.
  final pulumi.Input<String> id;
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetDistributionArgs].
  /// [id] Identifier for the distribution. For example: `EDFDVBD632BHDS5`.
  /// [tags] Optional.
  GetDistributionArgs({
    required String id,
    Map<String, String>? tags,
  }) :
      id = pulumi.Input.asInput<String>(id),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'tags': ?tags,
    };
  }

  factory GetDistributionArgs.fromMap(Map<String, dynamic> map) {
    return GetDistributionArgs(
      id: map['id'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}


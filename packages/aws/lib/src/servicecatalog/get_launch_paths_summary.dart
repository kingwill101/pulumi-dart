// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_launch_paths_summary_constraint_summary.dart';

class GetLaunchPathsSummary {
  /// Block for constraints on the portfolio-product relationship. See details below.
  final List<GetLaunchPathsSummaryConstraintSummary> constraintSummaries;

  /// Name of the portfolio to which the path was assigned.
  final String name;

  /// Identifier of the product path.
  final String pathId;

  /// Tags associated with this product path.
  final Map<String, String> tags;

  /// Creates a new [GetLaunchPathsSummary].
  /// [constraintSummaries] Block for constraints on the portfolio-product relationship. See details below.
  /// [name] Name of the portfolio to which the path was assigned.
  /// [pathId] Identifier of the product path.
  /// [tags] Tags associated with this product path.
  GetLaunchPathsSummary({
    required this.constraintSummaries,
    required this.name,
    required this.pathId,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'constraintSummaries':
          pulumi.Input.encodeList<
            GetLaunchPathsSummaryConstraintSummary,
            Map<String, dynamic>
          >(constraintSummaries, (value) => value.toMap()),
      'name': name,
      'pathId': pathId,
      'tags': tags,
    };
  }

  factory GetLaunchPathsSummary.fromMap(Map<String, dynamic> map) {
    return GetLaunchPathsSummary(
      constraintSummaries:
          pulumi.Input.decodeList<GetLaunchPathsSummaryConstraintSummary>(
            map['constraintSummaries'],
            (value) => GetLaunchPathsSummaryConstraintSummary.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      name: map['name'] as String,
      pathId: map['pathId'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

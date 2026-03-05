// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_launch_options_option_constraint_summary.dart';

class GetLaunchOptionsOption {
  /// List of constraints.
  final pulumi.Input<List<GetLaunchOptionsOptionConstraintSummary>> constraintSummaries;
  /// ID of Service Catalog Launch Option.
  final pulumi.Input<String> id;
  /// Product mix ID.
  final pulumi.Input<String> portfolioId;
  /// Product portfolio name.
  final pulumi.Input<String> portfolioName;

  /// Creates a new [GetLaunchOptionsOption].
  /// [constraintSummaries] List of constraints.
  /// [id] ID of Service Catalog Launch Option.
  /// [portfolioId] Product mix ID.
  /// [portfolioName] Product portfolio name.
  GetLaunchOptionsOption({
    required this.constraintSummaries,
    required this.id,
    required this.portfolioId,
    required this.portfolioName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'constraintSummaries': pulumi.Input.mapInputValue<List<GetLaunchOptionsOptionConstraintSummary>, List<Map<String, dynamic>>>(constraintSummaries, (value) => pulumi.Input.encodeList<GetLaunchOptionsOptionConstraintSummary, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': id,
      'portfolioId': portfolioId,
      'portfolioName': portfolioName,
    };
  }

  factory GetLaunchOptionsOption.fromMap(Map<String, dynamic> map) {
    return GetLaunchOptionsOption(
      constraintSummaries: pulumi.Input.fromValue(pulumi.Input.decodeList<GetLaunchOptionsOptionConstraintSummary>(map['constraintSummaries']!, (value) => GetLaunchOptionsOptionConstraintSummary.fromMap((value as Map).cast<String, dynamic>()))),
      id: pulumi.Input.fromValue(map['id'] as String),
      portfolioId: pulumi.Input.fromValue(map['portfolioId'] as String),
      portfolioName: pulumi.Input.fromValue(map['portfolioName'] as String),
    );
  }
}


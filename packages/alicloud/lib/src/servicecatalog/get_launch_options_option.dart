// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_launch_options_option_constraint_summary.dart';

class GetLaunchOptionsOption {
  /// List of constraints.
  final List<GetLaunchOptionsOptionConstraintSummary> constraintSummaries;
  /// ID of Service Catalog Launch Option.
  final String id;
  /// Product mix ID.
  final String portfolioId;
  /// Product portfolio name.
  final String portfolioName;

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
      'constraintSummaries': pulumi.Input.encodeList<GetLaunchOptionsOptionConstraintSummary, Map<String, dynamic>>(constraintSummaries, (value) => value.toMap()),
      'id': id,
      'portfolioId': portfolioId,
      'portfolioName': portfolioName,
    };
  }

  factory GetLaunchOptionsOption.fromMap(Map<String, dynamic> map) {
    return GetLaunchOptionsOption(
      constraintSummaries: pulumi.Input.decodeList<GetLaunchOptionsOptionConstraintSummary>(map['constraintSummaries'], (value) => GetLaunchOptionsOptionConstraintSummary.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      portfolioId: map['portfolioId'] as String,
      portfolioName: map['portfolioName'] as String,
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_launch_options_launch_option_constraint_summary.dart';

class GetLaunchOptionsLaunchOption {
  /// List of constraints.
  final pulumi.Input<List<GetLaunchOptionsLaunchOptionConstraintSummary>> constraintSummaries;
  /// ID of Service Catalog Launch Option.
  final pulumi.Input<String> id;
  /// Product mix ID.
  final pulumi.Input<String> portfolioId;
  /// Product portfolio name.
  final pulumi.Input<String> portfolioName;

  /// Creates a new [GetLaunchOptionsLaunchOption].
  /// [constraintSummaries] List of constraints.
  /// [id] ID of Service Catalog Launch Option.
  /// [portfolioId] Product mix ID.
  /// [portfolioName] Product portfolio name.
  GetLaunchOptionsLaunchOption({
    required this.constraintSummaries,
    required this.id,
    required this.portfolioId,
    required this.portfolioName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'constraintSummaries': pulumi.Input.mapInputValue<List<GetLaunchOptionsLaunchOptionConstraintSummary>, List<Map<String, dynamic>>>(constraintSummaries, (value) => pulumi.Input.encodeList<GetLaunchOptionsLaunchOptionConstraintSummary, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': id,
      'portfolioId': portfolioId,
      'portfolioName': portfolioName,
    };
  }

  factory GetLaunchOptionsLaunchOption.fromMap(Map<String, dynamic> map) {
    return GetLaunchOptionsLaunchOption(
      constraintSummaries: (pulumi.Input.decodeList<GetLaunchOptionsLaunchOptionConstraintSummary>(map['constraintSummaries'], (value) => GetLaunchOptionsLaunchOptionConstraintSummary.fromMap((value as Map).cast<String, dynamic>()))).input(),
      id: (map['id'] as String).input(),
      portfolioId: (map['portfolioId'] as String).input(),
      portfolioName: (map['portfolioName'] as String).input(),
    );
  }
}


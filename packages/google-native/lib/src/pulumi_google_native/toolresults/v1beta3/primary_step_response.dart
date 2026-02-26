// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'individual_outcome_response.dart';

/// Stores rollup test status of multiple steps that were run as a group and outcome of each individual step.
class PrimaryStepResponse {
  /// Step Id and outcome of each individual step.
  final List<IndividualOutcomeResponse> individualOutcome;

  /// Rollup test status of multiple steps that were run with the same configuration as a group.
  final String rollUp;

  PrimaryStepResponse({
    required this.individualOutcome,
    required this.rollUp,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['individualOutcome'] =
        Input.encodeList<IndividualOutcomeResponse, Map<String, dynamic>>(
            individualOutcome, (value) => value.toMap());
    map['rollUp'] = rollUp;
    return map;
  }

  factory PrimaryStepResponse.fromMap(Map<String, dynamic> map) {
    return PrimaryStepResponse(
      individualOutcome: Input.decodeList<IndividualOutcomeResponse>(
          map['individualOutcome'],
          (value) => IndividualOutcomeResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      rollUp: map['rollUp'] as String,
    );
  }
}

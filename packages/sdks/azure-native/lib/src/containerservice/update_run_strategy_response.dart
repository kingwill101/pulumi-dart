// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'update_stage_response.dart';

/// Defines the update sequence of the clusters via stages and groups.
///
/// Stages within a run are executed sequentially one after another.
/// Groups within a stage are executed in parallel.
/// Member clusters within a group are updated sequentially one after another.
///
/// A valid strategy contains no duplicate groups within or across stages.
class UpdateRunStrategyResponse {
  /// The list of stages that compose this update run. Min size: 1.
  final pulumi.Input<List<UpdateStageResponse>> stages;

  /// Creates a new [UpdateRunStrategyResponse].
  /// [stages] The list of stages that compose this update run. Min size: 1.
  UpdateRunStrategyResponse({required this.stages});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'stages':
          pulumi.Input.mapInputValue<
            List<UpdateStageResponse>,
            List<Map<String, dynamic>>
          >(
            stages,
            (value) =>
                pulumi.Input.encodeList<
                  UpdateStageResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory UpdateRunStrategyResponse.fromMap(Map<String, dynamic> map) {
    return UpdateRunStrategyResponse(
      stages: pulumi.Input.fromValue(
        pulumi.Input.decodeList<UpdateStageResponse>(
          map['stages']!,
          (value) => UpdateStageResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}

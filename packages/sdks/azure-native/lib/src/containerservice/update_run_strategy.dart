// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'update_stage.dart';

/// Defines the update sequence of the clusters via stages and groups.
///
/// Stages within a run are executed sequentially one after another.
/// Groups within a stage are executed in parallel.
/// Member clusters within a group are updated sequentially one after another.
///
/// A valid strategy contains no duplicate groups within or across stages.
class UpdateRunStrategy {
  /// The list of stages that compose this update run. Min size: 1.
  final pulumi.Input<List<UpdateStage>> stages;

  /// Creates a new [UpdateRunStrategy].
  /// [stages] The list of stages that compose this update run. Min size: 1.
  UpdateRunStrategy({
    required this.stages,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'stages': pulumi.Input.mapInputValue<List<UpdateStage>, List<Map<String, dynamic>>>(stages, (value) => pulumi.Input.encodeList<UpdateStage, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory UpdateRunStrategy.fromMap(Map<String, dynamic> map) {
    return UpdateRunStrategy(
      stages: (pulumi.Input.decodeList<UpdateStage>(map['stages'], (value) => UpdateStage.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}


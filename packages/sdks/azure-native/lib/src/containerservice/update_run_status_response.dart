// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_image_selection_status_response.dart';
import 'update_stage_status_response.dart';
import 'update_status_response.dart';

/// The status of a UpdateRun.
class UpdateRunStatusResponse {
  /// The node image upgrade specs for the update run. It is only set in update run when `NodeImageSelection.type` is `Consistent`.
  final NodeImageSelectionStatusResponse nodeImageSelection;
  /// The stages composing an update run. Stages are run sequentially withing an UpdateRun.
  final List<UpdateStageStatusResponse> stages;
  /// The status of the UpdateRun.
  final UpdateStatusResponse status;

  /// Creates a new [UpdateRunStatusResponse].
  /// [nodeImageSelection] The node image upgrade specs for the update run. It is only set in update run when `NodeImageSelection.type` is `Consistent`.
  /// [stages] The stages composing an update run. Stages are run sequentially withing an UpdateRun.
  /// [status] The status of the UpdateRun.
  UpdateRunStatusResponse({
    required this.nodeImageSelection,
    required this.stages,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeImageSelection': nodeImageSelection.toMap(),
      'stages': pulumi.Input.encodeList<UpdateStageStatusResponse, Map<String, dynamic>>(stages, (value) => value.toMap()),
      'status': status.toMap(),
    };
  }

  factory UpdateRunStatusResponse.fromMap(Map<String, dynamic> map) {
    return UpdateRunStatusResponse(
      nodeImageSelection: NodeImageSelectionStatusResponse.fromMap((map['nodeImageSelection'] as Map).cast<String, dynamic>()),
      stages: pulumi.Input.decodeList<UpdateStageStatusResponse>(map['stages'], (value) => UpdateStageStatusResponse.fromMap((value as Map).cast<String, dynamic>())),
      status: UpdateStatusResponse.fromMap((map['status'] as Map).cast<String, dynamic>()),
    );
  }
}


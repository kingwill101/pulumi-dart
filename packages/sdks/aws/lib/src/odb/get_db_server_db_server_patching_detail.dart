// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDbServerDbServerPatchingDetail {
  /// Estimated time, in minutes, that it takes to patch the database server.
  final pulumi.Input<int> estimatedPatchDuration;
  /// Status of the patching operation.
  final pulumi.Input<String> patchingStatus;
  /// Date and time when the patching operation ended.
  final pulumi.Input<String> timePatchingEnded;
  /// Date and time when the patching operation started.
  final pulumi.Input<String> timePatchingStarted;

  /// Creates a new [GetDbServerDbServerPatchingDetail].
  /// [estimatedPatchDuration] Estimated time, in minutes, that it takes to patch the database server.
  /// [patchingStatus] Status of the patching operation.
  /// [timePatchingEnded] Date and time when the patching operation ended.
  /// [timePatchingStarted] Date and time when the patching operation started.
  const GetDbServerDbServerPatchingDetail({
    required this.estimatedPatchDuration,
    required this.patchingStatus,
    required this.timePatchingEnded,
    required this.timePatchingStarted,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'estimatedPatchDuration': estimatedPatchDuration,
      'patchingStatus': patchingStatus,
      'timePatchingEnded': timePatchingEnded,
      'timePatchingStarted': timePatchingStarted,
    };
  }

  factory GetDbServerDbServerPatchingDetail.fromMap(Map<String, dynamic> map) {
    return GetDbServerDbServerPatchingDetail(
      estimatedPatchDuration: pulumi.Input.fromValue(map['estimatedPatchDuration'] as int),
      patchingStatus: pulumi.Input.fromValue(map['patchingStatus'] as String),
      timePatchingEnded: pulumi.Input.fromValue(map['timePatchingEnded'] as String),
      timePatchingStarted: pulumi.Input.fromValue(map['timePatchingStarted'] as String),
    );
  }
}
